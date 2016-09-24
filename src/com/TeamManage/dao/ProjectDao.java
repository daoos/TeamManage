package com.TeamManage.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.TeamManage.dao.base.SuperDao;
import com.TeamManage.domain.Project;

public class ProjectDao extends SuperDao<Project> {

	@SuppressWarnings("unchecked")
	public List<Project> getListById(int adminId) {
		Transaction tx = null;
		Session session = getSession();
		try {
			tx = session.beginTransaction();// 开启事务
			String queryString = "from Project where adminId =?";
			List<Project> list = session.createQuery(queryString).setParameter(0, adminId).list();
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
	 * 
	 * @return 5个 集合对象
	 */
	public List<Project> getPage() {
		Transaction tx = null;
		Session session = getSession();
		try {
			tx = session.beginTransaction();// 开启事务
			String queryString = "from Project ";
			Query query = session.createQuery(queryString);
			query.setFirstResult(0);
			query.setMaxResults(5);
			List<Project> list=query.list();
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
	
	
	

}
