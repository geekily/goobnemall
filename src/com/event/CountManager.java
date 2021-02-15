package com.event;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import sun.security.jca.GetInstance;

/*
- 서블릿의 라이프 사이클과 속성 이벤트
01. HTTPSessionListener : 세션이 생성 종료 될 때
02. ServletContextListener : 서버가 시작, 중지 될 때
*/
public class CountManager implements HttpSessionListener{

	private static CountManager countManager;
	private static int count;
	
	public CountManager() {
		countManager=this;
	}
	
	public static synchronized CountManager getInstance() throws Exception{
		
		if(countManager==null) {
			countManager=new CountManager();
		}
		
		return countManager;
	}
	
	public static int getCount() {
		
		return count;
	}
	
	@Override
	public void sessionCreated(HttpSessionEvent evt) {
	
		HttpSession session=evt.getSession();
		session.setMaxInactiveInterval(10*60);
		
		count++; 
		
		System.out.print(session.getId()+" : 세션생성, ");
		System.out.println("접속자 수 : "+count);
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent evt) {
		
		HttpSession session=evt.getSession();
		
		count--;
		
		System.out.print(session.getId()+" : 세션소멸, ");
		System.out.println("접속자 수 : "+count);
	}
	
	
	
	
	

}
