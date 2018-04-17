package com.hongshan.test;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hongshan.pojo.Task;
import com.hongshan.pojo.User;
import com.hongshan.pojo.UserRelation;
import com.hongshan.service.UserService;

//让测试运行于Spring环境
@RunWith(SpringJUnit4ClassRunner.class)
//引入Spring配置
@ContextConfiguration(locations = { "classpath:applicationContext.xml" })
public class UserTest {
	
	//注入测试类，Service层
    @Autowired
	private UserService userService;
    
    //多添件跨表查询
	@Test
	public void oneDemo() {
		Task task = new Task();
		task.setUser_relation_id("2");
		List<Task> tasks = new ArrayList<>();
		tasks.add(task);
		
		UserRelation userRelation = new UserRelation();
		userRelation.setTasks(tasks);
		List<UserRelation> userRelations = new ArrayList<>();
		userRelations.add(userRelation);
		
		User user = new User();
//		user.setUserRelations(userRelations);
		user.setUser_id("2");
		
		List<User> users = userService.findUserAndTaskByUserParentId(user);
		for (User user2 : users) {
			System.out.println(user2.getUser_name());
		}
	}
	
	@Test
	public void twoDemo() {
		User user = new User();
		user.setUser_name("张三");
		User oldUser = userService.findUserByName(user);
		System.out.println(oldUser.getUser_id());
	}
}
