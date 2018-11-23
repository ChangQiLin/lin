package com.lin.ssm.service.impl;

import com.lin.ssm.service.UserService;
import com.lin.ssm.entity.User;
import com.lin.ssm.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;
	
	
	@Override
	public User getLogin(User user) {
		
		return userDao.getLogin(user);
	}

	@Override
	public User getUserName(User user) {
		
		return userDao.getUserAcount(user);
	}

	@Override
	public void addUser(User user) {
		userDao.addUser(user);
	}

}
