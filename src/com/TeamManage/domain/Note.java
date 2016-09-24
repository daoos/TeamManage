package com.TeamManage.domain;

import java.util.Date;

/**
 * 笔记
 * @author Fan
 *
 */
public class Note {
	 private int noteId;
	 private String title;
	 private String content;
	 private Date PublishTime;
	 private Member member;//笔记作者
	 private Project project;//所属项目
	 
	public Note() {
		super();
	}
	
	public Note(String title) {
		super();
		this.title = title;
	}

	public int getNoteId() {
		return noteId;
	}
	public void setNoteId(int noteId) {
		this.noteId = noteId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
	public Date getPublishTime() {
		return PublishTime;
	}
	public void setPublishTime(Date publishTime) {
		PublishTime = publishTime;
	}
    
}
