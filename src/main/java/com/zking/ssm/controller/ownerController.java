package com.zking.ssm.controller;

import com.zking.ssm.model.Owenr;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/owner")
public class ownerController {
    @RequestMapping("/toAdd")
    public String toAdd(Model model){
        return "/owner-add";
    }

    @RequestMapping("/toList")
    public String toList(Model model){
        return "/owner-list";
    }

    @RequestMapping("/toLoad")
    public ModelAndView toLoad(Model model, HttpServletRequest req, ModelAndView vm){
        vm.setViewName("/owner-edit");
        return vm;
    }


}
