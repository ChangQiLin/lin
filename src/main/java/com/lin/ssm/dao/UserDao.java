package com.lin.ssm.dao;
import com.lin.ssm.entity.User;


public interface UserDao {
	public User getLogin(User user);
	public User getUserAcount(User user);
	public void addUser(User user);
}
