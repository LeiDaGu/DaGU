package com.hongshan.pojo;

import java.util.Date;

/**
 * 
 * @author DaGu
 *
 */
public class ProjectTracking {
	
	private String project_tracking_id;
	private String project_name;
	private String project_id; // 项目id
	private String project_tracking_details; //跟踪详情
	private Date create_time; // 项目跟踪时间
	
	public Date getCreate_time() {
		return create_time;
	}
	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}
	public String getProject_tracking_id() {
		return project_tracking_id;
	}
	public void setProject_tracking_id(String project_tracking_id) {
		this.project_tracking_id = project_tracking_id;
	}
	public String getProject_id() {
		return project_id;
	}
	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}
	public String getProject_tracking_details() {
		return project_tracking_details;
	}
	public void setProject_tracking_details(String project_tracking_details) {
		this.project_tracking_details = project_tracking_details;
	}
	public String getProject_name() {
		return project_name;
	}
	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}
	 
}
