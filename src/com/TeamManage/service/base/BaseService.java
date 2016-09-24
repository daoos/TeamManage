package com.TeamManage.service.base;

import com.TeamManage.dao.UserDao;

public class BaseService {
	protected  UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	

}
