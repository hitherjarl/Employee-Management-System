package com.javainuse.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.javainuse.data.EmployeeRepository;
import com.javainuse.model.Employee;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeRepository employeeData;
	
	
	//Mapping to the index page for general directories and an introductory page
	@RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
	public String index() {

		return "index";

	}

	// Mapping to receive data from the server regarding saving the entered employee data
	@RequestMapping(value = "/addNewEmployee.html", method = RequestMethod.POST)
	public String newEmployee(Employee employee) {

		employeeData.save(employee);
		//employeeData.delete(employee);
		return ("redirect:/listEmployees.html");

	}
	
	@RequestMapping(value = "/deleteEmployee.html", method = RequestMethod.POST)
	public String updateEmployee(Employee employee) {

		long value = employee.getId();

		employeeData.delete(value);

		return ("redirect:/listEmployees.html");

	}
	
	@RequestMapping(value = "/deleteEmployee.html", method = RequestMethod.GET)
	public ModelAndView deleteEmployee() {

		Employee emp = new Employee();
		
		
		return new ModelAndView("removeEmployee", "form", emp);

	}

	@RequestMapping(value = "/addNewEmployee.html", method = RequestMethod.GET)
	public ModelAndView addNewEmployee() {

		Employee emp = new Employee();
		return new ModelAndView("newEmployee", "form", emp);

	}
	
	@RequestMapping(value  = "/employeeDetail/{id}", method = RequestMethod.GET)
	public ModelAndView empdetails(@PathVariable long id, Model model) {
		Employee employeeInfo = employeeData.findOne(id);
		if( employeeData.findOne(id)  == null) {
			//String message = "The user ID entered does not return an entry in the database";
			//model.addAttribute("message",message);  
			System.out.println(id);
			
		}
		//
		//return new ModelAndView("employeeInfo");
		return new ModelAndView("employeeInfo", "employees", employeeInfo);
		
	}

	@RequestMapping(value = "/listEmployees.html", method = RequestMethod.GET)
	public ModelAndView employees() {
		List<Employee> allEmployees = employeeData.findAll();
		
		return new ModelAndView("allEmployees", "employees", allEmployees);

	}

}
