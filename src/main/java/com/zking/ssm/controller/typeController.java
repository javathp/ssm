package com.zking.ssm.controller;

import com.zking.ssm.model.Type;
import com.zking.ssm.service.ITypeService;
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
@RequestMapping("/type")
public class typeController {
    @Autowired
    private ITypeService typeService;
    @ModelAttribute
    public void init(Model model){
        Type type=new Type();
        model.addAttribute("t",type);
    }
    @RequestMapping("/toAdd")
    public String toAdd(Model model){
        return "/type-add";
    }

    @RequestMapping("/toList")
    public String toList(Model model){
        return "/type-list";
    }

    @RequestMapping("/add")
    public String add(Type type){
        typeService.add(type);
        return "redirect:toList";
    }

    @RequestMapping("/TypetoList")
    @ResponseBody
    public List<Type> BuildingtoList(Type type){
        List<Type> types=typeService.list(type);
        return types;
    }

    @RequestMapping("/toDel")
    public String del(Type type){
        typeService.del(type);
        return "redirect:toList";
    }

    @RequestMapping("/toLoad")
    public ModelAndView toLoad(Model model, HttpServletRequest req, ModelAndView vm, Type type){
        Type load = typeService.load(type);
        vm.addObject("type",load);
        vm.setViewName("/type-load");
        return vm;
    }
    @RequestMapping("/edit")
    public String editBuilding(Type type){
        typeService.update(type);
        return "redirect:toList";
    }

    @RequestMapping("/checkName")
    @ResponseBody
    public List<Type> checkName(Type type){
        return typeService.checkName(type);
    }
}
