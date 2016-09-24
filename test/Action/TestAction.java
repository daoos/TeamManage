package Action;

import com.opensymphony.xwork2.ActionSupport;

public class TestAction extends ActionSupport {
	private String [] a;
	public String execute()
	{
		try
		{
			
			return SUCCESS;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return ERROR;
		}
	}
}
