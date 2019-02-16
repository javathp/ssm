package com.zking.ssm.controller;

import com.zking.ssm.model.Fee;
import com.zking.ssm.model.File;
import com.zking.ssm.model.Owenr;
import com.zking.ssm.service.IFeeService;
import com.zking.ssm.service.IFileService;
import com.zking.ssm.service.IOwenrService;
import com.zking.ssm.util.PageBean;
import com.zking.ssm.vo.OwenrVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/room")
public class roomController {

    @Autowired
    private IOwenrService OwenrService;
    @Autowired
    private IFileService fileService;
    @Autowired
    private IFeeService feeService;

    @RequestMapping("/toAdd")
    public String toAdd(Model model){
        return "/room-add";
    }

    @RequestMapping("/toList")
    public String toList(Model model){
        return "/room-list";
    }

    @RequestMapping("/add")
    public String add(Owenr owenr,@RequestParam(value="img",required=false) MultipartFile img)throws Exception{
        owenr.setoId(UUID.randomUUID().toString().replace("-", ""));
        owenr.setoState(1);
        int n=OwenrService.add(owenr);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        if(n>0) {
            Fee fee = new Fee();
            fee.setoId(owenr.getoId());
            fee.setcId(owenr.getcId());
            fee.setFeeTime(df.format(new Date()));
            fee.setFeeReceipt("傻逼");
            feeService.addFee(fee);
            if (img.getOriginalFilename() != null && !"".equals(img.getOriginalFilename())) {
                File file = new File();
                file.setoId(owenr.getoId());
                String name = UUID.randomUUID().toString().replace("-", "");
                String url = "F:\\test\\uploads\\" + name;
                file.setfName(name);
                file.setfType(img.getContentType());
                file.setfUrl(url);
                file.setfTime(df.format(new Date()));
                fileService.add(file);
                //将文件上传到文件服务器
                java.io.File targetFile = new java.io.File(url);
                img.transferTo(targetFile);
            }
        }
        return "redirect:listOwenr";
    }

//    @RequestMapping("/listOwenr")
//    @ResponseBody
//    public List<OwenrVo> list(OwenrVo owenrVo, HttpServletRequest request){
//        PageBean pageBean = new PageBean();
//        pageBean.setPage(1);
//        pageBean.setRows(4);
//        pageBean.setPagination(true);
//        pageBean.setRequest(request);
//        request.setAttribute("pageBean",pageBean);
//        List<OwenrVo> owenrVos = OwenrService.list(owenrVo,pageBean);
//        return owenrVos;
//    }

    @RequestMapping("/listOwenr")
    public ModelAndView listBook(OwenrVo owenrVo, HttpServletRequest request,ModelAndView vm){
        PageBean pageBean = new PageBean();
        pageBean.setPage(1);
        pageBean.setRows(4);
        pageBean.setPagination(true);
        pageBean.setRequest(request);
        List<OwenrVo> owenrVos = OwenrService.list(owenrVo,pageBean);
        vm.addObject("pageBean", pageBean);
        vm.addObject("owenrVos",owenrVos);
        vm.setViewName("/room-list");
        return vm;
    }

    @RequestMapping("/del")
    public String updateState(Owenr owenr){
        OwenrService.updateState(owenr);
        return "redirect:listOwenr";
    }


}
