package com.hongshan.controller.queryTheSame;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hongshan.pojo.Customer;
import com.hongshan.service.CustomerService;

@Controller
@RequestMapping("/sameCustomer")
public class SameCustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("findCustomerByName")
	public @ResponseBody Map<String, String> findCustomerByName( Customer customer ){
		System.out.println(customer.getCustomer_name());
		Map<String, String> customerName = new HashMap<>();
		Customer oldCustomer = customerService.findCustomerByName(customer);
		if(oldCustomer!=null) {
			customerName.put("key", "0");
			customerName.put("value", "该用户已经存在！！！");
		}
		return customerName;
	}
	
}
