package com.TeamManage.action.ScheduleAction;

import com.TeamManage.action.baseAction.BaseAction;
import com.TeamManage.domain.Note;
import com.TeamManage.domain.Schedule;
@SuppressWarnings("serial")
public class DeleteScheduleAction extends BaseAction{
	private String ScheduleId;
	private String projectId;
	public String execute()
	{
		Schedule schedule =scheduleDao.getScheduleById(Integer.parseInt(ScheduleId));
		projectId=String.valueOf(schedule.getProject().getProjectId());//下一步重定向用
		scheduleDao.delete(schedule);
		return SUCCESS;
	}
	
	public String getScheduleId() {
		return ScheduleId;
	}

	public void setScheduleId(String scheduleId) {
		ScheduleId = scheduleId;
	}

	public String getProjectId() {
		return projectId;
	}
	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}
	
}
