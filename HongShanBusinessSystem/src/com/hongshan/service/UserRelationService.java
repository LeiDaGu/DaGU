package com.hongshan.service;

import com.hongshan.pojo.UserRelation;

import java.util.List;

public interface UserRelationService {
	
    //添加关系
    public void addUserRelation(UserRelation userRelation);

    //修改关系
    public void modifyRelation(UserRelation userRelation);

    //查询用户关系通过user_parent_id
    public List<UserRelation> findUserRelationByParentId(String user_parent_id);

}
