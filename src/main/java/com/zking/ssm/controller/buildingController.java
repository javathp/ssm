package com.zking.ssm.controller;

import com.zking.ssm.model.Building;
import com.zking.ssm.model.F;
import com.zking.ssm.model.House;
import com.zking.ssm.service.IBuildingService;
import com.zking.ssm.service.IFile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/building")
public class buildingController {

    @Autowired
    private IBuildingService buildingService;

    @Autowired
    private IFile ifile;

    @ModelAttribute
    public void init(Model model){
        Building building=new Building();
        model.addAttribute("b",building);
    }
    @RequestMapping("/toAdd")
    public String toAdd(Model model){
        return "/building-add";
    }

    @RequestMapping("/toList")
    public String toList(Model model){
        return "/building-list";
    }

    @RequestMapping("/add")
    public String add(Building building){
        buildingService.add(building);
        return "redirect:toList";
    }

    @RequestMapping("/BuildingtoList")
    @ResponseBody
    public List<Building> BuildingtoList(Building building){
        List<Building> buildings=buildingService.list(building);
        return buildings;
    }

    @RequestMapping("/toDel")
    public String del(Building building){
        buildingService.del(building);
        return "redirect:toList";
    }

    @RequestMapping("/toLoad")
    public ModelAndView toLoad(Model model, HttpServletRequest req, ModelAndView vm, Building building){
        Building load = buildingService.load(building);
        vm.addObject("building",load);
        vm.setViewName("/building-load");
        return vm;
    }
    @RequestMapping("/edit")
    public String editBuilding(Building building){
        buildingService.update(building);
        return "redirect:toList";
    }

    @RequestMapping("/checkName")
    @ResponseBody
    public List<Building> checkName(Building building){
        return buildingService.checkName(building);
    }

    @RequestMapping("/F")
    @ResponseBody
    public List<F> checkName(){
        List<F> list = new ArrayList<>();
        list.add(new F("衬衣", 10));
        list.add(new F("短袖", 20));
        list.add(new F("大衣", 30));
        return ifile.listF();
    }
}
