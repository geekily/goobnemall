package com.event;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ContextListenerTest implements ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
	
		System.out.println("���� �����Ѵ�...");
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
	
		System.out.println("���� �����Ѵ�...");
		
		ServletContext sc=sce.getServletContext();
		sc.setAttribute("name", "�����");
	}
	
	

}
