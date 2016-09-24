package com.TeamManage.action.loginAction;

import com.TeamManage.action.baseAction.BaseAction;
import com.TeamManage.domain.Member;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;

public class RegistAction extends BaseAction implements ModelDriven<Member> {

	private Member member = new Member();

	public String regist() {
		Member member=getModel();
		System.out.println(member.getName());
		memberDao.save(getModel());
		return Action.SUCCESS;
	}

	@Override
	public Member getModel() {

		return member;
	}
}
