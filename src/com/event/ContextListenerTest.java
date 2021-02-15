package com.event;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ContextListenerTest implements ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
	
		System.out.println("서버 종료한다...");
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
	
		System.out.println("서버 시작한다...");
		
		ServletContext sc=sce.getServletContext();
		sc.setAttribute("name", "배수지");
	}
	
	

}
