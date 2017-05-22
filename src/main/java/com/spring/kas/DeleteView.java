package com.spring.kas;

import java.io.File;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.view.AbstractView;

public class DeleteView extends AbstractView{

    public DeleteView() {
        setContentType("applicaiton/download; utf-8");
    }
    
    
    
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		File file = (File) model.get("deleteFile");
		if(file.exists()){
			file.delete();
		}
		
	}

}
