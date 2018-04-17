package com.hongshan.mapper;

import java.util.List;

import com.hongshan.pojo.UserRelation;
/**
 * 
 * @author DaGu
 *
 */
public interface UserRelationMapper {
	
	/**
	 * 添加关系
	 * @param userRelation
	 */
	public void addUserRelation ( UserRelation userRelation );
	/**
	 * 修改关系
	 * @param userRelation
	 */
	public void updateUserRelation( UserRelation userRelation );
	
	/**
	 * 多条件查询
	 * @param userRelation
	 * @return
	 */
	public List<UserRelation> selectUserRelationByMultiCondition( UserRelation userRelation );
	

}
