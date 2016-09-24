package com.TeamManage.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * 项目成员
 * @author Fan
 *
 */
public class Member {
	private int memberId;
	private String name;
	private String password;
	private String emailAddress;//邮箱地址
	private String relateMemberId;//用于记录最近相关的人员的id，为了方便存储，用,隔开
	private Set<Project> projectSet = new HashSet<Project>();//与项目是多对多的关系
	private Set<Note> noteSet = new HashSet<Note>();//与笔记是一对多的关系
	private Set<Schedule> scheduleSet = new HashSet<Schedule>();//与笔记是一对多的关系
	public Member() {
		super();
	}
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public Set<Project> getProjectSet() {
		return projectSet;
	}
	public void setProjectSet(Set<Project> projectSet) {
		this.projectSet = projectSet;
	}
	public Set<Note> getNoteSet() {
		return noteSet;
	}
	public void setNoteSet(Set<Note> noteSet) {
		this.noteSet = noteSet;
	}
	public String getRelateMemberId() {
		return relateMemberId;
	}
	public void setRelateMemberId(String relateMemberId) {
		this.relateMemberId = relateMemberId;
	}
	public Set<Schedule> getScheduleSet() {
		return scheduleSet;
	}
	public void setScheduleSet(Set<Schedule> scheduleSet) {
		this.scheduleSet = scheduleSet;
	}
	

}
