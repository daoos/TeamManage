package com.TeamManage.action.ScheduleAction;

import java.util.ArrayList;
import java.util.List;

import com.TeamManage.action.baseAction.BaseAction;
import com.TeamManage.domain.Project;
import com.TeamManage.domain.Schedule;
import com.TeamManage.util.Constant;

@SuppressWarnings("serial")
public class ScheduleIndexAction extends BaseAction{
	private String projectId;
	private List<Schedule> scheduleList = new ArrayList<Schedule>();
	private List<Project> projects;
	public String execute()
	{
		try
		{		
			int memberId=(int) ctx.getSession().get(Constant.USER_ID);
		setProjects(projectDao.getListById(memberId));
		setScheduleList(scheduleDao.getListByMemberId((memberId)));
			
			
			
			//scheduleList = scheduleDao.getListByProjectId(Integer.parseInt(projectId));
			return SUCCESS;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return ERROR;
		}
	
	}
	public String getProjectId() {
		return projectId;
	}
	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}
	public List<Schedule> getScheduleList() {
		return scheduleList;
	}
	public void setScheduleList(List<Schedule> scheduleList) {
		this.scheduleList = scheduleList;
	}
	public List<Project> getProjects() {
		return projects;
	}
	public void setProjects(List<Project> projects) {
		this.projects = projects;
	}
	
}
