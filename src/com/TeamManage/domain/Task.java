package com.TeamManage.domain;

import java.util.Date;

/*
 * 任务
 */
public class Task {
    private int taskId;
    private String taskName;
    private String taskContent;
    private Date deadline;//截止日期
    private String priority;//优先级 Top Middle lowest
    private Member member;
    private String state;//完成状况
    private Project project;//所属项目
	public Task() {
		super();
	}
	public Task(String taskName) {
		super();
		this.taskName = taskName;
	}
	public String getTaskName() {
		return taskName;
	}
	public int getTaskId() {
		return taskId;
	}
	public void setTaskId(int taskId) {
		this.taskId = taskId;
	}
	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}
	public String getTaskContent() {
		return taskContent;
	}
	public void setTaskContent(String taskContent) {
		this.taskContent = taskContent;
	}
	public Date getDeadline() {
		return deadline;
	}
	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}
	public String getPriority() {
		return priority;
	}
	public void setPriority(String priority) {
		this.priority = priority;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Project getProject() {
		return project;
	}
	public void setProject(Project project) {
		this.project = project;
	}
    
    
    
 
}
