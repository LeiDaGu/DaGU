package com.hongshan.service;

import com.hongshan.pojo.Task;

import java.util.List;

public interface TaskService {
    //添加任务
    public void addTask(Task task);

    //修改任务
    public void modifyTask(Task task);

    //查询任务根据task_id
    public Task findTaskByTaskId(String task_id);

    //查询任务列表根据user_relation_id
    public List<Task> findTaskByUserRelationId(String user_relation_id);

}
