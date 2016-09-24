package com.TeamManage.action.loginAction;

import java.util.List;

import com.TeamManage.action.baseAction.BaseAction;
import com.TeamManage.domain.Member;
/**
 * 登录
 * @author FanGe
 *
 */
@SuppressWarnings("serial")
public class LoginAction extends BaseAction{
	
	private String password;
	
	private String Message=null;//弹框信息
	public LoginAction() {
		System.out.println("得到用户");
		
	}
	
	
	public String execute()
	{
		try
		{
			
			 //member= memberDao.getMemberByName(username);
			 List<Member> members=memberDao.getByMemberFind(getUsername(), getPassword());
			System.out.println(members.size());
			if (members.size()<=0) {
				return ERROR;
			}
			//将member的id存到session里面
			 member=members.get(0);
			 System.out.println(member.getEmailAddress());
			ctx.getSession().put(com.TeamManage.util.Constant.USER_ID,member.getMemberId());
			System.out.println("用户登录成功!");
			return SUCCESS;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			//ctx.put("tip", value);
			return ERROR;
		}
	}
	//要用struts的表单标签
/*	@Override
	public   void validate(){
		//会先于构造方法执行
		if (getPassword()==null||!member.getPassword().equals(password)) {
			addFieldError(username, "错误密码");
		}
	}*/
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMessage() {
		return Message;
	}
	public void setMessage(String message) {
		Message = message;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	
}
