package com.TeamManage.action.ScheduleAction;
import java.util.Date;

import com.TeamManage.action.baseAction.BaseAction;
import com.TeamManage.domain.Member;
import com.TeamManage.domain.Note;
import com.TeamManage.domain.Project;
import com.TeamManage.domain.Schedule;
import com.TeamManage.util.Constant;

@SuppressWarnings("serial")
public class AddScheduleAction extends BaseAction{
	private String projectId;
	private String title;
	private String place;
	private Date startTime;
	private Date endTime;
	
	public String execute()
	{
		try
		{
			if(title==null&&title.length()<=0)
			{
				return ERROR;
			}
			Schedule schedule = new Schedule(title);
			if(place!=null&&place.length()>0)
			{
				schedule.setPlace(place);
			}
			Member member = (Member) memberDao.get((int)ctx.getSession().get(Constant.USER_ID));
			schedule.setMember(member);
			if(startTime!=null)
			{
				schedule.setStartTime(startTime);
			}
			if(endTime!=null)
			{
				schedule.setEndTime(endTime);
			}
			Project project = (Project) projectDao.get(Integer.parseInt(projectId));
			schedule.setProject(project);
			scheduleDao.save(schedule);
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
	
	
	
}
