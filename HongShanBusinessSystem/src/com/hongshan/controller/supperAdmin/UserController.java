package com.hongshan.controller.supperAdmin;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hongshan.pojo.User;
import com.hongshan.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	// 添加商务经理
	@RequestMapping("doAddUser")
	public String doAddUser() {
		return "Superadministrator/addUser";
	}

	@RequestMapping("addUser")
	public String addUser(User user) {
		user.setUser_id(UUID.randomUUID().toString().replaceAll("-", ""));
		user.setRole("1");
		user.setUser_islock("0");
		user.setCreate_time(new Date());
		userService.addUser(user);
		return "redirect:displayUser.do";
	}

	// 添加团队经理
	@RequestMapping("doAddUserGroup")
	public String doAddUserGroup() {
		return "Superadministrator/addUserGroup";
	}

	@RequestMapping("addUserGroup")
	public String addUserGroup(User user) {
		user.setUser_id(UUID.randomUUID().toString().replaceAll("-", ""));
		user.setRole("2");
		user.setUser_islock("0");
		user.setCreate_time(new Date());
		userService.addUser(user);
		return "redirect:displayUserGroup.do";
	}

	// 修改用户
	@RequestMapping("toUserModify")
	public String toAddDispaly(String user_id, Model model) {
		User user = userService.findUserByUserID(user_id);
		model.addAttribute("SIDuser", user);
		return "Superadministrator/modifyUser";
	}

	@RequestMapping("userModify")
	public String addDispaly(User user) {
		userService.modifyUser(user);
		return "redirect:displayUser.do";
	}

	// 显示用户
	@RequestMapping("displayUser")
	public String displayDispaly(Model model) {
		List<User> listUsers = userService.findAllUser();
		model.addAttribute("listUsers", listUsers);
		return "Superadministrator/displayUser";
	}

	// 显示团队经理
	@RequestMapping("displayUserGroup")
	public String displayUserGroup(Model model) {
		List<User> listUsers = userService.findAllUser();
		model.addAttribute("listUsers", listUsers);
		return "Superadministrator/displayUserGroup";
	}

	// 多条件查询用户
	@RequestMapping("displayUserByMultiCondition")
	public String displayUserByMultiCondition(Model model, User user) {
		System.out.println(user.getUser_islock());
		List<User> listUsers = userService.findUsersByMultiCondition(user);
		model.addAttribute("listUsers", listUsers);
		return "Superadministrator/displayUser";
	}

	// 多条件查询用户
	@RequestMapping("displayUserByMultiConditionGroup")
	public String displayUserByMultiConditionGroup(Model model, User user) {
		System.out.println(user.getUser_islock());
		List<User> listUsers = userService.findUsersByMultiCondition(user);
		model.addAttribute("listUsers", listUsers);
		return "Superadministrator/displayUserGroup";
	}

}
