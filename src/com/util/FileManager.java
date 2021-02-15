package com.util;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

public class FileManager {
	
	//파일 다운로드
	public static boolean doFileDownload(HttpServletResponse response,String saveFileName,String originalFileName,String path) {
		
		try {
			
			String filePath=path+File.separator+saveFileName;
			
			if(originalFileName==null||originalFileName.equals("")) {
				originalFileName=saveFileName;
			}
			
			//파일을 다운 받아 클라이언트의 컴퓨터에 파일 이름 생성시 한글 깨짐 방지
			originalFileName=new String(originalFileName.getBytes("euc-kr"),"ISO-8859-1");		//ISO-8859-1 대신 8859_1을 써도 됨
			
			File f=new File(filePath);
			
			if(!f.exists()) {
				return false;
			}
			
			response.setContentType("application/octet-stream");
			response.setHeader("Content-disposition", "attachment;fileName="+originalFileName);
			
			BufferedInputStream bis=new BufferedInputStream(new FileInputStream(f));
			
			OutputStream out=response.getOutputStream();
			
			int n;
			byte[] data=new byte[4096];
			while((n=bis.read(data, 0, 4096))!=-1) {
				out.write(data,0,n);
			}
			
			out.flush();
			out.close();
			bis.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
			return false;
		}
		
		return true;
	}
	
	//파일 삭제
	public static void doFileDelete(String fileName,String path) {
		
		try {
			String filePath=path+File.separator+fileName;
			
			File f=new File(filePath);
			
			if(f.exists()) {
				f.delete();		//파일 삭제
			}		
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}

}
