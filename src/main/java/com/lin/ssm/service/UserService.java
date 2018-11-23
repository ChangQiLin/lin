package com.lin.ssm.service;

import com.lin.ssm.entity.User;

public interface UserService {
	public User getLogin(User user);
	public User getUserName(User user);
	public void addUser(User user);
}
