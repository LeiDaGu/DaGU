package com.hongshan.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hongshan.mapper.CustomerMapper;
import com.hongshan.pojo.Customer;
import com.hongshan.pojo.User;
import com.hongshan.service.CustomerService;
@Service
@Transactional
public class CustomerServiceImpl implements CustomerService{
	
	@Autowired
	private CustomerMapper customerMapper;

	@Override
	public void addCustomer(Customer customer) {
		customerMapper.addCustomer(customer);
	}

	@Override
	public void modifyCustomer(Customer customer) {
		customerMapper.updateCustomer(customer);
	}

	@Override
	public List<Customer> findCustomerByUserID(String user_id) {
		return customerMapper.selectCustomerByUserId(user_id);
	}

	@Override
	public Customer findCustomerByID(String customer_id) {
		return customerMapper.selectCustomerByID(customer_id);
	}

	@Override
	public List<Customer> findAllCustomer() {
		return customerMapper.selectCustomers();
	}

	@Override
	public List<Customer> findCustomerByMultiCondition(Customer customer) {
		return customerMapper.selectCustomersByMultiCondition(customer);
	}

	@Override
	public List<Customer> findCustomerByParentId(User user) {
		return null;
	}

	@Override
	public List<Customer> findCustomerByParentId(List<String> userIds) {
		List<Customer> customers = new ArrayList<>();
		List<Customer> newCustomers = new ArrayList<>();
		for (String str : userIds) {
			newCustomers = customerMapper.selectCustomerByUserId(str);
			for (Customer customer : newCustomers) {
				customers.add(customer);
			}
		}
		return customers;
	}

	@Override
	public Customer findCustomerByName(Customer customer) {
		return customerMapper.selectCustomerByName(customer);
	}
	
}
