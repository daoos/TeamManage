package com.TeamManage.action.TaskAction;

import com.TeamManage.action.baseAction.BaseAction;
import com.TeamManage.domain.Task;
import com.TeamManage.util.Constant;

@SuppressWarnings("serial")
public class DeleteTaskAction extends BaseAction{
	private String taskId;
	private String projectId;
	public String execute()
	{
		Task task = (Task) taskDao.getById(Integer.parseInt(taskId));
		//projectId=String.valueOf(task.getProject().getProjectId());//下一步重定向用
		taskDao.delete(task);
		return SUCCESS;
	}
	public String getTaskId() {
		return taskId;
	}
	public void setTaskId(String taskId) {
		this.taskId = taskId;
	}
	public String getProjectId() {
		return projectId;
	}
	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}
	
}
