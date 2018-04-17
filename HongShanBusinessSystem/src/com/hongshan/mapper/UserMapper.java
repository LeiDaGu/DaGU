package com.hongshan.mapper;

import java.util.List;

import com.hongshan.pojo.User;

public interface UserMapper {

	/**
	 * 添加用户
	 * @param user
	 */
	public void addUser( User user );

	/**
	 * 修改用户
	 * @param user
	 */
	public void updateUser( User user ); 
	
	/**
	 * 查询用户
	 * @return
	 */
	public List<User> selectUsers();
	
	/**
	 * 单值查询用户ByID
	 * @param user_id
	 * @return
	 */
	public User selectUserByID( String user_id );
	
	/**
	 * 单值查询用户ByAccount
	 * @param user_account
	 * @return
	 */
	public User selectUserByAccount( String user_account );
	
	/**
	 * 通过角色查询用户
	 * @param role
	 * @return
	 */
	public List<User> selectUserByRole(String role);
	
	/**
	 * 多条件查询用户
	 * @param user
	 * @return
	 */
	public List<User> selectUsersByMultiCondition( User user );
	
	/**
	 * 多条件跨表查询Map
	 * @param user
	 * @return
	 */
	public List<User> selectUserTaskMap( User user );
	
}
