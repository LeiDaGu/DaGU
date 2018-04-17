package com.hongshan.service;

import java.util.List;

import com.hongshan.pojo.ProjectTracking;

public interface ProjectTrackingService {
	
	// 添加项目追踪
	public void addProjectTracking ( ProjectTracking projectTracking );
	
	// 查询项目追踪通过项目id
	public List<ProjectTracking> findProjectTrackingByProjectID ( String project_id );
	
}
