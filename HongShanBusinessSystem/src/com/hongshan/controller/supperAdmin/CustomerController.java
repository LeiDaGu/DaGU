package com.hongshan.controller.supperAdmin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hongshan.pojo.Customer;
import com.hongshan.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
		
	@Autowired
	private CustomerService customerService;
	
	//显示所有客户
	@RequestMapping("displayCustomer")
	public String displayCustomer( Model model ) {
		List<Customer> listCustomer =  customerService.findAllCustomer();
		model.addAttribute("listCustomer", listCustomer);
		return "Superadministrator/displayCustomer";
	}
	
	//显示客户通过主管id
	@RequestMapping("displayCustomerByUserID")
	public String displayCustomerByUserID() {
		return "Superadministrator/customerProject";
	}
	
	//多条件查询客户
	@RequestMapping("displayCustomerByMultiCondition")
	public String displayCustomerByMultiCondition( Customer customer, Model model ) {
		System.out.println(customer.getProjects().get(0).getProject_name());
		List<Customer> listCustomer = customerService.findCustomerByMultiCondition(customer);
		model.addAttribute("listCustomer", listCustomer);
		return "Superadministrator/displayCustomer";
	}
}
