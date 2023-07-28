package com.company.app.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class CheckLoginXdmInterception extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		Object type = 2;
		if (request.getSession().getAttribute("sessionType") == type) {
			// by pass
		} else {
			response.sendRedirect("/loginXdmForm");
            return false;
		}
		return super.preHandle(request, response, handler);
	}

}
