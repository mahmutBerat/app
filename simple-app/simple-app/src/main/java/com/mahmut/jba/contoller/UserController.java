package com.mahmut.jba.contoller;

import java.security.Principal;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mahmut.jba.entity.Blog;
import com.mahmut.jba.entity.User;
import com.mahmut.jba.service.BlogService;
import com.mahmut.jba.service.UserService;


@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private BlogService blogService;
	
	@ModelAttribute("user")
	public User constructUser(){
		return new User();
	}

	@ModelAttribute("blog")
	public Blog constructBlog(){
		return new Blog();
	}
	
//	@RequestMapping(value="/users", method = RequestMethod.GET)
//	public String users(Model model){
//		model.addAttribute("users", userService.findAll() );
//		
//		return "users";
//	}
//	
//	@RequestMapping(value="/users/{id}", method= RequestMethod.GET)
//	public String detail(Model model, @PathVariable int id )
//	{
//		model.addAttribute("user", userService.findOneWithBlogs(id));
//		return "user-detail";
//	}
	
//	@RequestMapping(value="/user-register")
//	public String showRegister(Model model)
//	{
//		return "user-register";
//	}
//	
//	@RequestMapping(value="/user-register", method = RequestMethod.POST)
//	public String doRegister(@Valid @ModelAttribute("user") User user, BindingResult result)
//	{
//		if(result.hasErrors())
//		{
//			return "user-register";
//		}
//		userService.save(user);
//		return "redirect:/user-register?success=true";
//	}
	
	@RequestMapping("/account")
	public String account(Model model, Principal principal){
		String name = principal.getName();
		model.addAttribute("user", userService.findOneWithBlogs(name));
		return "account";
	}
	
	@RequestMapping(value="/account", method = RequestMethod.POST)
	public String doAddBlog(Model model, @Valid @ModelAttribute("blog") Blog blog, BindingResult result, Principal principal){
		if(result.hasErrors())
		{
			return account(model, principal);
		}
		String name = principal.getName();
		blogService.save(blog, name);
		return "redirect:/account.html";
	}
	
	@RequestMapping(value="/blog/remove/{id}")
	public String removeBlog(@PathVariable int id)
	{
		Blog blog = blogService.findOne(id);
		blogService.delete(blog);
		return "redirect:/account.html";	
	}
	
//	@RequestMapping(value="/users/remove/{id}")
//	public String removeUser(@PathVariable int id)
//	{
//		userService.delete(id);
//		return "redirect:/users.html";	
//	}
}
