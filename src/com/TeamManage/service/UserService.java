package com.TeamManage.service;

import com.TeamManage.domain.User;
import com.TeamManage.service.base.BaseService;

public class UserService extends BaseService{
	
	//根据用户名查询用户
	public User getUserByName(String userName)
	{
		return userDao.getUserByName(userName);
	}

}
