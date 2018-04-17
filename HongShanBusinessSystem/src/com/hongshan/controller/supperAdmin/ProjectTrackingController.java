package com.hongshan.controller.supperAdmin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hongshan.pojo.ProjectTracking;
import com.hongshan.service.ProjectTrackingService;

@Controller
@RequestMapping("/projectTracking")
public class ProjectTrackingController {
		
	@Autowired
	private ProjectTrackingService projectTrackingService;
	
	//查询项目跟踪通过项目id
	@RequestMapping("displayProjectTracking")
	public String displayProjectTracking( String project_id , Model model , String project_name ) {
		List<ProjectTracking> listProjectTracking = projectTrackingService.findProjectTrackingByProjectID(project_id);
		model.addAttribute("project_name", project_name);
		model.addAttribute("listProjectTracking", listProjectTracking);
		return "Superadministrator/displayProjectTracking";
	}
	
}
