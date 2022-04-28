package com.pooja.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.pooja.DAO.courseDAO;
import com.pooja.model.courses;

@Controller
public class adminController {

	@Autowired
	courseDAO prd;
	
	@RequestMapping("/admin")
	public ModelAndView admin(){
		ModelAndView mv=new ModelAndView("admin");
		return mv;
	}
	
	@RequestMapping(value="/pro")
	public ModelAndView show3(){
		ModelAndView mv=new ModelAndView("admin2");
		return mv;
	}
	
	@RequestMapping("give")
	public String show4()
	{
		return "adminform";
	}
	
	@RequestMapping(value="/give1", method=RequestMethod.POST)
	public String show1(@Valid @ModelAttribute("p") courses p , HttpServletRequest req){
		
		prd.insert(p);
		MultipartFile file=p.getFile();
		String orfile=file.getOriginalFilename();
		String filepath=req.getSession().getServletContext().getRealPath("/resources/images/");
		String filename=filepath+"\\"+p.getCo_id()+".jpg";
		orfile=p.getMyurl();
		try{
			byte imgbyte[]=p.getFile().getBytes();
			BufferedOutputStream bos=new BufferedOutputStream(new FileOutputStream(filename));
			bos.write(imgbyte);
			bos.close();
		}
		catch(IOException e){
			e.printStackTrace();
		}
	
		return "redirect:/admi";
	}
	
	@RequestMapping(value="admi")
	public ModelAndView show2()
	{
		ModelAndView mv=new ModelAndView("admin2");
		List<courses> obj=prd.getall();
		mv.addObject("a",obj);
		return mv;
	}
	
	@RequestMapping(value="/edit/{co_id}")
	public ModelAndView show3(@PathVariable ("co_id") int co_id)
	{
		ModelAndView mv=new ModelAndView("admeditpage");
		courses p= prd.getbyid(co_id);
		mv.addObject("p", p);
		return mv;                                                       
		
	}
	@RequestMapping(value="editsave", method=RequestMethod.POST)
	public String show4(@ModelAttribute("p")courses p,HttpServletRequest req)
	{
		prd.update(p);
		//MultipartFile file=p.getFile();
		//String orfile=file.getOriginalFilename();
		String filepath=req.getSession().getServletContext().getRealPath("/resources/images/");
		String filename=filepath+"\\"+p.getCo_id()+".jpg";
		try{
			byte imgbyte[]=p.getFile().getBytes();
			BufferedOutputStream bos=new BufferedOutputStream(new FileOutputStream(filename));
			bos.write(imgbyte);
			bos.close();
		}
		catch(IOException e){
			e.printStackTrace();
		}
		return "redirect:/admi";
	}
	  @RequestMapping(value="/del/{co_id}")
	    public String delete(@PathVariable("co_id") int proid,@ModelAttribute("p") courses p){
	    	prd.delete(p);
	    	return "redirect:/admi";
	    }
	  
	  @RequestMapping("/viewpro/{co_id}")
		 public ModelAndView viewpage(@PathVariable("co_id")int co_id){
			 ModelAndView mv=new ModelAndView("showproduct");
			 
			courses obj=prd.getbyid(co_id);
			mv.addObject("p",obj);
		
			 return mv;
		 }  
	
	  @RequestMapping(value="/contact")
		public ModelAndView show5(){
			ModelAndView mv=new ModelAndView("contactus");
			return mv;
		}
	  

}
