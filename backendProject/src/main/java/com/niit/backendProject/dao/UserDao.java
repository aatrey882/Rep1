package com.niit.backendProject.dao;

import java.util.List;

import com.niit.backendProject.model.User;

public interface UserDao {

	public boolean addUser(User u);
	List<User>getUser();
}
