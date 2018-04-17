package com.hongshan.mapper;

import java.util.List;

import com.hongshan.pojo.Task;
/**
 * 
 * @author DaGu
 *
 */
public interface TaskMapper {
	
	/**
	 * 添加任务
	 * @param task
	 */
	public void addTask( Task task );
	
	/**
	 * 修改任务
	 * @param task
	 */
	public void updateTaskByTaskID( Task task );
	
	/**
	 * 查询任务
	 * @param task
	 * @return
	 */
	public List<Task> selectTaskMultiCondition( Task task );
	
}
