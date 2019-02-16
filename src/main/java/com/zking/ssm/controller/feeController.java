package com.zking.ssm.controller;

import com.zking.ssm.model.Cost;
import com.zking.ssm.service.ICostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/fee")
public class feeController {

    @Autowired
    private ICostService costService;

    @ModelAttribute
    public void init(Model model){
        Cost cost=new Cost();
        model.addAttribute("c",cost);
    }
    @RequestMapping("/toAdd")
    public String toAdd(Model model){
        return "/fee-add";
    }

    @RequestMapping("/toList")
    public String toList(Model model){
        return "/fee-list";
    }

    @RequestMapping("/add")
    public String add(Cost cost){
        costService.add(cost);
        return "redirect:toList";
    }

    @RequestMapping("/CosttoList")
    @ResponseBody
    public List<Cost> BuildingtoList(Cost cost){
        List<Cost> costs=costService.list(cost);
        return costs;
    }

    @RequestMapping("/toDel")
    public String del(Cost cost){
        costService.del(cost);
        return "redirect:toList";
    }

    @RequestMapping("/toLoad")
    public ModelAndView toLoad(Model model, HttpServletRequest req, ModelAndView vm, Cost cost){
        Cost load = costService.load(cost);
        vm.addObject("cost",load);
        vm.setViewName("/fee-load");
        return vm;
    }
    @RequestMapping("/edit")
    public String editBuilding(Cost cost){
        costService.update(cost);
        return "redirect:toList";
    }

    @RequestMapping("/checkName")
    @ResponseBody
    public List<Cost> checkName(Cost cost){
        return costService.checkName(cost);
    }
}
