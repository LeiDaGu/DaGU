package com.hongshan.pojo;

import java.util.Date;

public class Task {
	
	private String task_id; //任务id
	private String user_relation_id; //任务关系id
	private String task_assigner_target; //分配任务目标
	private String task_ideal_target; //理想任务目标
	private String task_real_completion; //实际完成的任务目标
	private Date createtime; //创建时间

	public String getTask_id() {
		return task_id;
	}
	public void setTask_id(String task_id) {
		this.task_id = task_id;
	}
	public String getUser_relation_id() {
		return user_relation_id;
	}
	public void setUser_relation_id(String user_relation_id) {
		this.user_relation_id = user_relation_id;
	}
	public String getTask_assigner_target() {
		return task_assigner_target;
	}
	public void setTask_assigner_target(String task_assigner_target) {
		this.task_assigner_target = task_assigner_target;
	}
	public String getTask_ideal_target() {
		return task_ideal_target;
	}
	public void setTask_ideal_target(String task_ideal_target) {
		this.task_ideal_target = task_ideal_target;
	}
	public String getTask_real_completion() {
		return task_real_completion;
	}
	public void setTask_real_completion(String task_real_completion) {
		this.task_real_completion = task_real_completion;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	
}
