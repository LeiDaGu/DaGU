package com.hongshan.controller.supperAdmin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hongshan.pojo.Project;
import com.hongshan.service.ProjectService;

@Controller
@RequestMapping("/project")
public class ProjectController {
		
	@Autowired
	private ProjectService projectService;
	
	//查询所有的项目
	@RequestMapping("dispalyProject")
	public String dispalyProject( Model model ) {
		List<Project> listProject = projectService.findAllProject();
		model.addAttribute("listProject", listProject);
		return "Superadministrator/dispalyProject";
	}
	
	//显示项目通过客户的id
	@RequestMapping("dispalyProjectByCustomerID")
	public String dispalyProjectByCustomerID( String project_customer_id , Model model ) {
		List<Project> listProject = projectService.findProjectByCustomerID(project_customer_id);
		model.addAttribute("listProject", listProject);
		return "Superadministrator/dispalyProject";
	}
	
	//修改项目
	@RequestMapping("toModifyProject")
	public String toModifyProject( String project_id , Model model ) {
		Project project = projectService.findProjectByID(project_id);
		model.addAttribute("project", project);
		return "Superadministrator/modifyProject";
	}
	
	@RequestMapping("modifyProject")
	public String ModifyProject( Project project ) {
		Project newProject = projectService.findProjectByID(project.getProject_id());
		newProject.setProject_manager(project.getProject_manager());
		projectService.modifyProject(newProject);
		return "redirect:dispalyProject.do";
	}
	
	//多添件查询
	@RequestMapping("dispalyProjectByMultiCondition")
	public String dispalyProjectByMultiCondition( Model model , Project project  ) {
		List<Project> listProject = projectService.findProjectByMultiCondition(project);
		model.addAttribute("listProject", listProject);
		return "Superadministrator/dispalyProject";
	}
	
}
