package com.zking.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/cost")
public class costController {

    @RequestMapping("/toAdd")
    public String toAdd(Model model){
        boolean bk = model.containsAttribute("bk");
        System.out.println(bk);
        return "/cost-add";
    }

    @RequestMapping("/toList")
    public String toList(Model model){
        boolean bk = model.containsAttribute("bk");
        System.out.println(bk);
        return "/cost-list";
    }

    @RequestMapping("/toLoad")
    public ModelAndView toLoad(Model model, HttpServletRequest req, ModelAndView vm){
        boolean bk = model.containsAttribute("bk");
        vm.setViewName("/cost-fee-list");
        return vm;
    }

}
