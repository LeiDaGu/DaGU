package com.hongshan.service;

import java.util.List;

import com.hongshan.pojo.Customer;
import com.hongshan.pojo.User;

public interface CustomerService {
	
	/**
	 * 添加客户
	 * @param customer
	 */
	public void addCustomer ( Customer customer );
	
	/**
	 * 修改客户
	 * @param customer
	 */
	public void modifyCustomer ( Customer customer );
	
	/**
	 * 查看客户通过主管的id
	 * @param user_id
	 * @return
	 */
	public List<Customer> findCustomerByUserID ( String user_id );
	
	/**
	 * 查看客户通过客户id
	 * @param customer_id
	 * @return
	 */
	public Customer findCustomerByID ( String customer_id );
	
	/**
	 * 查看所有客户
	 * @return
	 */
	public List<Customer> findAllCustomer ();
	
	/**
	 * 多添件查询客户
	 * @param customer
	 * @return
	 */
	public List<Customer> findCustomerByMultiCondition( Customer customer );
	
	/**
	 * 通过团队经理查看所有客户
	 * @param user
	 * @return
	 */
	public List<Customer> findCustomerByParentId(User user);
	
	/**
	 * @param userIds  需要查询客户的所有user集合
	 * @return
	 */
	public List<Customer> findCustomerByParentId(List<String> userIds);
	
	/**
	 * 添加客户查询客户名字
	 * @param customer
	 * @return
	 */
	public Customer findCustomerByName( Customer customer );
	
}
