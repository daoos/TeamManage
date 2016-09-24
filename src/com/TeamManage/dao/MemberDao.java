package com.TeamManage.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.TeamManage.dao.Hibernate.HibernateSessionFactory;
import com.TeamManage.dao.base.SuperDao;
import com.TeamManage.domain.Member;
import com.TeamManage.domain.Project;
import com.TeamManage.domain.User;

public class MemberDao extends SuperDao<Member> {
	/**
	 * 根据属性查询成员
	 */
	@SuppressWarnings("unchecked")
	protected List<Member> getMemberByProperty(String propertyName, Object value) {
		Transaction tx = null;
		Session session = getSession();
		try {
			tx = session.beginTransaction();// 开启事务
			String queryString = "from Member where " + propertyName + "=?";
			List<Member> list = session.createQuery(queryString).setParameter(0, value).list();
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
	public List<Member> getByMemberFind(String memberName, String password) {
		Transaction tx = null;
		Session session = getSession();
		try {
			tx = session.beginTransaction();// 开启事务
			String queryString = "from Member where Name=? and password=? ";
			List<Member> list = session.createQuery(queryString).setParameter(0, memberName).setParameter(1, password).list();
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
	/**
	 * 根据姓名查询成员
	 * 
	 * @param memberName
	 * @return
	 */
	public Member getMemberByName(String memberName) {
		List<Member> memberList = getMemberByProperty("name", memberName);
		return memberList.size() >= 1 ? memberList.get(0) : null;
	}

	/**
	 * 根据成员名查询成员
	 * 
	 * @param username
	 * @return
	 */
	public User getUserByName(String username) {
		Transaction tx = null;
		String hql = "";
		try {
			Session session = HibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			hql = "from User where name=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, username);
			User user = (User) query.uniqueResult();
			tx.commit();// 提交事务
			if (user != null) {
				return user;
			} else {
				return null;
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		} finally {
			if (tx != null) {
				tx = null;

			}
		}

	}

	public boolean login(Member member) {
		Transaction tx = null;
		final String LOGIN_HQL = "select count(*) from member m where m.name=? and u.password=? ";
		try {
			Session session = HibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			long result = (long) session.createQuery(LOGIN_HQL).setString(0, member.getName())
					.setString(1, member.getPassword()).uniqueResult();

			tx.commit();// 提交事务
			if (result > 0) {
				return true;
			} else {
				return false;
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		} finally {
			if (tx != null) {
				tx = null;

			}
		}
	}

}
