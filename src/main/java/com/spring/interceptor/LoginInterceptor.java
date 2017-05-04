package com.spring.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class LoginInterceptor extends HandlerInterceptorAdapter {
	
	public boolean preHendler(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		try{
			if(request.getSession().getAttribute("password") == null){
				response.sendRedirect("/login");
				System.out.println("실패");
				return false;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		System.out.println("성공");
		return true;
	}

// 
//    @Override
//    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
//        super.postHandle(request, response, handler, modelAndView);
//    }
// 
//    @Override
//    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
//        super.afterCompletion(request, response, handler, ex);
//    }
// 
//    @Override
//    public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//        super.afterConcurrentHandlingStarted(request, response, handler);
//    }
//
//
//출처: http://hellogk.tistory.com/90 [IT Code Storage]
//	
	
}
