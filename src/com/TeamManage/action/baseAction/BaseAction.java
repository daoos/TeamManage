package com.TeamManage.action.baseAction;

import org.apache.struts2.ServletActionContext;

import com.TeamManage.dao.MemberDao;
import com.TeamManage.dao.NoteDao;
import com.TeamManage.dao.ProjectDao;
import com.TeamManage.dao.ResourceDao;
import com.TeamManage.dao.ScheduleDao;
import com.TeamManage.dao.TaskDao;
import com.TeamManage.dao.UserDao;
import com.TeamManage.domain.Member;
import com.TeamManage.domain.Note;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class BaseAction extends ActionSupport{
	protected String MESSAGE="message";
	protected static String username;
	protected static Member member;
	protected ActionContext ctx = ActionContext.getContext();
	protected UserDao userDao = new UserDao();
	protected ProjectDao projectDao = new ProjectDao();
	protected MemberDao memberDao = new MemberDao();
	protected TaskDao taskDao = new TaskDao();
	protected NoteDao noteDao = new NoteDao();
	protected ScheduleDao scheduleDao = new ScheduleDao();
	protected ResourceDao resourceDao = new ResourceDao();
	static{
		ServletActionContext.getRequest().getSession().setMaxInactiveInterval(300000); 

	}
	public ActionContext getCtx() {
		return ctx;
	}
	public void setCtx(ActionContext ctx) {
		this.ctx = ctx;
	}
	public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	public ProjectDao getProjectDao() {
		return projectDao;
	}
	public void setProjectDao(ProjectDao projectDao) {
		this.projectDao = projectDao;
	}
	public MemberDao getMemberDao() {
		return memberDao;
	}
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	public TaskDao getTaskDao() {
		return taskDao;
	}
	public void setTaskDao(TaskDao taskDao) {
		this.taskDao = taskDao;
	}
	public String getMESSAGE() {
		return MESSAGE;
	}
	public void setMESSAGE(String mESSAGE) {
		MESSAGE = mESSAGE;
	}
	public NoteDao getNoteDao() {
		return noteDao;
	}
	public void setNoteDao(NoteDao noteDao) {
		this.noteDao = noteDao;
	}
	public ScheduleDao getScheduleDao() {
		return scheduleDao;
	}
	public void setScheduleDao(ScheduleDao scheduleDao) {
		this.scheduleDao = scheduleDao;
	}
	public ResourceDao getResourceDao() {
		return resourceDao;
	}
	public void setResourceDao(ResourceDao resourceDao) {
		this.resourceDao = resourceDao;
	}
}
