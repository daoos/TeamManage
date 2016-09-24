package com.TeamManage.dao;

import java.util.List;
import java.util.Set;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.TeamManage.dao.base.SuperDao;
import com.TeamManage.domain.Project;
import com.TeamManage.domain.Task;

public class TaskDao extends SuperDao{
	
	@SuppressWarnings("unchecked")
	public List<Task> getListByProjectId(int projectId)
	{
				Transaction tx=null;
				 Session session = getSession();
				  try {  
					    tx = session.beginTransaction();//开启事务  
					    String queryString = "from Task t where t.project.id =?";
					    List<Task> list =session.createQuery(queryString)
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
	@SuppressWarnings("unchecked")
	public List<Task> getListByMemberId(int mermberId)
	{
				Transaction tx=null;
				 Session session = getSession();
				  try {  
					    tx = session.beginTransaction();//开启事务  
					    String queryString = "from Task t where t.member.id =?";
					    List<Task> list =session.createQuery(queryString)
					    		.setParameter(0, mermberId)
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
	
	public Task getById(int taskId)
	{
		Transaction tx=null;
		 Session session = getSession();
		  try {  
			    tx = session.beginTransaction();//开启事务  
			    String queryString = "from Task t where t.taskId=?";
			    Task task =(Task) session.createQuery(queryString)
			    		.setParameter(0, taskId)
			    		.uniqueResult();
	            tx.commit();//提交事务
	        	return task;
	        } catch (HibernateException ex) {  
	        	if(tx!=null)
	        	{
	        	   tx.rollback();//回滚事务
	        	}
	            ex.printStackTrace();;//必须抛出异常  
	            return null;
	        }
		
	}


}
