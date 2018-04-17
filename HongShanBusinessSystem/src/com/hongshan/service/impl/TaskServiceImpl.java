package com.hongshan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hongshan.mapper.TaskMapper;
import com.hongshan.pojo.Task;
import com.hongshan.service.TaskService;
@Service
@Transactional
public class TaskServiceImpl implements TaskService{
	
	@Autowired
	private TaskMapper taskMapper;

	@Override
	public void addTask(Task task) {
		taskMapper.addTask(task);
	}

	@Override
	public void modifyTask(Task task) {
		taskMapper.updateTaskByTaskID(task);
	}

	@Override
	public Task findTaskByTaskId(String task_id) {
		Task task = new Task();
		task.setTask_id(task_id);
		List<Task> listTask = taskMapper.selectTaskMultiCondition(task);
		return listTask.get(0);
	}

	@Override
	public List<Task> findTaskByUserRelationId(String user_relation_id) {
		Task task = new Task();
		task.setUser_relation_id(user_relation_id);;
		return taskMapper.selectTaskMultiCondition(task);
	}

}
