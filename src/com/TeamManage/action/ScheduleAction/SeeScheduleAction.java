package com.TeamManage.action.ScheduleAction;

import com.TeamManage.action.baseAction.BaseAction;
import com.TeamManage.domain.Schedule;

@SuppressWarnings("serial")
public class SeeScheduleAction extends BaseAction{
	private String scheduleId;
	private Schedule schedule;
	private String projectId;
	public String execute()
	{
		try
		{
		   schedule = scheduleDao.getScheduleById(Integer.parseInt(scheduleId));
			projectId = String.valueOf(schedule.getProject().getProjectId());
			return SUCCESS;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return ERROR;
		}
	}
	
	public String getScheduleId() {
		return scheduleId;
	}

	public void setScheduleId(String scheduleId) {
		this.scheduleId = scheduleId;
	}

	public Schedule getSchedule() {
		return schedule;
	}

	public void setSchedule(Schedule schedule) {
		this.schedule = schedule;
	}

	public String getProjectId() {
		return projectId;
	}
	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}
	

}
