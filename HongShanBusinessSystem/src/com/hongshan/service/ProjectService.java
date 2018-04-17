package com.hongshan.service;

import java.util.List;

import com.hongshan.pojo.Project;

public interface ProjectService {
	
	// 添加项目
	public void addProject ( Project project );
	
	// 修改项目
	public void modifyProject ( Project project );
	
	// 查看所有项目
	public List<Project> findAllProject ();
	
	// 查看项目通过项目id
	public Project findProjectByID( String project_id );
	
	// 查看项目通过客户id
	public List<Project> findProjectByCustomerID ( String customer_id );
	
	// 多条件查询
	public List<Project> findProjectByMultiCondition ( Project project );
	
	//通过团队经理id查出所有的项目信息
	public List<Project> findProjectByParentId(List<String> users);

	//添加项目查询名字
	public Project findProjectByName( Project project );
}
