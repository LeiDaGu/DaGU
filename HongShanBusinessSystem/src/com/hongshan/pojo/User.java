package com.hongshan.pojo;
/**
 * 
 * @author DaGu
 *
 */
import java.util.Date;
import java.util.List;

public class User {
	
	private String user_id;
	private String role; //身份
	private String user_account; //用户账号
	private String user_name; //用户名
	private String user_password; //用户密码
	private String user_islock; //是否被锁
	private Date create_time;
	
	private List<UserRelation> userRelations = null;
	private List<Customer> customers = null;
	
	public List<UserRelation> getUserRelations() {
		return userRelations;
	}
	public void setUserRelations(List<UserRelation> userRelations) {
		this.userRelations = userRelations;
	}
	public List<Customer> getCustomers() {
		return customers;
	}
	public void setCustomers(List<Customer> customers) {
		this.customers = customers;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getUser_account() {
		return user_account;
	}
	public void setUser_account(String user_account) {
		this.user_account = user_account;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_islock() {
		return user_islock;
	}
	public void setUser_islock(String user_islock) {
		this.user_islock = user_islock;
	}
	public Date getCreate_time() {
		return create_time;
	}
	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}
	
}
