package com.lin.ssm.controller;

import com.lin.ssm.entity.User;
import com.lin.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("login")
	public String login(User user,HttpSession session,String yzm){
		String number = (String)session.getAttribute("kaptcha");
		//if(number.equalsIgnoreCase(yzm)){
			User u = userService.getLogin(user);
			if(u!=null){
				session.setAttribute("user", u);
				return "redirect:/main.do";
			}
		//}
		return "login";
	}
	
	
	@RequestMapping("logout")
	public String logout(HttpSession session){
		session.removeAttribute("user");
		return "redirect:/main.do";
	}
	
	
	
}
