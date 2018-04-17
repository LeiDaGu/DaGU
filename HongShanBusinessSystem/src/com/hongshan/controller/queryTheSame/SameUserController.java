package com.hongshan.controller.queryTheSame;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hongshan.pojo.User;
import com.hongshan.service.UserService;

@Controller
@RequestMapping("/sameUser")
public class SameUserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("findUserByName")
	public @ResponseBody Map<String, String> findUserByName( User user ){
		Map<String, String> strMap = new HashMap<>();
		User oldUser = userService.findUserByName(user);
		if(oldUser != null) {
			strMap.put("key", "0");
			strMap.put("value", "该用户已经存在！！！");
		}
		return strMap;
	}
	
}
