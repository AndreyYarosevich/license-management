package com.management.controller;


import com.management.entity.Employee;
import com.management.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping()
public class EmployeeController {

    @Autowired
    private EmployeeRepository employeeRepository;

    @RequestMapping(path = "/employees/add", method = RequestMethod.GET)
    public String createEmployee(Model model) {
        model.addAttribute("employee", new Employee());
        return "add_employee";
    }

    @RequestMapping(path = "/employees/add", method = RequestMethod.POST)
    public String createEmployees(Model model) {
        model.addAttribute("employee", new Employee());
        return "add_employee";
    }

    @RequestMapping(path = "employees", method = RequestMethod.POST)
    public String saveEmployee(Employee employee) {
        employeeRepository.save(employee);
        return "redirect:/employees";
    }

    @RequestMapping(path = "/employees", method = RequestMethod.GET)
    public String getAllEmployees(Model model) {
        model.addAttribute("employees", employeeRepository.findAll());
        return "employees";
    }

    @RequestMapping(path = "/employees/edit/{id}", method = RequestMethod.GET)
    public String editEmployee(Model model, @PathVariable(value = "id") String id) {
        model.addAttribute("employee", employeeRepository.getOne(Long.valueOf(id)));
        return "edit_employee";
    }

    @RequestMapping(path = "/employees/delete/{id}", method = RequestMethod.GET)
    public String deleteEmployee(@PathVariable(name = "id") String id) {
        employeeRepository.deleteById(Long.valueOf(id));
        return "redirect:/employees";
    }
}
