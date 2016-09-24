package com.TeamManage.action.MemberAction;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.TeamManage.action.baseAction.BaseAction;
import com.TeamManage.domain.Member;
import com.TeamManage.domain.Project;
import com.TeamManage.util.Constant;
import com.opensymphony.xwork2.Action;

public class MemberAction extends BaseAction {
	private String name;
	private	String password;
	private	String email;



	private String relatedMemberList;
	private List<Member> members;
	public String updateMember() {
		List<Member> list=new ArrayList<>();
		System.out.println("开始执行");
		int adminId = (int) ctx.getSession().get(Constant.USER_ID);
		member=(Member) memberDao.get(adminId);
		Member updateMember=new Member();
		updateMember.setMemberId(adminId);
		if (password!=null) {
			updateMember.setName(name);
		}
		else {
			updateMember.setName(member.getName());
		}
		
		if (password!=null) {
			updateMember.setPassword(password);
		}
		else {
			updateMember.setPassword(member.getPassword());
		}
		if (email!=null) {
			updateMember.setEmailAddress(email);
		}
		else {
			updateMember.setEmailAddress(member.getEmailAddress());
		}
		
		updateMember.setRelateMemberId(relatedMemberList);
		System.out.println(relatedMemberList);
		memberDao.update(updateMember);
		return Action.SUCCESS;
	}

	public String updateMemberIndex() {
		List<Member> list=new ArrayList<>();
		System.out.println("开始执行");
		int adminId = (int) ctx.getSession().get(Constant.USER_ID);
		members=memberDao.getAll("from Member where memberId <>"+adminId );
		member=(Member) memberDao.get(adminId);
		System.out.println(members.size());
		System.out.println(member.getName());
		return Action.SUCCESS;
	}
	@Test
	public void demo1() {
		
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}



	public String getRelatedMemberList() {
		return relatedMemberList;
	}

	public void setRelatedMemberList(String relatedMemberList) {
		this.relatedMemberList = relatedMemberList;
	}

	public List<Member> getMembers() {
		return members;
	}

	public void setMembers(List<Member> members) {
		this.members = members;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
