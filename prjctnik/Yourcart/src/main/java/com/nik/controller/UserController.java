package com.nik.controller;

import java.io.IOException;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nik.dao.ProductDao;
import com.nik.model.Product;

@Controller
public class UserController {

	@Autowired
	ProductDao productDao;
	@RequestMapping("/user")
	public ModelAndView userhome() throws JsonGenerationException, JsonMappingException, IOException
	{	
			List<Product> list=productDao.viewProducts();
			
			ObjectMapper objectMapper=new ObjectMapper();
			String jsondata=objectMapper.writeValueAsString(list);
			System.out.println("list of products are:"+jsondata);
			return new ModelAndView("userhome","json",jsondata);
		
	}
	@RequestMapping("/viewDetails")
	public ModelAndView viewDetails(@RequestParam("id") int id)
	{
		Product product=productDao.getProductByID(id);
	      return new ModelAndView("viewDetails","data",product);
	}
	
}
