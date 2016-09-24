package com.TeamManage.action.ResourceAction;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import com.TeamManage.action.baseAction.BaseAction;
import com.TeamManage.domain.Resource;


@SuppressWarnings("serial")
public class DownloadResourceAction extends BaseAction{
	private String resourceId;
	private Resource downloadResource;
	private String fileName;
	private String target;
	public String execute(){
		try{
			downloadResource = (Resource) resourceDao.get(Integer.parseInt(resourceId));
			fileName = downloadResource.getFileName();
			int position = fileName.lastIndexOf(".");
			String extension = fileName.substring(position);
			fileName = new String(fileName.getBytes("utf-8"), "ISO8859-1");
			if(extension.equals(".txt"))
			{	
				target = "text/plain";
			}
			else if(extension.equals(".doc"))
			{
				target = "application/msword";
			}
			else if(extension.equals(".pdf"))
			{	
				target = "application/pdf";
			}
			else if(extension.equals(".ppt"))
			{
				target = "application/vnd.ms-powerpoint";
			}
			else if(extension.equals(".zip"))
			{
				target = "application/zip";
			}
			else if(extension.equals(".jpg"))
			{
				target = "image/jpeg";
			}
			else if(extension.equals(".xsl"))
			{
				target = "text/xml";
			}
				return SUCCESS;
		}catch(Exception ex){
			return ERROR;
		}
	}
	public InputStream getDownloadFile() throws Exception
	{	
		byte[] file_bytes = downloadResource.getFileBytes();
		ByteArrayInputStream in = new ByteArrayInputStream(file_bytes);
		return in ;  
	}
	public String getResourceId() {
		return resourceId;
	}

	public void setResourceId(String resourceId) {
		this.resourceId = resourceId;
	}

	public Resource getDownloadResource() {
		return downloadResource;
	}

	public void setDownloadResource(Resource downloadResource) {
		this.downloadResource = downloadResource;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}
	
}
