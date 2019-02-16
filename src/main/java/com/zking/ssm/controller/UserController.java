package com.zking.ssm.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/user")
public class UserController {

	// http://SERVER:PORT/PROJECT/user/login.do
	@RequestMapping("/login.do")
	public String showLogin() {
		return "login";
	}
	
	// http://SERVER:PORT/PROJECT/user/handleLogin.do
	@RequestMapping(method=RequestMethod.POST,
			value="/handleLogin.do")
	public ModelAndView handleLogin(
			String username, 
			String password) {
		// 声明登录结果
		String result;
		
		// 判断用户名
		if ("tomcat".equals(username)) {
			// 用户名正确，则还需判断密码
			if ("123456".equals(password)) {
				// 密码也正确，则登录成功
				result = "登录成功！";
			} else {
				// 密码错误，登录失败
				result = "密码错误，登录失败！";
			}
		} else {
			// 用户名不存在，登录失败
			result = "用户名不存在，登录失败！";
		}
		
		// 将result封装，以准备转发到jsp
		String viewName = "login_result";
		Map<String, Object> model
			= new HashMap<String, Object>();
		model.put("result", result);
		ModelAndView mav 
			= new ModelAndView(viewName, model);
		
		// 返回，执行转发
		return mav;
	}
	
}
