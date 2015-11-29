package com.model;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.remoteTiger.HybernateDAO.hibernate.ServiceLayer;

import org.springframework.ui.ModelMap;

@Controller
public class ControlForm { ServiceLayer sl=new ServiceLayer();

   @RequestMapping(value = "/", method = RequestMethod.GET)
   public ModelAndView Coffee() {
      return new ModelAndView("CoffeeSubmitForm", "command", new Coffee());
   }
   
   @RequestMapping(value = "/coffeeShow", method = RequestMethod.POST)
   public String coffeeShow(@ModelAttribute("SpringWeb")Coffee coffee, 
   ModelMap model) {
      model.addAttribute("name", coffee.getName());
      model.addAttribute("country", coffee.getCountry());
      model.addAttribute("PRODUCT_NO", coffee.getPRODUCT_NO());
      model.addAttribute("quantity", coffee.getQuantity());
      
      ServiceLayer sl=new ServiceLayer();
      sl.add(coffee.getName(), coffee.getCountry(), coffee.getQuantity(), coffee.getPRODUCT_NO());
      
      
      return "coffeeShow";
   }
   

   @RequestMapping(value = "/index", method = RequestMethod.GET)
   public void index(HttpServletRequest req) {
	   
	   int d=Integer.parseInt(req.getParameter("id"));
	    sl.delete(d);
  
   
   }




}