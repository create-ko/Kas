package com.spring.kas;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;

import org.apache.commons.io.FileUtils;
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
	
	private WebApplicationContext context = null;

	//File Download method
	@RequestMapping(params = "download", method = RequestMethod.GET)
    public ModelAndView fileDown(@RequestParam("fileName") String fileName) {
    	String fullname = null;
    	try{
    		fullname=new String(fileName.getBytes("8859_1"), "utf-8");
    	}catch (UnsupportedEncodingException e){
    		e.printStackTrace();
    	}
    	String fullPath = Path.getUr() + fullname ;
    	
    	
    	if(fullname.lastIndexOf(".") == -1){
    		return new ModelAndView("redirect:/main");
    	}
    	if(fullname.indexOf("mkv") == -1 || fullname.indexOf("avi")==-1 || fullname.indexOf("mp4") == -1 || fullname.indexOf("mov") == -1 || fullname.indexOf("wmv") == -1 || fullname.indexOf("mpeg") == -1){
    		File downloadFile = new File(fullPath);
    		return new ModelAndView("download", "downloadFile", downloadFile);
    	}else {
    		File downloadFile = new File(fullPath);
            return new ModelAndView("streamingdownload", "downloadFile", downloadFile);
    	}
    }
    
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.context  = (WebApplicationContext) applicationContext;
    }
     
	
// File Download Java Controller method
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public ModelAndView fileForm(){
			ModelAndView mv = new ModelAndView();
			ArrayList<FileDTO> list =  FileDAO.getInstance().listFile(Path.getUr());
			mv.addObject("list", list);
			mv.setViewName("main");
			return mv;
	}

	
//	File Upload Java Controller method
	@RequestMapping(value="/main", method = {RequestMethod.POST, RequestMethod.POST})
	public String fileSubmit(FileDTO dto) {
        MultipartFile uploadfile = dto.getUploadfile();
        if (uploadfile != null) {
            String fileName = uploadfile.getOriginalFilename();
            long fileSize = uploadfile.getSize();
            dto.setFileName(fileName);
            dto.setFileSize(fileSize);
            try {
                File file = new File(Path.getUr() + fileName);
                uploadfile.transferTo(file);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
            return "redirect:/main";
   }

	//All views on the left side of the web page
	@RequestMapping(value="/all_list", method=RequestMethod.POST)
	public ModelAndView alllist(){
		return new ModelAndView("redirect:/main"); 
	}
	
	//View photos on the left side of a web page
	@RequestMapping(value="/pic_list", method=RequestMethod.POST)
	public ModelAndView piclist(){
		ModelAndView mv = new ModelAndView();
		ArrayList<FileDTO> list = FileDAO.getInstance().picFile(Path.getUr());
		mv.addObject("list", list);
		mv.setViewName("main");
		return mv; 
	}
	//View movies on the left side of a web page
	@RequestMapping(value="/movie_list", method=RequestMethod.POST)
	public ModelAndView movielist(){
		ModelAndView mv = new ModelAndView();
		ArrayList<FileDTO> list = FileDAO.getInstance().movieFile(Path.getUr());
		mv.addObject("list", list);
		mv.setViewName("main");
		return mv; 
	}
	
	//Create New Folder Method
	@RequestMapping(params="newFolder", method=RequestMethod.GET)
	public ModelAndView create_folder(@RequestParam("newFolder") String folderName ){
		String fullname = null;
    	try{
    		fullname=new String(folderName.getBytes("8859_1"), "utf-8");
    	}catch (UnsupportedEncodingException e){
    		e.printStackTrace();
    	}
    	String fullPath = Path.getUr() + fullname ;
		File file = new File(fullPath);
		file.mkdirs();
		return new ModelAndView("redirect:/main");
	}
	
	//Delete Folder and file Method
    @RequestMapping(params = "delete", method =RequestMethod.GET)
    public ModelAndView fileDelete(@RequestParam("fileName") String fileName){
    	String fullname = null;
    	try{
    		fullname=new String(fileName.getBytes("8859_1"), "utf-8");
    	}catch (UnsupportedEncodingException e){
    		e.printStackTrace();
    	}
    	String fullPath = Path.getUr() + fullname ;
    	File deleteFile = new File(fullPath);
    	deleteFile.delete();
    	return new ModelAndView("redirect:/main");
    }

    //Enter Folder
	@RequestMapping(params="join", method = RequestMethod.GET)
	public ModelAndView joinDirectory(@RequestParam("fileName") String fileName){
		String fullname = null;
    	try{
    		fullname=new String(fileName.getBytes("8859_1"), "utf-8");
    	}catch (UnsupportedEncodingException e){
    		e.printStackTrace();
    	}
    	String fullPath = Path.getUr() + fullname ;
    	ModelAndView mv = new ModelAndView();
    	ArrayList<FileDTO> list = FileDAO.getInstance().listFile(fullPath);
    	mv.addObject("list", list);
    	mv.setViewName("main");
    	return mv;
	}
}
