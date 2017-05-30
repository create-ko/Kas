package com.spring.kas;

import java.io.File;
import java.nio.file.Files;
import java.util.ArrayList;

public class FileDAO {
	
	ArrayList<FileDTO> list = new ArrayList<FileDTO>();
	private static FileDAO instance = new FileDAO();

	public static FileDAO getInstance() {
		return instance;
	}

	private FileDAO() {

	}

	public ArrayList<FileDTO> listFile(String source) {
			list.clear();
			File directory = new File(source);
			File[] fList = directory.listFiles();
			try{
				for (File file : fList){
					FileDTO dto = new FileDTO();
					if(file.isFile()){
						dto.setName(file.getName());
						dto.setFileName(file.getName());
					}else if(file.isDirectory()){
						dto.setName(file.getName());
						dto.setFileName(file.getName());
					}
					list.add(dto);
				}
			}catch (Exception e){
				e.printStackTrace();
			}
			return list;
	}
	
	
	public ArrayList<FileDTO> picFile(String source){
		list.clear();
		File directory = new File(source);
		File[] fList = directory.listFiles();
		try{
			for(File file : fList){
				FileDTO dto = new FileDTO();
				if(file.isFile()){
					if(file.getName().indexOf("jpg")== -1 && file.getName().indexOf("gif")== -1 && file.getName().indexOf("png")== -1 && file.getName().indexOf("bmp")== -1){
					}else{
						dto.setName(file.getName());
						dto.setFileName(file.getName());
						list.add(dto);
					}
				}
			}
		}catch (Exception e){
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<FileDTO> movieFile(String source){
		list.clear();
		File directory = new File(source);
		File[] fList = directory.listFiles();
		try{
			for(File file : fList){
				FileDTO dto = new FileDTO();
				if(file.isFile()){
					if(file.getName().indexOf("mkv")== -1 && file.getName().indexOf("mp4")== -1 && file.getName().indexOf("avi")== -1 && file.getName().indexOf("mov")== -1 && file.getName().indexOf("wmv")== -1 && file.getName().indexOf("mpeg")== -1){
					}else{
						dto.setName(file.getName());
						dto.setFileName(file.getName());
						list.add(dto);
					}
				}
			}
		}catch (Exception e){
			e.printStackTrace();
		}
		return list;
	}
}


