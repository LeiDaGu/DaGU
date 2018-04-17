package com.hongshan.controller.queryTheSame;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hongshan.pojo.Project;
import com.hongshan.service.ProjectService;

@Controller
@RequestMapping("/sameProject")
public class SameProjectController {
		
	@Autowired
	private ProjectService projectService;
	
	@RequestMapping("findProjectName")
	public @ResponseBody Map<String, String> findProjectName( Project project ){
		Map<String, String> projectName = new HashMap<>();
		Project oldProject = projectService.findProjectByName(project);
		if(oldProject != null) {
			projectName.put("key", "0");
			projectName.put("value", "该项目已经存在！！！");
		}
		return projectName;
		
	}
	
}
