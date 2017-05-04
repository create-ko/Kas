package com.spring.kas;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

@Controller
public class LoginController{

	//Login View
	@RequestMapping(value="/login")
	public ModelAndView home(Locale locale, Model model){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
	
	//Login Interceptor Method
	@RequestMapping(value="/logincheck", method= RequestMethod.POST)
	public String loginCheck(HttpServletRequest request, HttpServletResponse response){
		
		String url="";
		if("1234".equals(request.getParameter("form-password"))){
			request.getSession().setAttribute("password", "1234");
			url = "redirect:/main";
		}else{
			url = "redirect:/login";
		}
		return url;
	}
	
}
