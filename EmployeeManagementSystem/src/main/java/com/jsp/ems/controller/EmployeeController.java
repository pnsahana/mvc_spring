package com.jsp.ems.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.ems.Service.EmployeeService;
import com.jsp.ems.entity.Employee;

@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;
	
	@RequestMapping("insert")
	public ModelAndView saveEmployee(ModelAndView mav, Employee employee) {
		mav.addObject("employee", employee);
		mav.setViewName("employeeform.jsp");
		return mav ;
	}
	
	@RequestMapping(value = "saveemployee", method = RequestMethod.POST)
	public ModelAndView saveEmployeeToTheDB(@ModelAttribute Employee employee, ModelAndView mav) {
		employeeService.saveEmployees(employee);
		mav.setViewName("index.jsp");
		return mav;
	}
	
	@RequestMapping("find")
	public ModelAndView findEmployee(ModelAndView mav) {
		mav.setViewName("findById.jsp");
		return mav;
	}
	
	@RequestMapping(value = "findbyid", method = RequestMethod.POST)
	public ModelAndView displayEmployee(HttpServletRequest request, ModelAndView mav) {
		
		int id = Integer.parseInt(request.getParameter("id"));
		Employee employee = employeeService.findEmployee(id);
		
		if(employee != null) {
		mav.addObject("emp", employee);
		mav.setViewName("displayResult.jsp");
		return mav;
		} else {
			mav.addObject("msg", "Id NOT found!!!!!");
			mav.setViewName("index.jsp");
			return mav;
		}
	}
	
	@RequestMapping("update")
	public ModelAndView updateEmployee(ModelAndView mav) {
		mav.setViewName("updateById.jsp");
		return mav;
	}
	
	@RequestMapping(value = "updateById")
	public ModelAndView updateEmployeeDetails(HttpServletRequest request, ModelAndView mav) {
		int id = Integer.parseInt(request.getParameter("id"));
		
		Employee emp = employeeService.findEmployee(id);
		if(emp != null) {
			mav.addObject("employee", emp);
			mav.setViewName("updateForm.jsp");
			return mav;
		}
		else {
			mav.addObject("msg", "Id Not Found!!!!");
			mav.setViewName("index.jsp");
			return mav;
		}
	}
	
	@RequestMapping(value = "updateDetails", method = RequestMethod.POST)
	public ModelAndView saveUpdatedEmployeeDetails(@ModelAttribute Employee employee, ModelAndView mav) {
		employeeService.updateEmployee(employee);
		mav.addObject("msg", "Updated Successfully...");
		mav.setViewName("index.jsp");
		return mav;
	}
	
	@RequestMapping("delete")
	public ModelAndView deleteEmployee(ModelAndView mav) {
		mav.setViewName("deleteById.jsp");
		return mav;
	}
	
	@RequestMapping(value = "deleteById")
	public ModelAndView deleteEmployeeFromDb(HttpServletRequest request, ModelAndView mav) {
		int id = Integer.parseInt(request.getParameter("id"));
		
		Employee emp = employeeService.findEmployee(id);
		
		if(emp != null) {
			employeeService.deleteEmployee(id);
			mav.addObject("msg", "Deleted Successfully!!");
			mav.setViewName("index.jsp");
			return mav;
		} else {
			mav.addObject("msg", "Employee ID NOT found!!!!!");
			mav.setViewName("index.jsp");
			return mav;
		}
	}
}
