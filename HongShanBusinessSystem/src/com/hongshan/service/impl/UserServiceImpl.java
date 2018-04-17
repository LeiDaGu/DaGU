package com.hongshan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hongshan.mapper.UserMapper;
import com.hongshan.pojo.User;
import com.hongshan.service.UserService;
@Service
@Transactional
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserMapper userMapper;

	@Override
	public User superlogin(User user) {
		if(user.getRole()!="1") {
			return null;
		}else {
			return userMapper.selectUserByAccount(user.getUser_account());
		}
	}

	@Override
	public User login(User user) {
		return userMapper.selectUserByAccount(user.getUser_account());
	}

	@Override
	public void addUser(User user) {
		userMapper.addUser(user);
	}

	@Override
	public void modifyUser(User user) {
		userMapper.updateUser(user);
	}

	@Override
	public List<User> findAllUser() {
		return userMapper.selectUsers();
	}

	@Override
	public User findUserByUserID(String user_id) {
		return userMapper.selectUserByID(user_id);
	}

	@Override
	public List<User> findUsersByMultiCondition(User user) {
		return userMapper.selectUsersByMultiCondition(user);
	}

	@Override
	public List<User> findUserAndTaskByUserParentId(User user) {
		return userMapper.selectUserTaskMap(user);
	}

	@Override
	public List<User> findUserByRoleId(String role_id) {
		return userMapper.selectUserByRole(role_id);
	}

	@Override
	public User findUserByName(User user) {
		return userMapper.selectUserByAccount(user.getUser_account());
	}

}
