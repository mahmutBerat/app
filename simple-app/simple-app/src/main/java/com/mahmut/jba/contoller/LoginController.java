package com.mahmut.jba.contoller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	@RequestMapping("/login")
	public String login(){
		return "login";
	}
	
	@RequestMapping(value = "/jsp/403", method = RequestMethod.GET)
	public ModelAndView accessDenied(Principal user){
		ModelAndView model = new ModelAndView();
		
		if(user != null){
			model.addObject("msg", "Hi " + user.getName()+ " you have not authorized for this page");
		}else
			model.addObject("msg"+"You do not have permission to access this page!");
		
		model.setViewName("403");
		return model;
	}
}
