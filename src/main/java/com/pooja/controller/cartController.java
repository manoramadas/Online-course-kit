package com.pooja.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pooja.DAO.CartDAO;
import com.pooja.DAO.courseDAO;
import com.pooja.DAO.customerDAO;
import com.pooja.model.courses;
import com.pooja.model.customerr;
import com.pooja.model.customerrCart;

@Controller
public class cartController {

	@Autowired
	CartDAO cd;
	@Autowired
	customerDAO ud;
	@Autowired
	courseDAO prd;
	@Autowired
	HttpSession hs;
	courses p;
	customerr u;
	
	@RequestMapping(value = "/myCart/add/{courseid}" ,method=RequestMethod.POST)
	public ModelAndView getCart(@PathVariable("courseid") int courseid) {
	
		if(hs.getAttribute("mv")==null && hs.getAttribute("sm")==null ){
			ModelAndView mv=new ModelAndView("forward:/viewpro/"+courseid);
			courses obj=prd.getbyid(courseid);
			mv.addObject("p",obj);
			mv.addObject("b4cart", "Please signup or login before adding item to the cart... ");
			return mv;
			}
	
		else{
			String mail=hs.getAttribute("usermail").toString();
			System.out.println(mail);
			if(cd.issameproduct(mail, courseid)==true){
				System.out.println("same product for same user testing...");
				ModelAndView mv=new ModelAndView("forward:/viewpro/"+courseid);
				mv.addObject("msg", "products are already in the cart , please continue shopping or checkout!!!");
				return mv;
			}
			else
			{
				p = prd.getbyid(courseid);

			customerrCart c=new customerrCart();
				c.setCoursename(p.getCo_name()); 
				System.out.println(c.getCoursename());
				c.setCourseprice(p.getCo_price());  
				
				c.setCourseid(p.getCo_id());			 
				c.setTotalprice(p.getCo_price());
				System.out.println(" price= "+p.getCo_price()+" total= "+c.getTotalprice());
				
			
				c.setCartemail(mail);
				cd.addcart(c);
				System.out.println("data successfully added...");

				ModelAndView mv=new ModelAndView("forward:/cart");
				mv.addObject("mssg",  "product is added succesfully in the cart!!");
				return mv;
			}
			}
			 
		}
	
	@RequestMapping("/cart")
	public ModelAndView showCart(){
		ModelAndView mv=new ModelAndView("cart");
		String mail=hs.getAttribute("usermail").toString();
		List<customerrCart>obj=cd.getallcartbyuser(mail);
		mv.addObject("allcart",obj);
		return mv;
	}
	
	@RequestMapping("/remove/{cid}")
	public String removeCart(@PathVariable("cid")int cid){
		customerrCart a=cd.getcartbyid(cid);
		System.out.println(a.getCartid());
		 		    	cd.deletecart(a);
		    	return "redirect:/cart";
		    }
	
	@RequestMapping("/grandtotal")
	public ModelAndView myCart(@PathVariable("mail") String mail) {
		ModelAndView mv=new ModelAndView("cart");
		mv.addObject("cart", new customerrCart());
		// get thelogged in userid
		
	    int cartsize =cd.getallcartbyuser(mail).size();
		
		if (cartsize==0) {
			
			mv.addObject("errorMessage",  "your cart is empty");
			
		} else {
			mv.addObject("cartlist", this.cd.getallcartbyuser(mail));
			mv.addObject("totalAmount", cd.gettotalamount(mail)); 
			mv.addObject("displayCart", "true");
			System.out.println(cd.gettotalamount(mail));
		}
		return mv;
	}


}
