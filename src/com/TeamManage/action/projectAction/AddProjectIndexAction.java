package com.TeamManage.action.projectAction;

import java.util.ArrayList;
import java.util.List;

import com.TeamManage.action.baseAction.BaseAction;
import com.TeamManage.domain.Member;
import com.TeamManage.util.Constant;

/**
 * 用户登录后的操作，创建项目要得到相关其他用户的信息
 * @author yzl
 *
 */

@SuppressWarnings("serial")
public class AddProjectIndexAction  extends BaseAction{
	private List<Member> memberList = new ArrayList<Member>();//和现在的作者有关联的作者们
	private Member me;
	public String execute()
	{
		try
		{
				
			Integer MyId=(Integer) ctx.getSession().get(Constant.USER_ID);
			System.out.println(MyId);
			if (MyId!=null) {
				 me =(Member) memberDao.get(MyId);//查询出当前登录用户
			}
			else {
				return ERROR;
			}
			if (me==null) {
				return ERROR;
			}
			getRelatedMemberList();
			return SUCCESS;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return ERROR;
		}
	}
	public void getRelatedMemberList() {
		String relateMemberId = me.getRelateMemberId();
		if(relateMemberId!=null&&relateMemberId.length()>0)
		{
			String[] relateMemberIds = relateMemberId.split(",");
			for(int i=0;i<relateMemberIds.length;i++)
			{
				Member member = (Member) memberDao.get(Integer.parseInt(relateMemberIds[i]));
				memberList.add(member);//查找出所有和自己相关的人员
			}
		}
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}//父类的变量
	public List<Member> getMemberList() {
		return memberList;
	}
	public void setMemberList(List<Member> memberList) {
		this.memberList = memberList;
	}
}
