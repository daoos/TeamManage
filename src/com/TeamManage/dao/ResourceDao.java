package com.TeamManage.dao;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.TeamManage.dao.base.SuperDao;
import com.TeamManage.domain.Note;
import com.TeamManage.domain.Project;
import com.TeamManage.domain.Resource;

public class ResourceDao extends SuperDao<Resource>{
	
	
	@SuppressWarnings("unchecked")
	public List<Resource> getListByProjectId(int projectId)
	{
				Transaction tx=null;
				 Session session = getSession();
				  try {  
					    tx = session.beginTransaction();//开启事务  
					    String queryString = "from Resource r where r.project.id =?";
					    List<Resource> list =session.createQuery(queryString)
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
	public List<Resource> getListByMemberId(int projectId)
	{
				Transaction tx=null;
				 Session session = getSession();
				  try {  
					    tx = session.beginTransaction();//开启事务  
					    String queryString = "from Resource r where r.member.id =?";
					    List<Resource> list =session.createQuery(queryString)
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
	
	public Resource getResourceById(int resourceId)
	{
				Transaction tx=null;
				 Session session = getSession();
				  try {  
					    tx = session.beginTransaction();//开启事务  
					    String queryString = "from Resource r where r.resourceId =?";
					    Resource resource =(Resource) session.createQuery(queryString)
					    		.setParameter(0, resourceId)
					    		.uniqueResult();
			            tx.commit();//提交事务
			        	return resource;
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
