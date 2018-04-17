package com.hongshan.controller;

import com.hongshan.pojo.User;
import com.hongshan.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * 
 * @author 
 *
 */
@Controller
@RequestMapping("/Login")
public class LoginController {
	@Autowired
	UserService userService;

	@RequestMapping("/login.do")
	public @ResponseBody HashMap<String,String> login(User user,HttpServletRequest request){
		//判断用户名密码是否正确
		HttpSession session = request.getSession();
		HashMap<String,String> result = new HashMap<String, String>();
		User user1 = null;
		user1 = userService.login(user);

		if (user1==null){
			result.put("key","0");   //用户名不存在
		}else {
			String password = user1.getUser_password();
			if (password.equals(user.getUser_password())) {   //登录成功
				//写入全局session
				session.setAttribute("user",user1);
				String role = user1.getRole();
				result.put("key","2");
				//角色为商务经理
				if("0".equals(role)){
					result.put("page","superAdmin");
				}else{		//角色为商务主管
					result.put("page","admin");
				}
			} else {
				result.put("key", "1");		//用户名或密码错误

			}
		}
		return result;
	}
}
