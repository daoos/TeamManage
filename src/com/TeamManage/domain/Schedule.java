package com.TeamManage.domain;

import java.util.Date;

public class Schedule {
	private int scheduleId;
	private String title;//日程标题
	private String place;//日程地点
	private Date startTime;//开始时间
	private Date endTime;//结束时间
	private Member  member;//参与成员
	private Project project;//所属项目
	
	
	public Schedule() {
		super();
	}
	
	public Schedule(String title) {
		super();
		this.title = title;
	}
	
	public int getScheduleId() {
		return scheduleId;
	}

	public void setScheduleId(int scheduleId) {
		this.scheduleId = scheduleId;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public Project getProject() {
		return project;
	}
	public void setProject(Project project) {
		this.project = project;
	}
	
	

}
