package com.TeamManage.action.ScheduleAction;

import java.util.ArrayList;
import java.util.List;

import com.TeamManage.action.baseAction.BaseAction;
import com.TeamManage.domain.Project;
import com.TeamManage.util.Constant;

@SuppressWarnings("serial")
public class AddScheduleIndexAction extends BaseAction{
	private String projectId;
	private List<Project> projectList;
	public String execute()
	{
		Integer MyId=(Integer) ctx.getSession().get(Constant.USER_ID);
		setProjectList(projectDao.getListById(MyId));
		return SUCCESS;
	}
	public String getProjectId() {
		return projectId;
	}

	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}
	public List<Project> getProjectList() {
		return projectList;
	}
	public void setProjectList(List<Project> projectList) {
		this.projectList = projectList;
	}
	

}
