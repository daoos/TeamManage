package com.TeamManage.action.ResourceAction;

import java.util.ArrayList;
import java.util.List;

import com.TeamManage.action.baseAction.BaseAction;
import com.TeamManage.domain.Project;
import com.TeamManage.domain.Resource;
import com.TeamManage.util.Constant;

@SuppressWarnings("serial")
public class ResourceIndexAction extends BaseAction{
	private String projectId;
	private List<Project> projectList;
	private List<Resource> resourceList = new ArrayList<Resource>();
	public String execute()
	{
		try
		{
			Integer MyId=(Integer) ctx.getSession().get(Constant.USER_ID);
			//projectList=projectDao.getListById(MyId);
			projectList=projectDao.getListById(MyId);
			resourceList = resourceDao.getListByMemberId(MyId);
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
	public List<Resource> getResourceList() {
		return resourceList;
	}
	public void setResourceList(List<Resource> resourceList) {
		this.resourceList = resourceList;
	}
	public List<Project> getProjectList() {
		return projectList;
	}
	public void setProjectList(List<Project> projectList) {
		this.projectList = projectList;
	}
}
