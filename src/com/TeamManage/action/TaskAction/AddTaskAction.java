package com.TeamManage.action.TaskAction;

import java.util.Date;
import java.util.List;

import com.TeamManage.action.baseAction.BaseAction;
import com.TeamManage.domain.Project;
import com.TeamManage.domain.Task;
import com.TeamManage.util.Constant;

@SuppressWarnings("serial")
public class AddTaskAction extends BaseAction{
	private String projectId;
	private String taskName;
	private String taskContent;
	private Date deadline;
	public String execute()
	{
		if(taskName==null&&taskName.length()<=0)
		{
			return ERROR;
		}
		Task task = new Task(taskName);
		if(taskContent!=null&&taskContent.length()>0)
		{
			task.setTaskContent(taskContent);
		}
		if(deadline!=null)
		{
			task.setDeadline(deadline);
		}
		task.setState(Constant.taskState1);
		Project project = (Project) projectDao.get(Integer.parseInt(projectId));
		task.setProject(project);
		taskDao.save(task);
		return SUCCESS;
	}

	public String getProjectId() {
		return projectId;
	}

	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}

	public String getTaskName() {
		return taskName;
	}

	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}

	public String getTaskContent() {
		return taskContent;
	}

	public void setTaskContent(String taskContent) {
		this.taskContent = taskContent;
	}

	public Date getDeadline() {
		return deadline;
	}

	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}
	
}
