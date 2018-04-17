package com.hongshan.controller.Administrators;

import com.hongshan.pojo.Customer;
import com.hongshan.pojo.Project;
import com.hongshan.pojo.ProjectTracking;
import com.hongshan.pojo.User;
import com.hongshan.service.CustomerService;
import com.hongshan.service.ProjectService;
import com.hongshan.service.ProjectTrackingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/adminiProject")
public class ProjectController1 {

    @Autowired
    ProjectService projectService;
    @Autowired
    CustomerService customerService;
    @Autowired
    ProjectTrackingService projectTrackingService;
    //获取全部客户信息
    @RequestMapping("/findProjectByUserID.do")
    public ModelAndView findProjectByUserID(HttpSession httpSession,Project projectS,HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        //获取客户name
        String customer_name = request.getParameter("customer_name");
        //通过id查出所有客户
        User user = (User) httpSession.getAttribute("user");
        String user_id = user.getUser_id();
        List<Customer> customers = customerService.findCustomerByUserID(user_id);
        //根据customer_name重置customers(模糊查询)
        if(customer_name!=null&&customer_name!=""){
            Customer cs = new Customer();
            cs.setCustomer_name(customer_name);
            cs.setUser_id(user_id);
            customers = customerService.findCustomerByMultiCondition(cs);
        }
        //通过客户查出项目
        List<Project> projects = new ArrayList<Project>();
        for (Customer customer : customers) {
            //查出该客户下的项目并放入项目中
            projectS.setCustomer_id(customer.getCustomer_id());
            List<Project> project = projectService.findProjectByMultiCondition(projectS);
            for (Project project1 : project) {
                project1.setCustomer_name(customer.getCustomer_name());
            }
            projects.addAll(project);
        }

        mv.addObject("projects",projects);
        mv.setViewName("jsp/Administrators/project");
        mv.addObject("pro",projectS);
        mv.addObject("customer_name",customer_name);
        return mv;
    }
    //项目追踪记录
    @RequestMapping("/findProjectTrackingByProjectID.do")
    public ModelAndView findProjectTrackingByProjectID(HttpServletRequest request){
        ModelAndView mv= new ModelAndView();
        String project_id =  request.getParameter("project_id").toString();
        String project_name = projectService.findProjectByID(project_id).getProject_name();
        mv.addObject("project_id",project_id);
        mv.addObject("project_name",project_name);
        List<ProjectTracking> projectTrackings =  projectTrackingService.findProjectTrackingByProjectID(project_id);
        for(ProjectTracking projectTracking:projectTrackings){
            //添加projectName
            projectTracking.setProject_name(project_name);
        }
        mv.addObject("projectTrackings",projectTrackings);
        mv.setViewName("jsp/Administrators/projectTracking");
        return mv;
    }
    //去添加项目界面
    @RequestMapping("/toAddProject.do")
    public ModelAndView toAddProject(HttpSession httpSession){
        ModelAndView mv= new ModelAndView();
        User user = (User) httpSession.getAttribute("user");
        //查询所有客户
        List<Customer> customers = customerService.findCustomerByUserID(user.getUser_id());
        mv.addObject("customers",customers);
        mv.setViewName("jsp/Administrators/addProject");
        return mv;
    }
    //添加项目
    @RequestMapping("addProject.do")
    public String addProject(Project project,HttpSession httpSession){
        ModelAndView mv = new ModelAndView();
        String project_id = UUID.randomUUID().toString().replace("-","");
        project.setProject_id(project_id);
        project.setCreate_time(new Date());
        projectService.addProject(project);
        return "redirect:/adminiProject/findProjectByUserID.do";
    }

    //去修改项目
    @RequestMapping("toModifyProject")
    public ModelAndView toModifyProject(HttpServletRequest request,HttpSession httpSession){
        ModelAndView mv = new ModelAndView();
        //获取项目信息
        String project_id =  request.getParameter("project_id");
        Project project= projectService.findProjectByID(project_id);
        mv.addObject("project",project);
        //查询所有客户
        User user = (User) httpSession.getAttribute("user");
        List<Customer> customers = customerService.findCustomerByUserID(user.getUser_id());
        mv.addObject("customers",customers);
        mv.setViewName("jsp/Administrators/modifyProject");
        return mv;
    }
    //修改项目
    @RequestMapping("modifyCustomer.do")
    public  String modifyProject(Project project){
        projectService.modifyProject(project);
        return "redirect:/adminiProject/findProjectByUserID.do";
    }
    //去添加项目追踪页面
    @RequestMapping("toAddProjectTracking.do")
    public ModelAndView toAddProjectTracking(HttpServletRequest request){
        String project_name= request.getParameter("project_name");
        String project_id = request.getParameter("project_id");
        ModelAndView mv = new ModelAndView();
        mv.addObject("project_name",project_name);
        mv.addObject("project_id",project_id);
        mv.setViewName("jsp/Administrators/addProjectTracking");
        String s = new String("ss");
        return mv;
    }

    //添加项目追踪
    @RequestMapping("addProjectTracking.do")
    public String addProjectTracking(ProjectTracking projectTracking,HttpServletRequest request){
        String project_tracking_id = UUID.randomUUID().toString().replace("-","");
        projectTracking.setProject_tracking_id(project_tracking_id);
        projectTracking.setCreate_time(new Date());
        projectTrackingService.addProjectTracking(projectTracking);
        String project_id = projectTracking.getProject_id();
        return "redirect:/adminiProject/findProjectTrackingByProjectID.do?project_id="+project_id;
    }


}
