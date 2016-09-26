package com.nik.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
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
	public ModelAndView addtheproduct(@RequestParam("file") MultipartFile file,@ModelAttribute("pro") Product product) throws IllegalStateException, IOException
	{
		System.out.println("in addtheproduct");
		productDao.addproduct(product);
                 MultipartFile f= file;
                 System.out.println("file:"+f);
                 Path path=Paths.get("C://prjctnik//Yourcart//src//main//webapp//resources//images//"+product.getProductId()+".jpg");
                 if(f!=null)
                 {
                	 f.transferTo(new File(path.toString()));
                	 System.out.println("Image stored");
                 }
		return new ModelAndView("viewproduct");
	}
	
	@RequestMapping("/viewproduct")
	public ModelAndView viewproduct() throws JsonGenerationException, JsonMappingException, IOException
	{
		List<Product> list=productDao.viewProducts();
		
		ObjectMapper objectMapper=new ObjectMapper();
		String jsondata=objectMapper.writeValueAsString(list);
		System.out.println("list of products are:"+jsondata);
		return new ModelAndView("viewproduct","json",jsondata);
	}
	@RequestMapping("/deleteProduct")
	public String deleteProduct(@RequestParam("id") int id)
	{
		  System.out.println("id:"+id);
		  productDao.deleteProductById(id);
		return "redirect:/viewproduct";
	}
	@RequestMapping("/editProduct")
	public ModelAndView editProduct(@RequestParam("id")int id) throws JsonGenerationException, JsonMappingException, IOException
	{
		System.out.println("id:"+id);
		Product product=productDao.getProductByID(id);
		
		return new ModelAndView("editProduct","data",product);
	}
	@RequestMapping("/editedProduct")
	public String editedProduct(@RequestParam("productId")int id,@RequestParam("productName")String name,@RequestParam("productBrand")String brand,@RequestParam("productPrice")float price) 
	{
		System.out.println("id:"+id);
		Product product=productDao.getProductByID(id);
		product.setBrand(brand);
		product.setName(name);
		product.setPrice(price);
		productDao.addproduct(product);
		return "redirect:/viewproduct";
	}
	
	
}
