package com.management.controller;

import com.management.entity.Accounting;
import com.management.repository.AccountingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping
public class AccountingController {

    @Autowired
    private AccountingRepository accountingRepository;

    @RequestMapping(path = "/accountings/add", method = RequestMethod.GET)
    public String createAccounting() {
        return "add_accounting";
    }

    @RequestMapping(path = "/accountings/add", method = RequestMethod.POST)
    public String createAccountings(Model model) {
        model.addAttribute("accounting", new Accounting());
        return "add_accounting";
    }

    @RequestMapping(path = "accountings", method = RequestMethod.POST)
    public String saveAccounting(Accounting accounting) {
        accountingRepository.save(accounting);
        return "redirect:/accountings";
    }

    @RequestMapping(path = "/accountings", method = RequestMethod.GET)
    public String getAllAccountings(Model model) {
        model.addAttribute("accountings", accountingRepository.findAll());
        return "accountings";
    }

    @RequestMapping(path = "/accountings/edit/{id}", method = RequestMethod.GET)
    public String editAccounting(Model model, @PathVariable(value = "id") String id) {
        model.addAttribute("accounting", accountingRepository.getOne(Long.valueOf(id)));
        return "edit_accounting";
    }

    @RequestMapping(path = "/accountings/delete/{id}", method = RequestMethod.GET)
    public String deleteAccounting(@PathVariable(name = "id") String id) {
        accountingRepository.deleteById(Long.valueOf(id));
        return "redirect:/accountings";
    }
}
