package com.TeamManage.action.ResourceAction;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;

import com.TeamManage.action.baseAction.BaseAction;
import com.TeamManage.domain.Member;
import com.TeamManage.domain.Project;
import com.TeamManage.domain.Resource;
import com.TeamManage.util.Constant;

@SuppressWarnings("serial")
public class AddResourceAction extends BaseAction{
	 private String projectId;
	 private File file;
     private String fileFileName; //struts要求文件名为**FileName
     private String fileContentType;//struts要求文件类型为**ContentType
 
     public String execute() throws IOException {
        //...
    	 try
	    	 {
					 if(file==null)
					 {
						 return ERROR;
					 }
    	        	InputStream in =new FileInputStream(file);
    				byte[] fileBytes=new byte[in.available()];
    				in.read(fileBytes);
    				in.close();
    				Resource resource = new Resource();
    				//设置上传的文件流
    				resource.setFileBytes(fileBytes);
    				//设置上传的文件名
    				resource.setFileName(fileFileName);
    				Date date = new Date();
    				resource.setUploadTime(date);
    				Member member = (Member) memberDao.get((int) ctx.getSession().get(Constant.USER_ID));
    				resource.setMember(member);
    				Project project =(Project) projectDao.get(Integer.parseInt(projectId));
    				resource.setProject(project);
    				resourceDao.save(resource);
    				System.out.println("文件");
    	 }
    	 catch(Exception ex)
    	 {
    		 ex.printStackTrace();
    	 }
   
        return SUCCESS;
     }

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}
	public String getFileContentType() {
		return fileContentType;
	}
	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	public String getProjectId() {
		return projectId;
	}

	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}
     
     

}
