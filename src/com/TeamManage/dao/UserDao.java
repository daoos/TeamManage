package com.TeamManage.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.TeamManage.dao.Hibernate.HibernateSessionFactory;
import com.TeamManage.dao.base.SuperDao;
import com.TeamManage.domain.User;

public class UserDao extends SuperDao<User>{
	public User getUserByName(String username)
	{
		Transaction tx=null;
		String hql="";
		try{
			Session session = HibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx=session.beginTransaction();
			hql="from User where name=?";
			Query query =session.createQuery(hql);
			query.setParameter(0, username);
			User user =(User) query.uniqueResult();
			tx.commit();//提交事务
			if(user !=null)
			{
				return user;
			}
			else
			{
				return null;
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return null;
		}
		finally
		{
			if(tx!=null)
			{
				tx = null;
			}
		}
		
	}

}
