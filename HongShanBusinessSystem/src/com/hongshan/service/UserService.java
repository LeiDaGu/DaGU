package com.hongshan.service;

import java.util.List;

import com.hongshan.pojo.User;

public interface UserService {
	
	// 商务经理登录
	public User superlogin ( User user );
	
	// 主管登录
	public User login ( User user );
	
	// 添加主管
	public void addUser ( User user );
	
	// 查询主管通过主管id
	public User findUserByUserID( String user_id );
	
	// 修改主管
	public void modifyUser ( User user );
	
	// 查询所有主管
	public List<User> findAllUser ();
	
	// 多添件查询用户
	public List<User> findUsersByMultiCondition( User user );
	
	//获取所有商务经理和user_id对其分配
	public List<User> findUserAndTaskByUserParentId(User user);
	
	//查询用户通过role_id
	public List<User> findUserByRoleId(String role_id);
	
	//添加查询用户
	public User findUserByName ( User user );
	
}
