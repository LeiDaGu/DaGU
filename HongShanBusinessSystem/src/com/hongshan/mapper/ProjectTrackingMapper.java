package com.hongshan.mapper;

import java.util.List;

import com.hongshan.pojo.ProjectTracking;

public interface ProjectTrackingMapper {

	/**
	 * 添加时间段操作
	 * @param projectTracking
	 */
	public void addProjectTracking( ProjectTracking projectTracking );
	
	/**
	 * 根据id查询跟踪项目
	 * @param project_tracking_id
	 * @return
	 */
	public ProjectTracking selectProjectTracking (String project_tracking_id);

	/**
	 * 根据project_id查询跟踪项目
	 * @param project_id
	 * @return
	 */
	public List<ProjectTracking> selectProjectTrackingByProjectId(String project_id);


}
