package com.cafe24.pjmall.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.cafe24.pjmall.vo.UserVo;


public class AuthInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		if( handler instanceof HandlerMethod == false) {
			return true;
		}
		
		HandlerMethod handlerMethod = (HandlerMethod)handler;
		AuthUser auth = handlerMethod.getMethodAnnotation( AuthUser.class );
		if(auth == null ) {
			return true;
		}
		
		//6. @Auth가 (class또는 method에)붙어 있기 때문에
		//   인증 여부 체크
		HttpSession session = request.getSession();
		
		if(session == null) { //인증이 안 되어 있음
			response.sendRedirect(request.getContextPath() + "/user/login" );
			return false;
		}

		UserVo authUser = (UserVo)session.getAttribute("authUser");
		if(authUser == null) { //인증이 안 되어 있음
			response.sendRedirect(request.getContextPath() + "/user/login" );
			return false;
		}	
		return true;
	}

}
