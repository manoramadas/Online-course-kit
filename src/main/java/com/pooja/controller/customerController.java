package com.pooja.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pooja.DAO.customerDAO;
import com.pooja.model.customerr;


@Controller
public class customerController {

	@Autowired
	customerDAO ud;
	@Autowired
	HttpSession hs;
	
	@RequestMapping("/register")
	public String showRegister(){
		hs.setAttribute("su", "Please check your shipping address!!");
		return "register";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView showRegister2(@ModelAttribute("u")customerr u, BindingResult bindingResult){
		ModelAndView mv=new ModelAndView("landingpage");
		System.out.println(u.getPassword());
		if(bindingResult.hasErrors()){
			hs.setAttribute("er", "please enter details properly!!");
			ModelAndView mv1=new ModelAndView("register");
			return mv1;
		}
		else{
		//if(u.getCpassword().equals(u.getPassword())){
			ud.insert(u);
			System.out.println(" Manno");
			
			hs.setAttribute("mv", "Hi "+u.getName()+"! welcome to Online CourseKit Store!");
			hs.setAttribute("usermail", u.getEmail());
			return mv;
		}
	}
	
	@RequestMapping("/login1")
	public ModelAndView showLogin(){
		
		ModelAndView mv=new ModelAndView("login");
		return mv;
	}
	@RequestMapping(value="/login2", method=RequestMethod.POST)
	public ModelAndView showdata(@RequestParam("email")String email, @RequestParam("password") String password){
		
		if(ud.isValid(email, password)==true){
			customerr u=ud.getbyemail(email);
			if(u.getRole().equals("admin")){
				ModelAndView mv=new ModelAndView("admin");
				hs.setAttribute("sc", "hello admin!!");
				hs.setAttribute("usermail", u.getEmail());
				return mv;
			}
			else{
				ModelAndView mv=new ModelAndView("landingpage");
				hs.setAttribute("sm","welcome"+" "+u.getName()+"!!");
				hs.setAttribute("usermail",u.getEmail());
				return mv;
			}
		}
		else{
			ModelAndView mv=new ModelAndView("landingpage");
			hs.setAttribute("error", "Sorry Invalid Credentials!!! You must register if you are a new user!!");
			
			return mv;
		}
	}

	@RequestMapping("/logout")
	public ModelAndView logout(){
		hs.invalidate();
		ModelAndView mv=new ModelAndView("landingpage");
		return mv;
	}
}
