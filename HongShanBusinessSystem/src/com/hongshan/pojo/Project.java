package com.hongshan.pojo;
/**
 * 
 * @author DaGu
 *
 */
import java.util.Date;
import java.util.List;

public class Project {
	
	private String project_id; 
	private String customer_id; //项目所属客户
	private String project_name; //项目名称
	private String project_platform; //项目平台
	private String project_number; //项目编号
	private String project_budget; //项目预算
	private String project_quote; //项目报价
	private String project_req; //项目需求
	private String project_state; //项目状态
	private String project_manager; //项目经理
	private Date create_time; 
	private String customer_name;
	
	private List<ProjectTracking> project_trackings = null;
	
	public List<ProjectTracking> getProject_trackings() {
		return project_trackings;
	}
	public void setProject_trackings(List<ProjectTracking> project_trackings) {
		this.project_trackings = project_trackings;
	}
	public Date getCreate_time() {
		return create_time;
	}
	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}
	public String getProject_id() {
		return project_id;
	}
	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getProject_name() {
		return project_name;
	}
	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}
	public String getProject_platform() {
		return project_platform;
	}
	public void setProject_platform(String project_platform) {
		this.project_platform = project_platform;
	}
	public String getProject_number() {
		return project_number;
	}
	public void setProject_number(String project_number) {
		this.project_number = project_number;
	}
	public String getProject_budget() {
		return project_budget;
	}
	public void setProject_budget(String project_budget) {
		this.project_budget = project_budget;
	}
	public String getProject_quote() {
		return project_quote;
	}
	public void setProject_quote(String project_quote) {
		this.project_quote = project_quote;
	}
	public String getProject_req() {
		return project_req;
	}
	public void setProject_req(String project_req) {
		this.project_req = project_req;
	}
	public String getProject_manager() {
		return project_manager;
	}
	public void setProject_manager(String project_manager) {
		this.project_manager = project_manager;
	}
	public String getProject_state() {
		return project_state;
	}
	public void setProject_state(String project_state) {
		this.project_state = project_state;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	
	
}
