package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.backendProject.dao.CategoryDAO;
import com.niit.backendProject.dao.ProdDAO;
import com.niit.backendProject.dao.UserDao;
import com.niit.backendProject.model.Category;
import com.niit.backendProject.model.Product;
import com.niit.backendProject.model.User;




@Controller

public class HomeController {
	@Autowired
	UserDao userDao;
	@Autowired
	ProdDAO prodDAO;
	@Autowired
	CategoryDAO categoryDAO;
	
	

	@RequestMapping(value={"/","Home"})
	public String goHome(){
		return "Home";
		
	}
	@RequestMapping("/Login")
	public String Log(){
		return "Login";
	}
	

@RequestMapping("/logg")
public String lon(@RequestParam("email")String x,@RequestParam("pwd")String y){
	if(x.equals("Aashish") && y.equals("716"))
	{
		return "logg";	
	}
	else
	{
		return "Home";
	}
	
}
@RequestMapping("/Signup")
public String signup(Model model)
{ 
	model.addAttribute("user",new User());
	
	model.addAttribute("userList",userDao.getUser());
	
	return "Signup";
	
}
@RequestMapping("/addUser")
public String addUser(@ModelAttribute("user") User u,Model model)
{ 
	if(userDao.addUser(u))
	{
	model.addAttribute("msg","successsfully register");
	}
	else
	{
		model.addAttribute("msg","not successsfully register");
	}
	return "Signup";
}
	
@RequestMapping("/ProductDetail")
public String product(Model model)
{ 
	model.addAttribute("product",new Product());
	
	return "ProductDetail";
}
@RequestMapping("/addProduct")
public String addProduct(@ModelAttribute("product")Product p,Model model){
	if(prodDAO.addProduct(p))
	{
	model.addAttribute("msg","Add Product");
	}
	else
	{
		model.addAttribute("msg","not successsfully register");
	}
	return "ProductDetail";
}
@RequestMapping("/CategoryDetail")
public String category(Model model)
{ 
	model.addAttribute("category",new Category());
	
	return "CategoryDetail";
}
@RequestMapping("/addCategory")
public String addCategory(@ModelAttribute("category")Category c,Model model){
	if(categoryDAO.addCategory(c))
	{
	model.addAttribute("msg","Add Catgory");
	}
	else
	{
		model.addAttribute("msg","not successsfully register");
	}
	
	return "CategoryDetail";
}
}

