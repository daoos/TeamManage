package com.TeamManage.dao.base;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.metamodel.domain.Entity;

import com.TeamManage.dao.Hibernate.HibernateSessionFactory;
import com.TeamManage.domain.Member;
import com.TeamManage.domain.Note;
public class SuperDao<T> implements BaseDao {
	public Session getSession() {
		return HibernateSessionFactory.getSessionFactory().getCurrentSession();
	}

	@SuppressWarnings("unchecked")
	public Object get(int id) {
		Transaction tx = null;
		try {
			tx = this.getSession().beginTransaction();// 开启事务
			T Test = (T) this.getSession().get(getEntityClass(), id);
			tx.commit();// 提交事务
			return Test;
		} catch (HibernateException e) {
			if (tx != null) {
				tx.rollback();// 回滚事务
			}
			e.printStackTrace();// 必须抛出异常
			return null;
		} finally {
			if (tx != null) {
				tx = null;
			}
		}

	}

	@SuppressWarnings("unchecked")
	public List<T> getAll(String queryString) {
		// TODO Auto-generated method stub
		Transaction tx = null;
		Session session = getSession();
		try {
			tx = session.beginTransaction();// 开启事务
			//String queryString = "from " + className;
			List<T> list = session.createQuery(queryString).list();
			tx.commit();// 提交事务
			return list;
		} catch (HibernateException ex) {
			if (tx != null) {
				tx.rollback();// 回滚事务
			}
			ex.printStackTrace();
			;// 必须抛出异常
			return null;
		}
	}

	@Override
	public void save(Object e) {
		// TODO Auto-generated method stub
		Transaction tx = null;
		try {
			tx = this.getSession().beginTransaction();// 开启事务
			this.getSession().save(e);
			tx.commit();// 提交事务
		} catch (HibernateException ex) {
			if (tx != null) {
				tx.rollback();// 回滚事务
			}
			ex.printStackTrace();// 必须抛出异常
		} finally {
			if (tx != null) {
				tx = null;
			}
		}
	}

	@Override
	public void delete(Object e) {
		// TODO Auto-generated method stub
		Transaction tx = null;
		try {
			tx = this.getSession().beginTransaction();// 开启事务
			this.getSession().delete(e);
			tx.commit();// 提交事务
		} catch (HibernateException ex) {
			if (tx != null) {
				tx.rollback();// 回滚事务
			}
			ex.printStackTrace();// 必须抛出异常
		} finally {
			if (tx != null) {
				tx = null;
			}
		}

	}

	@Override
	public void update(Object e) {
		// TODO Auto-generated method stub
		Transaction tx = null;
		try {
			tx = this.getSession().beginTransaction();// 开启事务

			this.getSession().update(e);

			tx.commit();// 提交事务
		} catch (HibernateException ex) {
			if (tx != null) {
				tx.rollback();// 回滚事务
			}
			ex.printStackTrace();// 必须抛出异常
		} finally {
			if (tx != null) {
				tx = null;
			}
		}

	}

	@SuppressWarnings("unchecked")
	public T getByHQL(String hqlString, Object... values) {
		Transaction tx = null;
		try {
			tx = this.getSession().beginTransaction();// 开启事务

			Query query = this.getSession().createQuery(hqlString);
			if (values != null) {
				for (int i = 0; i < values.length; i++) {
					query.setParameter(i, values[i]);
				}
			}
			tx.commit();// 提交事务
			return (T) query.uniqueResult();
		} catch (HibernateException ex) {
			if (tx != null) {
				tx.rollback();// 回滚事务
			}
			ex.printStackTrace();// 必须抛出异常
			return null;
		} finally {
			if (tx != null) {
				tx = null;
			}
		}
	}

	/**
	 * <根据HQL语句，得到对应的list>
	 * 
	 * @param hqlString
	 *            HQL语句
	 * @param values
	 *            不定参数的Object数组
	 * @return 查询多个实体的List集合
	 * @see com.itv.launcher.util.IBaseDao#getListByHQL(java.lang.String,
	 *      java.lang.Object[])
	 */
	@SuppressWarnings("unchecked")
	public List<T> getListByHQL(String hqlString, Object... values) {

		Transaction tx = null;
		try {
			tx = this.getSession().beginTransaction();// 开启事务
			Query query = this.getSession().createQuery(hqlString);
			if (values != null) {
				for (int i = 0; i < values.length; i++) {
					query.setParameter(i, values[i]);
				}
			}
			tx.commit();// 提交事务
			return query.list();
		} catch (HibernateException ex) {
			if (tx != null) {
				tx.rollback();// 回滚事务
			}
			ex.printStackTrace();// 必须抛出异常
			return null;
		} finally {
			if (tx != null) {
				tx = null;
			}
		}
	}

	/**
	 * 得到传过来的泛型的类名
	 * 
	 * @return
	 */
	private String getEntityName() {
		Type genType = getClass().getGenericSuperclass();
		Type[] params = ((ParameterizedType) genType).getActualTypeArguments();
		Class<?> entityClass = (Class<?>) params[0];
		return entityClass.getSimpleName();
	}

	/**
	 * 得到传过来的泛型类
	 * 
	 * @return
	 */
	private Class<?> getEntityClass() {
		Type genType = getClass().getGenericSuperclass();
		Type[] params = ((ParameterizedType) genType).getActualTypeArguments();
		Class<?> entityClass = (Class<?>) params[0];
		return entityClass;
	}

	@Override
	public void batchInsert(List list) {
		for (Object object : list) {
			save(object);
		}
	}

	@Override
	public void batchDelete(List list) {
		for (Object object : list) {
			delete(object);
		}

	}

	@Override
	public void batchUpdate(List list) {
		for (Object object : list) {
			update(object);
		}

	}

	@Override
	public List<T> getPage(String queryString,int offset, int pageSize) {
		Transaction tx = null;
		Session session = getSession();
		try {
			tx = session.beginTransaction();// 开启事务
			 
			Query query = session.createQuery(queryString);
			query.setFirstResult(offset);
			query.setMaxResults(pageSize);
			List<T> list = query.list();
			tx.commit();// 提交事务
			return list;
		} catch (HibernateException ex) {
			if (tx != null) {
				tx.rollback();// 回滚事务
			}
			ex.printStackTrace();
		
			return null;
		}

	}
	public int getCount(String queryString) {
		Transaction tx = null;
		int count=0;
		Session session = getSession();
		try {
			tx = session.beginTransaction();// 开启事务

			Query query = session.createQuery(queryString);
		
			count = query.list().size();
			tx.commit();// 提交事务
			
		} catch (HibernateException ex) {
			if (tx != null) {
				tx.rollback();// 回滚事务
			}
			ex.printStackTrace();
			return count;
	
		}
		return count;

	}

}
