package com.TeamManage.action.projectAction;

import java.util.Date;
import java.util.List;

import com.TeamManage.action.baseAction.BaseAction;
import com.TeamManage.domain.Member;
import com.TeamManage.domain.Project;
import com.TeamManage.util.Constant;

public class UpdateProjectIndexAction extends BaseAction{
	private List<Project> projectList;
	private Project project;
	private String projectId;
	private String projectName;//项目名
	private String projectType;//项目类型
	private String ownershipType;//归属类型
	private String projectBrief;//项目简介
	private String Message;//ajax弹框信息
	private String joinMemberList; //参加人员的id,中间含有逗号
	
	public String seeProject()
	{	
		System.out.println("开始执行查看项目");
		//该函数不止一个更新项目在使用，不要乱修改
		try{
			int adminId = (int) ctx.getSession().get(Constant.USER_ID);
			projectList = projectDao.getListById(adminId);
			System.out.println("查看项目成功");
			return SUCCESS;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return ERROR;
		}}

	

	public String  updateProjectIndex() {
		project=(Project) projectDao.get(Integer.parseInt(projectId));
		return SUCCESS;
	}
	public String updateProject() {
		try
		{
			
			if(projectName==null||projectName.length()<=0||projectType==null||projectType.length()<=0||ownershipType==null||ownershipType.length()<=0)
			{
				Message="对不起，项目名没有输入！";
				return MESSAGE;
			}
			switch(projectType)//项目类型
			{
			case "1":
				projectType=Constant.projectType1;
				//return projectType;
				break;
			case "2":
				projectType=Constant.projectType2;
				break;
			case "3":
				projectType=Constant.projectType3;
				break;
			case "4":
				projectType=Constant.projectType4;
				break;
			case "5":
				projectType=Constant.projectType5;
				break;
			case "6":
				projectType=Constant.projectType6;
				break;
				default:
				break;
			}
			switch(ownershipType)
			{
			case "1":
				ownershipType=Constant.ownershipType1;
				break;
			case "2":
				ownershipType= Constant.ownershipType2;
				break;
				default:
				break;
			}
			Project project = (Project) projectDao.get(Integer.parseInt(projectId));
			if(projectName!=null&&projectName.length()>0)
			{
				project.setProjectName(projectName);
			}
			if(projectType!=null&&projectType.length()>0)
			{
				project.setProjectType(projectType);
			}
			if(projectBrief!=null&&projectBrief.length()>0)
			{
				project.setProjectBrief(projectBrief);
			}
			Date date = new Date();
			project.setCreateTime(date);//保存时间
			project.setAdminId((int)ctx.getSession().get(Constant.USER_ID));//保存用户id
			projectDao.update(project);
			System.out.println("项目更新成功!");
			return SUCCESS;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return MESSAGE;
		}
	}
	public String deleteProject() {
		try
		{
			
			System.out.println(getProjectId());
			if (getProjectId()!=null) {
				//查到工程就删除
				Project project = (Project) projectDao.get(Integer.parseInt(getProjectId()));
				projectDao.delete(project);
				System.out.println("删除成功");
			}
			
				
			
			return SUCCESS;//dashboard.jsp，执行了跳转
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return ERROR;//基本也不会发生异常,dashboard.jsp
		}
	}
	public String addProject() {
		try
		{
			Date date = new Date();
			switch(projectType)//项目类型
			{
			case "1":
				projectType=Constant.projectType1;
				//return projectType;
				break;
			case "2":
				projectType=Constant.projectType2;
				break;
			case "3":
				projectType=Constant.projectType3;
				break;
			case "4":
				projectType=Constant.projectType4;
				break;
			case "5":
				projectType=Constant.projectType5;
				break;
			case "6":
				projectType=Constant.projectType6;
				break;
				default:
				break;
			}
			switch(ownershipType)
			{
			case "1":
				ownershipType=Constant.ownershipType1;
				break;
			case "2":
				ownershipType= Constant.ownershipType2;
				break;
				default:
				break;
			}
			Project project = new Project(projectName,projectType,ownershipType);
			//项目简介
		
			project.setProjectBrief(projectBrief);
			project.setCreateTime(date);//保存时间
			int memberId=(int) ctx.getSession().get(Constant.USER_ID);
			project.setAdminId(memberId);//保存用户id
			Member member1=(Member) memberDao.get(memberId);
			project.setProjectId(member1.getMemberId());
			
			System.out.println(joinMemberList);
		
			if (joinMemberList!=null) {
				String []joinMembers=joinMemberList.split(","); 
				for(int i=0;i<joinMembers.length;i++)
				{
					if(joinMembers[i]!=null&&joinMembers[i]!="")
					{
						Member member =(Member) memberDao.get(Integer.parseInt(joinMembers[i]));
						project.getMemberSet().add(member);//添加成员
						projectDao.save(project);
					}
				}
			}
			projectDao.save(project);
			System.out.println("保存成功");
			return SUCCESS;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return ERROR;
		}
	}
	public void selectprojectType(String projectType) {
		switch(projectType)//项目类型
		{
		case "1":
			projectType=Constant.projectType1;
			break;
		case "2":
			projectType=Constant.projectType2;
			break;
		case "3":
			projectType=Constant.projectType3;
			break;
		case "4":
			projectType=Constant.projectType4;
			break;
		case "5":
			projectType=Constant.projectType5;
			break;
		case "6":
			projectType=Constant.projectType6;
			break;
			default:
			break;
		}
	}
	public void selectownershipType(String ownershipType){
		switch(ownershipType)
		{
		case "1":
			ownershipType=Constant.ownershipType1;
			break;
		case "2":
			ownershipType= Constant.ownershipType2;
			break;
			default:
			break;
		}
	}
	public String getProjectId() {
		return projectId;
	}

	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}

	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getProjectType() {
		return projectType;
	}
	public void setProjectType(String projectType) {
		this.projectType = projectType;
	}
	public String getOwnershipType() {
		return ownershipType;
	}
	public void setOwnershipType(String ownershipType) {
		this.ownershipType = ownershipType;
	}
	public String getProjectBrief() {
		return projectBrief;
	}
	public void setProjectBrief(String projectBrief) {
		this.projectBrief = projectBrief;
	}
	public String getMessage() {
		return Message;
	}
	public void setMessage(String message) {
		Message = message;
	}

	public void setProjectList(List<Project> projectList) {
		this.projectList = projectList;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public Project getProject() {
		return project;
	}
	public void setProject(Project project) {
		this.project = project;
	}

	public String getJoinMemberList() {
		return joinMemberList;
	}

	public void setJoinMemberList(String joinMemberList) {
		this.joinMemberList = joinMemberList;
	}
	public List<Project> getProjectList() {
		return projectList;
	}

}
