package com.TeamManage.dao;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.TeamManage.dao.base.SuperDao;
import com.TeamManage.domain.Note;
import com.TeamManage.domain.Schedule;

public class ScheduleDao extends SuperDao<Schedule>{
	
	
	@SuppressWarnings("unchecked")
	public List<Schedule> getListByProjectId(int projectId)
	{
				Transaction tx=null;
				 Session session = getSession();
				  try {  
					    tx = session.beginTransaction();//开启事务  
					    String queryString = "from Schedule s where s.project.id =?";
					    List<Schedule> list =session.createQuery(queryString)
					    		.setParameter(0, projectId)
					    		.list();
			            tx.commit();//提交事务
			        	return list;
			        } catch (HibernateException ex) {  
			        	if(tx!=null)
			        	{
			        	   tx.rollback();//回滚事务
			        	}
			            ex.printStackTrace();;//必须抛出异常  
			            return null;
			        }
	}
	
	public Schedule getScheduleById(int scheduleId)
	{
				Transaction tx=null;
				 Session session = getSession();
				  try {  
					    tx = session.beginTransaction();//开启事务  
					    String queryString = "from Schedule s where s.scheduleId =?";
					    Schedule schedule =(Schedule) session.createQuery(queryString)
					    		.setParameter(0, scheduleId)
					    		.uniqueResult();
			            tx.commit();//提交事务
			        	return schedule;
			        } catch (HibernateException ex) {  
			        	if(tx!=null)
			        	{
			        	   tx.rollback();//回滚事务
			        	}
			            ex.printStackTrace();;//必须抛出异常  
			            return null;
			        }
	}
	@SuppressWarnings("unchecked")
	public List<Schedule> getListByMemberId(int memberId) {
		Transaction tx = null;
		Session session = getSession();
		try {
			tx = session.beginTransaction();// 开启事务
			//大小写敏感
			String queryString = "from Schedule s where s.member.id =?";
			List<Schedule> list = session.createQuery(queryString).setParameter(0, memberId).list();
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
