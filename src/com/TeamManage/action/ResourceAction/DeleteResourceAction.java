package com.TeamManage.action.ResourceAction;

import com.TeamManage.action.baseAction.BaseAction;
import com.TeamManage.domain.Resource;
@SuppressWarnings("serial")
public class DeleteResourceAction extends BaseAction{
	private String resourceId;
	private String projectId;
	public String execute()
	{
		Resource resource = (Resource) resourceDao.get(Integer.parseInt(resourceId));
		projectId=String.valueOf(resource.getProject().getProjectId());//下一步重定向用
		noteDao.delete(resource);
		return SUCCESS;
	}
	public String getResourceId() {
		return resourceId;
	}
	public void setResourceId(String resourceId) {
		this.resourceId = resourceId;
	}
	public String getProjectId() {
		return projectId;
	}
	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}
	
	
	
}
