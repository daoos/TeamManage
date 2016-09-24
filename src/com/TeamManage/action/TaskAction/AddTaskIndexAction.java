package com.TeamManage.action.TaskAction;

import java.util.List;

import com.TeamManage.action.baseAction.BaseAction;
import com.TeamManage.domain.Member;
import com.TeamManage.domain.Note;
import com.TeamManage.domain.Task;
import com.TeamManage.util.Constant;

@SuppressWarnings("serial")
public class AddTaskIndexAction extends BaseAction{
	private String projectId;
	private String taskId;
	private Task task;
	private List<Task> taskList;
	public String execute()
	{
		Integer MyId=(Integer) ctx.getSession().get(Constant.USER_ID);
		setTaskList(taskDao.getListByMemberId(MyId));
		
		return SUCCESS;
	}
	public String seeTask() {
		task=taskDao.getById(Integer.parseInt(getTaskId()));
		//note = (Note) noteDao.getNoteById(Integer.parseInt(getNoteId()));
		return SUCCESS;
	}
	public String getProjectId() {
		return projectId;
	}

	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}
	public List<Task> getTaskList() {
		return taskList;
	}
	public void setTaskList(List<Task> taskList) {
		this.taskList = taskList;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}//父类的变量
	public String getTaskId() {
		return taskId;
	}
	public void setTaskId(String taskId) {
		this.taskId = taskId;
	}
	public Task getTask() {
		return task;
	}
	public void setTask(Task task) {
		this.task = task;
	}

}
