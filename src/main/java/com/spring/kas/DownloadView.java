package com.spring.kas;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Map;
 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;


public class DownloadView extends AbstractView {
 
    public DownloadView() {
        setContentType("applicaiton/download; utf-8");
    }
 
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
		
		 	File file = (File) model.get("downloadFile");
	        response.setContentType(getContentType());
	        response.setContentLength((int)file.length());
	        
	        String fileName=file.getName();
	        String testName= getDisposition(fileName, getBrowser(request));
	        
	        System.out.println("This is TestName " +testName);
	        System.out.println("This is FileName "+fileName);

	        response.addHeader("content-disposition", "attachment;filename=\"" + fileName + "\"");
	        response.addHeader("Content-Transfer-Encoding", "binary");
	        
	        
//	        OutputStream os = null;
//	        InputStream in=null;
//	        
//	        try{
//	        	try{
//	        		in = new FileInputStream(file);
//	        	}catch(FileNotFoundException e){
//	        		e.printStackTrace();
//	        	}
//	        
//	        	os = response.getOutputStream();
//	        	byte b[]= new byte[(int)file.length()];
//	        	int leng =0;
//	        
//	        	while( (leng = in.read(b)) > 0){
//	        		os.write(b,0,leng);
//	        	}
//	        	in.close();
//	        	os.close();
//	        	}catch(Exception e){
//	        		e.printStackTrace();
//	        	}
	        
	        
	        OutputStream out = response.getOutputStream();
	        FileInputStream fis = null;
	        
	        try {
	            fis = new FileInputStream(file);
	            FileCopyUtils.copy(fis, out);
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            if (fis != null) {
	            	try { 
	            		fis.close(); 
	            		} catch (Exception e) {}
	            	}
	        }
	        out.flush();
		
	}
}
