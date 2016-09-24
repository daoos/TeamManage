package com.TeamManage.action.loginAction;

import java.util.Map;

import com.TeamManage.action.baseAction.BaseAction;
import com.TeamManage.util.Constant;
import com.opensymphony.xwork2.ActionSupport;

public class LoginOutAction extends BaseAction {
	@Override
	public String execute() throws Exception {
		Map<String, Object> memberValue=ctx.getSession();
		memberValue.remove(Constant.USERNAME);
		return SUCCESS;
	}
}
