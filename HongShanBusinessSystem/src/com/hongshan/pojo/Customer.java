package com.hongshan.pojo;

import java.util.Date;
import java.util.List;

/**
 * 
 * @author DaGu
 * 
 */
public class Customer {
	
	private String customer_id;
	private String user_id; //外联user_id
	private String customer_grade; //客户分级
	private String customer_name; //客户姓名
	private String customer_origin; //客户来源
	private String customer_phone; //客户手机
	private String customer_telephone; //电话
	private String customer_qq; //客户qq
	private String customer_weixin; //客户微信
	private String customer_city; //城市
	private String customer_address; //
	private Date create_time;
	
	private List<Project> projects = null;
	
	public String getCustomer_city() {
		return customer_city;
	}
	public void setCustomer_city(String customer_city) {
		this.customer_city = customer_city;
	}
	public List<Project> getProjects() {
		return projects;
	}
	public void setProjects(List<Project> projects) {
		this.projects = projects;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getCustomer_grade() {
		return customer_grade;
	}
	public void setCustomer_grade(String customer_grade) {
		this.customer_grade = customer_grade;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	public String getCustomer_origin() {
		return customer_origin;
	}
	public void setCustomer_origin(String customer_origin) {
		this.customer_origin = customer_origin;
	}
	public String getCustomer_phone() {
		return customer_phone;
	}
	public void setCustomer_phone(String customer_phone) {
		this.customer_phone = customer_phone;
	}
	public String getCustomer_qq() {
		return customer_qq;
	}
	public void setCustomer_qq(String customer_qq) {
		this.customer_qq = customer_qq;
	}
	public String getCustomer_weixin() {
		return customer_weixin;
	}
	public void setCustomer_weixin(String customer_weixin) {
		this.customer_weixin = customer_weixin;
	}
	public String getCustomer_address() {
		return customer_address;
	}
	public void setCustomer_address(String customer_address) {
		this.customer_address = customer_address;
	}
	public Date getCreate_time() {
		return create_time;
	}
	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}
	public String getCustomer_telephone() {
		return customer_telephone;
	}
	public void setCustomer_telephone(String customer_telephone) {
		this.customer_telephone = customer_telephone;
	}
	
}
