package com.hongshan.controller.Administrators;

import com.hongshan.pojo.Customer;
import com.hongshan.pojo.User;
import com.hongshan.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/adminiCustomer")
public class CustomerController1 {

    @Autowired
    CustomerService customerService;

    //获取全部客户信息
    @RequestMapping("/findCustomerByUserID.do")
    public ModelAndView findCustomerByUserID(HttpSession httpSession, Customer customer){
        ModelAndView mv = new ModelAndView();
        User user = (User) httpSession.getAttribute("user");
        String user_id = user.getUser_id();
        customer.setUser_id(user_id);
        List<Customer> customers = customerService.findCustomerByMultiCondition(customer);
        mv.setViewName("jsp/Administrators/customer");
        mv.addObject("customer",customers);
        mv.addObject("cus",customer);
        return mv;
    }
    //转向修改客户界面
    @RequestMapping("/toModiftCustomer")
    public  ModelAndView toModiftCustomer(HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        //获取客户信息
        String customer_id = request.getParameter("customer_id");
        Customer customer = customerService.findCustomerByID(customer_id);
        mv.setViewName("jsp/Administrators/modifyCustomer");
        mv.addObject("customer",customer);
        return mv;
    }
    //修改客户
    @RequestMapping("/modifyCustomer")
    public String modifyCustomer(Customer customer){
        ModelAndView mv = new ModelAndView();
        customerService.modifyCustomer(customer);
        return "redirect:/adminiCustomer/findCustomerByUserID.do";
    }

    //新增客户（转到界面）
    @RequestMapping("/toAddCustomer.do")
    public ModelAndView toAddCustomer(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("jsp/Administrators/addCustomer");
        return mv;
    }


    //新增客户
    @RequestMapping("/addCustomer.do")
    public  String addCustomer(Customer customer,HttpSession httpSession){
        ModelAndView mv = new ModelAndView();
        String customer_id = UUID.randomUUID().toString().replace("-","");
        customer.setCustomer_id(customer_id);
        User user =  (User)httpSession.getAttribute("user");
        String user_id = user.getUser_id();
        customer.setUser_id(user_id);
        customer.setCreate_time(new Date());
        customerService.addCustomer(customer);
        return "redirect:/adminiCustomer/findCustomerByUserID.do";
    }
}
