package com.pooja.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pooja.DAO.courseDAO;
import com.pooja.model.courses;


@Controller
public class HomeController {

	@Autowired
	courseDAO prd;
	
	
	@RequestMapping("/home")
	public ModelAndView show(){
		ModelAndView mv=new ModelAndView("landingpage");
		
		return mv;
	}
	
	@RequestMapping(value="/viewall")
	  public ModelAndView category(){
		  ModelAndView mv=new ModelAndView("admin2");
			List<courses> obj=prd.getall();
			mv.addObject("a",obj);
			return mv;
		 
	 } 
	
	 @RequestMapping(value="/viewall/{cats}")
	  public ModelAndView category(@PathVariable("cats") String cats){
		  ModelAndView mv=new ModelAndView("admin2");
			List<courses> obj=prd.getprobycat(cats);
			mv.addObject("a",obj);
			return mv;
		 
	  }
}
