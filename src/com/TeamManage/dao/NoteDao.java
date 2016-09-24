package com.TeamManage.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.TeamManage.dao.base.SuperDao;
import com.TeamManage.domain.Note;
import com.TeamManage.domain.Project;
import com.TeamManage.domain.Task;

public class NoteDao extends SuperDao<Note> {

	@SuppressWarnings("unchecked")
	public List<Note> getListByProjectId(int projectId) {
		Transaction tx = null;
		Session session = getSession();
		try {
			tx = session.beginTransaction();// 开启事务
			String queryString = "from Note t where t.project.id =?";
			List<Note> list = session.createQuery(queryString).setParameter(0, projectId).list();
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

	@SuppressWarnings("unchecked")
	public List<Note> getListByMemberId(int memberId) {
		Transaction tx = null;
		Session session = getSession();
		try {
			tx = session.beginTransaction();// 开启事务
			String queryString = "from Note t where t.member.id =?";
			List<Note> list = session.createQuery(queryString).setParameter(0, memberId).list();
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

	@SuppressWarnings("unchecked")
	public List<Note> getListGroupByProjectName() {
		Transaction tx = null;
		Session session = getSession();
		try {
			tx = session.beginTransaction();// 开启事务
			String queryString = "from Note t left join  t.project p where p.projectId is not null";
			List<Note> list = session.createQuery(queryString).list();
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

	public Note getNoteById(int noteId) {
		Transaction tx = null;
		Session session = getSession();
		try {
			tx = session.beginTransaction();// 开启事务
			String queryString = "from Note t where t.noteId =?";
			Note note = (Note) session.createQuery(queryString).setParameter(0, noteId).uniqueResult();
			tx.commit();// 提交事务
			return note;
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

