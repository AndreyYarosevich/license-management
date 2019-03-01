package com.management.controller;

import com.management.entity.Department;
import com.management.repository.DepartmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping()
public class DepartmentController {

    @Autowired
    private DepartmentRepository departmentRepository;

    @RequestMapping(path = "/departments/add", method = RequestMethod.GET)
    public String createDepartment() {
        return "add_department";
    }

    @RequestMapping(path = "/departments/add", method = RequestMethod.POST)
    public String createDepartments(Model model) {
        model.addAttribute("department", new Department());
        return "add_department";
    }

    @RequestMapping(path = "departments", method = RequestMethod.POST)
    public String saveDepartment(Department department) {
        departmentRepository.save(department);
        return "redirect:/departments";
    }

    @RequestMapping(path = "/departments", method = RequestMethod.GET)
    public String getAllDepartments(Model model) {
        model.addAttribute("departments", departmentRepository.findAll());
        return "departments";
    }

    @RequestMapping(path = "/departments/edit/{id}", method = RequestMethod.GET)
    public String editDepartment(Model model, @PathVariable(value = "id") String id) {
        model.addAttribute("department", departmentRepository.getOne(Long.valueOf(id)));
        return "edit_department";
    }

    @RequestMapping(path = "/departments/delete/{id}", method = RequestMethod.GET)
    public String deleteDepartment(@PathVariable(name = "id") String id) {
        departmentRepository.deleteById(Long.valueOf(id));
        return "redirect:/departments";
    }
}
