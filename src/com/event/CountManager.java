package com.event;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import sun.security.jca.GetInstance;

/*
- ������ ������ ����Ŭ�� �Ӽ� �̺�Ʈ
01. HTTPSessionListener : ������ ���� ���� �� ��
02. ServletContextListener : ������ ����, ���� �� ��
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
		
		System.out.print(session.getId()+" : ���ǻ���, ");
		System.out.println("������ �� : "+count);
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent evt) {
		
		HttpSession session=evt.getSession();
		
		count--;
		
		System.out.print(session.getId()+" : ���ǼҸ�, ");
		System.out.println("������ �� : "+count);
	}
	
	
	
	
	

}
