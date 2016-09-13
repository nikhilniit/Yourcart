package com.nik.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nik.dao.ProductDao;
import com.nik.model.Product;

@Controller
public class AdminController {
	@Autowired
ProductDao productDao;
	@RequestMapping("/admin")
	public ModelAndView admin()
	{
		System.out.println("in admin method");
		return new ModelAndView("admin");
	}

	@RequestMapping("/addproduct")
	public ModelAndView addproduct()
	{
		Product product =new Product();
		System.out.println("in addproduct method");
		return new ModelAndView("addproduct","pro",product);
	}
	@RequestMapping("/addtheproduct")
	public ModelAndView addtheproduct(@ModelAttribute("pro") Product product)
	{
		System.out.println("in addtheproduct");
		productDao.addproduct(product);
		return new ModelAndView("viewproducts");
	}
}
