package com.management.controller;

import com.management.entity.Software;
import com.management.repository.SoftwareRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping()
public class SoftwareController {

    @Autowired
    private SoftwareRepository softwareRepository;

    @RequestMapping(path = "/softwares/add", method = RequestMethod.GET)
    public String createSoftware() {
        return "add_software";
    }
    @RequestMapping(path = "/softwares/add", method = RequestMethod.POST)
    public String createSoftwares(Model model) {
        model.addAttribute("software", new Software());
        return "add_software";
    }

    @RequestMapping(path = "softwares", method = RequestMethod.POST)
    public String saveSoftware(Software software) {
        softwareRepository.save(software);
        return "redirect:/softwares";
    }

    @RequestMapping(path = "/softwares", method = RequestMethod.GET)
    public String getAllSoftwares(Model model) {
        model.addAttribute("softwares", softwareRepository.findAll());
        return "softwares";
    }

    @RequestMapping(path = "/softwares/edit/{id}", method = RequestMethod.GET)
    public String editSoftware(Model model, @PathVariable(value = "id") String id) {
        model.addAttribute("software", softwareRepository.getOne(Long.valueOf(id)));
        return "edit_software";
    }

    @RequestMapping(path = "/softwares/delete/{id}", method = RequestMethod.GET)
    public String deleteSoftware(@PathVariable(name = "id") String id) {
        softwareRepository.deleteById(Long.valueOf(id));
        return "redirect:/softwares";
    }
}
