package com.hongshan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hongshan.mapper.UserRelationMapper;
import com.hongshan.pojo.UserRelation;
import com.hongshan.service.UserRelationService;
@Service
@Transactional
public class UserRelationServiceImpl implements UserRelationService{
	
	@Autowired
	private UserRelationMapper userRelationMapper;

	@Override
	public void addUserRelation(UserRelation userRelation) {
		userRelationMapper.addUserRelation(userRelation);
	}

	@Override
	public void modifyRelation(UserRelation userRelation) {
		userRelationMapper.updateUserRelation(userRelation);
	}

	@Override
	public List<UserRelation> findUserRelationByParentId(String user_parent_id) {
		UserRelation userRelation = new UserRelation();
		userRelation.setUser_parent_id(user_parent_id);
		return userRelationMapper.selectUserRelationByMultiCondition(userRelation);
	}

}
