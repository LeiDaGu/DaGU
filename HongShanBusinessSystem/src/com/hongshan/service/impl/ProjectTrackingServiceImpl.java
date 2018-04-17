package com.hongshan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hongshan.mapper.ProjectTrackingMapper;
import com.hongshan.pojo.ProjectTracking;
import com.hongshan.service.ProjectTrackingService;

@Service
@Transactional
public class ProjectTrackingServiceImpl implements ProjectTrackingService{
	
	@Autowired
	private ProjectTrackingMapper projectTrackingMapper;

	@Override
	public void addProjectTracking(ProjectTracking projectTracking) {
		projectTrackingMapper.addProjectTracking(projectTracking);
	}

	@Override
	public List<ProjectTracking> findProjectTrackingByProjectID(String project_id) {
		return projectTrackingMapper.selectProjectTrackingByProjectId(project_id);
	}

}
