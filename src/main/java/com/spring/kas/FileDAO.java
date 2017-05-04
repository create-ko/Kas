package com.spring.kas;

import java.io.File;
import java.nio.file.Files;
import java.util.ArrayList;

public class FileDAO {
	ArrayList<FileDTO> list = new ArrayList<FileDTO>();
	private static int re =0;
	public static int getRe() {
		return re;
	}

	public static void setRe(int re) {
		FileDAO.re = re;
	}

	private static FileDAO instance = new FileDAO();
    
    public static FileDAO getInstance() {
        return instance;
    }
     
    private FileDAO() {
    	
    }
    
//    public void subDirList(String source){
//		File dir = new File(source); 
//		File[] fileList = dir.listFiles(); 
//		try{
//			for(int i = 0 ; i < fileList.length ; i++){
//				File file = fileList[i]; 
//				if(file.isFile()){
//					System.out.println("\t 파일 이름 = " + file.getName());
//				}else if(file.isDirectory()){
//					System.out.println("디렉토리 이름 = " + file.getName()); 
//					subDirList(file.getCanonicalPath().toString()); 
//				}
//			}
//		}catch(IOException e){
//		}
//	}

    public ArrayList<FileDTO> listFile(String source) {
        
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
                		listFile(file.getCanonicalPath().toString());
                	}
                	list.add(dto);
                	re++;
                }	
        	}catch (Exception e){
        	e.printStackTrace();
        }
        return list;
    }
     
}
