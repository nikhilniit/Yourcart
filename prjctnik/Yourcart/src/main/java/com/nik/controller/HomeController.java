package com.nik.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nik.dao.SignupDao;
import com.nik.model.Signup;

@Controller
public class HomeController {
	@Autowired
	SignupDao signupDao;
@RequestMapping("/")
	public String home()
	{
	System.out.println("in home() method");
	return "home";
	}
	@RequestMapping("/login")
public String login()
{
		System.out.println("in login() method");
	return "login";
}
	@RequestMapping("/logout")
	public String logout()
	{
			System.out.println("in logout() method");
		return "logout";
	}
	@RequestMapping("/signup")
	public ModelAndView signup()
	{
			System.out.println("in signup() method");
			Signup sign =new Signup();
		return new ModelAndView("signup","sign",sign);
	}
	@RequestMapping("/signupUser")
	public ModelAndView signupUser(@Valid @ModelAttribute("sign")Signup signup,BindingResult bindingResult)
	{
		    if(bindingResult.hasErrors())
		    {
		    	System.out.println("errors there");
		    	return new ModelAndView("signup");
		    }
			System.out.println("in signupUser() method");
			signupDao.signupuser(signup);
		return new ModelAndView("signup","info","successfully registered");
	}
}