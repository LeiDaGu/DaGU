package com.hongshan.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hongshan.mapper.ProjectMapper;
import com.hongshan.pojo.Project;
import com.hongshan.service.ProjectService;

@Service
@Transactional
public class ProjectServiceImpl implements ProjectService {

	@Autowired
	private ProjectMapper projectMapper;

	@Override
	public void addProject(Project project) {
		projectMapper.addProject(project);
	}

	@Override
	public void modifyProject(Project project) {
		projectMapper.updateProject(project);
	}

	@Override
	public List<Project> findAllProject() {
		return projectMapper.selectProject();
	}

	@Override
	public List<Project> findProjectByCustomerID(String customer_id) {
		return projectMapper.selectProjectByCustomerId(customer_id);
	}

	@Override
	public Project findProjectByID(String project_id) {
		return projectMapper.selectProjectByID(project_id);
	}

	@Override
	public List<Project> findProjectByMultiCondition(Project project) {
		return projectMapper.selectProjectByMultiCondition(project);
	}

	@Override
	public List<Project> findProjectByParentId(List<String> users) {
		List<Project> listProject = new ArrayList<>();
		List<Project> newProjects = new ArrayList<>();
		for (String string : users) {
			newProjects = projectMapper.selectProjectByUserID(string);
			for (Project project : newProjects) {
				listProject.add(project);
			}
		}
		return listProject;
	}

	@Override
	public Project findProjectByName(Project project) {
		return projectMapper.selectProjectByName(project);
	}

}
