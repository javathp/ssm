package com.zking.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/shouju")
public class shoujuController {
    @RequestMapping("/toList")
    public String toList(Model model){
        boolean bk = model.containsAttribute("bk");
        System.out.println(bk);
        return "/shouju";
    }


}
