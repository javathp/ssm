package com.zking.ssm.controller;

import com.zking.ssm.model.House;
import com.zking.ssm.service.IHouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/house")
public class houseController {

    @Autowired
    private IHouseService houseService;

    @ModelAttribute
    public void init(Model model){
        House house=new House();
        model.addAttribute("h",house);
    }
    @RequestMapping("/toAdd")
    public String toAdd(Model model){
        return "/house-add";
    }

    @RequestMapping("/toList")
    public String toList(House house){
        return "/house-list";
    }

    @RequestMapping("/add")
    public String add(House house){
        houseService.add(house);
        return "redirect:toList";
    }

    @RequestMapping("/HouestoList")
    @ResponseBody
    public List<House> HousetoList(House house){
        List<House> houses=houseService.list(house);
        return houses;
    }

    @RequestMapping("/toDel")
    public String del(House house){
        houseService.del(house);
        return "redirect:toList";
    }

    @RequestMapping("/toLoad")
    public ModelAndView toLoad(Model model, HttpServletRequest req, ModelAndView vm, House house){
        House load = houseService.load(house);
        vm.addObject("house",load);
        vm.setViewName("/house-load");
        return vm;
    }
    @RequestMapping("/edit")
    public String editHouse(House house){
        houseService.update(house);
        return "redirect:toList";
    }

    @RequestMapping("/checkName")
    @ResponseBody
    public List<House> checkName(House house){
        return houseService.checkName(house);
    }

}
