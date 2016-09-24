package com.TeamManage.action.NoteAction;

import java.util.ArrayList;
import java.util.List;

import com.TeamManage.action.baseAction.BaseAction;
import com.TeamManage.domain.Member;
import com.TeamManage.domain.Note;
import com.TeamManage.domain.Project;
import com.TeamManage.util.Constant;



@SuppressWarnings("serial")
public class AddNoteIndexAction extends BaseAction{
	private String projectId;
	private List<Project> projectList=new ArrayList<>();
	private String noteId;
	public String execute()
	{
		//查出当前用户项目，并且提交项目id
		Integer MyId=(Integer) ctx.getSession().get(Constant.USER_ID);
		projectList=projectDao.getListById(MyId);
		for (Project project : projectList) {
			ctx.getSession().put(String.valueOf(project.getProjectId()), project);
		}
		
		return SUCCESS;
	}
	
	public String getProjectId() {
		return projectId;
	}

	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public List<Project> getProjectList() {
		return projectList;
	}
	public void setProjectList(List<Project> projectList) {
		this.projectList = projectList;
	}
	

}
