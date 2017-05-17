package com.spring.kas;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;

import org.omg.IOP.Encoding;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


///Users/seung_hee/Desktop/test_folder/
@Controller
public class FileController implements ApplicationContextAware{

/*	String ur = "/Users/seung_hee/Desktop/test_folder/";*/
	String ur = "C:" + File.separator + "Users" + File.separator + "user" + File.separator + "Desktop" + File.separator + "test" + File.separator;
	private WebApplicationContext context = null;
	 
    @RequestMapping(value = "/file_down", method = RequestMethod.GET)
    public ModelAndView fileDown(@RequestParam("fileName") String fileName) {
    	String fullname = null;
    	try{
    		fullname=new String(fileName.getBytes("8859_1"), "utf-8");
    	}catch (UnsupportedEncodingException e){
    		e.printStackTrace();
    	}
    	String fullPath = ur + fullname ;
    	
    	
    	System.out.println(fullname.indexOf("mkv"));

    	if(fullname.indexOf("mkv") == -1){
    		File downloadFile = new File(fullPath);
    		return new ModelAndView("download", "downloadFile", downloadFile);
    	}
    	else{
    		File downloadFile = new File(fullPath);
    		System.out.println("this is mkv" );
            return new ModelAndView("streamingdownload", "downloadFile", downloadFile);
    	}
    }
     
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.context  = (WebApplicationContext) applicationContext;
    }
     
//    @RequestMapping(value = "/test", method = {RequestMethod.GET , RequestMethod.POST})
//    public ModelAndView fileList() {
//        ModelAndView mv = new ModelAndView();
//        mv.setViewName("test");
//         
//        ArrayList<FileDTO> list =  FileDAO.getInstance().listFile();
//        mv.addObject("list", list);
//        return mv;
//    }
    
//	@RequestMapping(value="/test", method = {RequestMethod.POST, RequestMethod.POST})
//	public String fileSubmit(FileDTO dto){
//		MultipartFile uploadfile = dto.getUploadfile();
//		if(uploadfile != null){
//			String fileName = uploadfile.getOriginalFilename();
//			dto.setFileName(fileName);
//		try{
//			File file = new File(ur + fileName);
//			uploadfile.transferTo(file);
//		}catch (IOException e){
//			e.printStackTrace();
//		}		
//	}
//		return "redirect:/test";
//	}
	
	
	
// File Download java Controller method
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public ModelAndView fileForm(){
		ModelAndView mv = new ModelAndView();
		ArrayList<FileDTO> list =  FileDAO.getInstance().listFile(ur);
		mv.addObject("list", list);
		mv.setViewName("main");
		return mv;
	}
	
	
	@RequestMapping(value="/main", method = {RequestMethod.POST, RequestMethod.POST})
	public String fileSubmit(FileDTO dto) {
        MultipartFile uploadfile = dto.getUploadfile();
        
        if (uploadfile != null) {
            String fileName = uploadfile.getOriginalFilename();
            long fileSize = uploadfile.getSize();
            dto.setFileName(fileName);
            dto.setFileSize(fileSize);
            try {
                File file = new File(ur + fileName);
                uploadfile.transferTo(file);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
            return "redirect:/main";
   }




}
