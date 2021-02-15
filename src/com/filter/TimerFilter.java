package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class TimerFilter implements Filter{

	private FilterConfig config;
	
	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		long before=System.currentTimeMillis();
		
		chain.doFilter(request, response);		//filter에 걸려있는 데이터를 push하는 코딩
		
		long after=System.currentTimeMillis();
		
		String uri;
		
		if(request instanceof HttpServletRequest) {
			
			HttpServletRequest req=(HttpServletRequest)request;
			
			uri=req.getRequestURI();
			
			//데이터 전송 시간
			config.getServletContext().log(uri+":"+(after-before)+"ms");
		}
	}

	@Override
	public void init(FilterConfig config) throws ServletException {
		this.config=config;
	}
	
	

}
