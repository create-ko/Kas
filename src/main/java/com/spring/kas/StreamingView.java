package com.spring.kas;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.view.AbstractView;


//http://whiteduck.tistory.com/118

public class StreamingView extends AbstractView {



	//Browser Check Method
	private String getBrowser(HttpServletRequest request){
		String header = request.getHeader("User-Agent");

		System.out.println(header);
		if(header.indexOf("MSIE") > -1){
    		return "MSIE";
    	}else if(header.indexOf("Chrome") >-1){
    		return "Chrome";
		}else if(header.indexOf("Opera") > -1){
			return "Opera";
		}else if(header.indexOf("Trident/7.0") > -1){
			return "MSIE";
		}else if(header.indexOf("Safari") > -1){
			return "Safari";
		}
		return "Firefox";
	}

	// 파일명 특수문자 처리
	private String getDisposition(String filename, String browser) throws Exception{

		String encodedFilename = null;
		if(browser.equals("MSIE")){
			encodedFilename = URLEncoder.encode(filename, "UTF-8").replaceAll("\\+", "%20");
		}else if(browser.equals("Firefox")){
			encodedFilename = "\"" + new String(filename.getBytes("UTF-8"), "8859_1") + "\"";
		}else if(browser.equals("Chrome")){
			StringBuffer sb = new StringBuffer();
			for(int i=0;i<filename.length();i++){
				char c = filename.charAt(i);
				if(c >'~'){
					sb.append(URLEncoder.encode(""+c, "UTF-8"));
				}else {
					sb.append(c);
				}
			}
			encodedFilename = sb.toString();
		}else if(browser.equals("Opear")){
			encodedFilename = "\"" + new String(filename.getBytes("UTF-8"), "8859_1") + "\"";
		}else if(browser.equals("Safari")){
			encodedFilename = "\"" + new String(filename.getBytes("UTF-8"), "8859_1") + "\"";
		}else {
			throw new RuntimeException("Not supported browser");
		}    	
		return encodedFilename;  
	}
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		File file = (File)model.get("downloadFile");
		
		
		RandomAccessFile randomFile = new RandomAccessFile(file, "r");

		long rangeStart = 0;  
		long rangeEnd = 0;  
		boolean isPart=false;
		
		try{
			long movieSize = randomFile.length();
			String range = request.getHeader("range");
			
			if(range!=null){
				if(range.endsWith("-")){
					range = range+(movieSize - 1); 
					}
				int idxm = range.trim().indexOf("-"); //"-" 위치 
				rangeStart = Long.parseLong(range.substring(6,idxm)); 
				rangeEnd = Long.parseLong(range.substring(idxm+1)); 
				if(rangeStart > 0){ 
					isPart = true; 
					} 
				}else{  
					rangeStart = 0; 
					rangeEnd = movieSize - 1;
			}
			
			long partSize = rangeEnd - rangeStart + 1;
			
			response.setStatus(isPart ? 200 : 206);
			
			response.setContentType("video/mkv");
			
			
			response.setHeader("Content-Range", "bytes "+rangeStart+"-"+rangeEnd+"/"+movieSize); 
			response.setHeader("Accept-Ranges", "bytes"); 
			response.setHeader("Content-Length", ""+partSize);
			
			
			OutputStream out = response.getOutputStream();
			
			randomFile.seek(rangeStart);
			int bufferSize = 8*1024; 
			byte[] buf = new byte[bufferSize]; 
			do{ 
				int block = partSize > bufferSize ? bufferSize : (int)partSize; 
				int len = randomFile.read(buf, 0, block); 
				out.write(buf, 0, len); partSize -= block; 
				}while(partSize > 0); 
			}catch(IOException e){ //전송 중에 브라우저를 닫거나, 화면을 전환한 경우 종료해야 하므로 전송취소. // progressBar를 클릭한 경우에는 클릭한 위치값으로 재요청이 들어오므로 전송 취소. 
				e.printStackTrace();
			}finally{ randomFile.close(); }
		 }

}
