package com.TeamManage.action.TaskAction;

import com.TeamManage.action.baseAction.BaseAction;
import com.TeamManage.domain.Task;
import com.TeamManage.util.Constant;

@SuppressWarnings("serial")
public class MarkTaskCompleteAction extends BaseAction{
	private String taskId;
	private String projectId;
	public String execute()
	{
		Task task = (Task) taskDao.getById(Integer.parseInt(taskId));
		task.setState(Constant.taskState3);
		taskDao.update(task);
		projectId=String.valueOf(task.getProject().getProjectId());
		return SUCCESS;
	}
	public String getProjectId() {
		return projectId;
	}
	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}
	public String getTaskId() {
		return taskId;
	}
	public void setTaskId(String taskId) {
		this.taskId = taskId;
	}
}
