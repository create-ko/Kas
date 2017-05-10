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
//						listFile(file.getCanonicalPath().toString());
					}
					list.add(dto);
//					System.out.println("This list add " + list);
				}
			}catch (Exception e){
				e.printStackTrace();
			}
			return list;
	}

}
