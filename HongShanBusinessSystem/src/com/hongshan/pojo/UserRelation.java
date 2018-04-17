package com.hongshan.pojo;

import java.util.Date;
import java.util.List;
/**
 * 
 * @author DaGu
 *
 */
public class UserRelation {
	
	private String user_relation_id;
	private String user_id;
	private String user_parent_id;
	private Date createtime;
	
	private List<Task> tasks = null;
	 
	public List<Task> getTasks() {
		return tasks;
	}
	public void setTasks(List<Task> tasks) {
		this.tasks = tasks;
	}
	public String getUser_relation_id() {
		return user_relation_id;
	}
	public void setUser_relation_id(String user_relation_id) {
		this.user_relation_id = user_relation_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_parent_id() {
		return user_parent_id;
	}
	public void setUser_parent_id(String user_parent_id) {
		this.user_parent_id = user_parent_id;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}


}
