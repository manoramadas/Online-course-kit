package com.pooja.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pooja.DAO.CartDAO;
import com.pooja.DAO.OrderDAO;
import com.pooja.DAO.ShiporderDAO;
import com.pooja.DAO.courseDAO;
import com.pooja.DAO.customerDAO;
import com.pooja.model.courseorder;
import com.pooja.model.courses;
import com.pooja.model.customerr;
import com.pooja.model.customerrCart;
import com.pooja.model.shipOrder;

@Controller
public class shipbillController {

	@Autowired
	customerDAO ud;
	@Autowired
	courseDAO prd;
	@Autowired
	HttpSession hs;
	shipOrder ship;
	@Autowired
	ShiporderDAO sd;
	@Autowired
	CartDAO cd;
	int orderId;
	int shippingid ;
	int courseid;
	courses pp;
	int quantity;
	customerrCart a;
	courseorder or;
	@Autowired
	OrderDAO od;
	String mail;
	
	List<customerrCart>object;
	@RequestMapping("/view2/{courseid}")
	public ModelAndView buynow(@ModelAttribute("p") courses p,@PathVariable("courseid") int courseid) {
		if(hs.getAttribute("mv")==null && hs.getAttribute("sm")==null){
			ModelAndView mv=new ModelAndView("forward:/viewpro/"+courseid);
			courses obj=prd.getbyid(courseid);
			
			mv.addObject("p",obj);
			mv.addObject("b4cart", "Please signup or login before buying product... ");
			   this.courseid=courseid;
		       pp=obj;
		     
		      
		       System.out.println("pooja is checking pp contains product obj or nor by product name "+pp.getCo_name());
		       System.out.println(courseid);
		      
			return mv;
			}
		else
		{
		
       ModelAndView mv=new ModelAndView("redirect:/billingpage");
       courses  obj=prd.getbyid(courseid);
       this.courseid=courseid;
		 mail=hs.getAttribute("usermail").toString();
       int pid=obj.getCo_id();
		String pname=obj.getCo_name();
		String cat=obj.getCa_name();
		double pprice=obj.getCo_price();
		double totprice=pprice;
		or=new courseorder();
		or.setEmailid(mail);
		or.setCourseid(pid);
		or.setCoursename(pname);
		or.setCategory(cat);
		or.setCourseprice(pprice);
		// or.setQuantity(qty);
		or.setTotalprice(totprice);
		od.insert(or);
		orderId=or.getOrderid();
		  System.out.println("abbey oye"+orderId); 
       //this.productid=or.getOrderid();
       pp=obj;
      // Quantity=add.getQuantitybyProductId(productid);
       System.out.println("pooja is checking pp contains product obj or nor by product name "+pp.getCo_name());
       System.out.println(courseid);
      // System.out.println("Quantity ="+Quantity);
       
		return mv;

		}
	}
	
	
	@RequestMapping("/billingpage")
	public ModelAndView buy(){

			mail=hs.getAttribute("usermail").toString();
			System.out.println(mail);
		ModelAndView mv=new ModelAndView("billingpage");
	customerr user=	ud.getbyemail(mail);
	System.out.println(user.getEmail());
	System.out.println(user.getAddress());
	
	mv.addObject("u",user);
	or=new courseorder();
	   //this.productid=or.getOrderid();
		return mv;
	}
	
	@RequestMapping("/shipping")
	public ModelAndView shipping(){
		ModelAndView mv=new ModelAndView("shipping");
		return mv;
	}
	@RequestMapping("/orderconfirm")
	public ModelAndView postshipping(@ModelAttribute ("s")shipOrder s ){
		 mail=hs.getAttribute("usermail").toString();
		//ship=new shipping();
		s.setEmail(mail);
		sd.insert(s);
		shippingid=s.getAddressid();
		ModelAndView mv=new ModelAndView("redirect:/orderconfirm2");
		return mv;
	}
	
	@RequestMapping("/orderconfirm2")
	public ModelAndView order(){
		ModelAndView mv=new ModelAndView("order");
		String mail=hs.getAttribute("usermail").toString();
		System.out.println("1.Checking from orederconfirm2 ...."+courseid);
		
		if(orderId==0){
			System.out.println("2.Checking from orederconfirm2 ...."+courseid);
		object=cd.getallcartbyuser(mail);
		mv.addObject("allcart",object);
		double d=cd.gettotalamount(mail);
		System.out.println("grandTot= "+d);
		hs.setAttribute("grandtot", d);
		mv.addObject("grandtot",d); 
		
		}
		else{
			mv.addObject("p","msg is written to make p not empty");
			//mv.addObject("o",od.getbyid(productid));
			int oid=or.getOrderid();
			mv.addObject("o",od.getbyid(orderId));
			orderId=0;
			
		}
		customerr u=ud.getbyemail(mail);
		mv.addObject("u",u);
		shipOrder uu=sd.getbyid(shippingid);
		mv.addObject("uu",uu);
		return mv;
	} 
	
	@RequestMapping("/payment")
	public ModelAndView payment(){
		
		ModelAndView mv=new ModelAndView("paydetails");
		
		return mv;
	}

	
@RequestMapping("/thankyou")
public ModelAndView thankyou(){
	
	ModelAndView mv=new ModelAndView("thanks");
	if(object!=null){
	cd.deleteallcartbymail(mail);
	}
	return mv;
}

}
