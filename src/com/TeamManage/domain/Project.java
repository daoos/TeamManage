package com.TeamManage.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class Project {
	private int projectId;
	private String projectName;//项目名
	private String projectType;//项目类型
	private String ownershipType;//归属类型，企业项目，个人项目
	private Date createTime;//创建时间
	private int adminId=0;//管理员id
	private String state;//状态
	private String projectBrief;//项目简介
	private Set<Member> memberSet = new HashSet<>();//项目成员 多对多
	private Set<Note> noteSet = new HashSet<>();//笔记集合 一对多
	private Set<Task> taskSet = new HashSet<>();//任务集合 一对多
	private Set<Schedule> scheduleSet = new HashSet<>();//行程集合 一对多
	private Set<Resource> resourceSet = new HashSet<>();//资源集合 一对多
	
	public Project() {
		super();
	}
	public Project(String projectName, String projectType,String ownershipType ) {
		super();
		this.projectName = projectName;
		this.projectType = projectType;
		this.ownershipType = ownershipType;
	}
	public int getProjectId() {
		return projectId;
	}
	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getProjectType() {
		return projectType;
	}
	public void setProjectType(String projectType) {
		this.projectType = projectType;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Set<Member> getMemberSet() {
		return memberSet;
	}
	public void setMemberSet(Set<Member> memberSet) {
		this.memberSet = memberSet;
	}
	public Set<Note> getNoteSet() {
		return noteSet;
	}
	public void setNoteSet(Set<Note> noteSet) {
		this.noteSet = noteSet;
	}
	public Set<Task> getTaskSet() {
		return taskSet;
	}
	public void setTaskSet(Set<Task> taskSet) {
		this.taskSet = taskSet;
	}
	public Set<Schedule> getScheduleSet() {
		return scheduleSet;
	}
	public void setScheduleSet(Set<Schedule> scheduleSet) {
		this.scheduleSet = scheduleSet;
	}
	public Set<Resource> getResourceSet() {
		return resourceSet;
	}
	public void setResourceSet(Set<Resource> resourceSet) {
		this.resourceSet = resourceSet;
	}
	public String getOwnershipType() {
		return ownershipType;
	}
	public void setOwnershipType(String ownershipType) {
		this.ownershipType = ownershipType;
	}
	public String getProjectBrief() {
		return projectBrief;
	}
	public void setProjectBrief(String projectBrief) {
		this.projectBrief = projectBrief;
	}
}
