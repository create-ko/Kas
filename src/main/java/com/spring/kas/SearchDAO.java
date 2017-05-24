package com.spring.kas;

import java.io.File;
import java.util.ArrayList;

public class SearchDAO {

	ArrayList<FileDTO> list = new ArrayList<FileDTO>();
	ArrayList<FileDTO> alist = new ArrayList<FileDTO>();
	private static SearchDAO instance = new SearchDAO();

	public static SearchDAO getInstance() {
		return instance;
	}
	
	private SearchDAO() {

	}

	public ArrayList<FileDTO> searFile(String s){
		alist.clear();
		list.clear();
		
		File directory = new File(Path.getUr());
		visitAllFiles(list, directory);
		for(int i=0;i<list.size();i++){
			if(list.get(i).getFileName().contains(s)){
				FileDTO dto = new FileDTO();
				dto.setFileName(list.get(i).getFileName());
				dto.setName(list.get(i).getFileName());
				alist.add(dto);
			}
		}
		return alist;
	}
	

	public static void visitAllFiles(ArrayList<FileDTO> files, File dir) {
		FileDTO dto = new FileDTO();
        if(dir.isDirectory()) {
            File[] children = dir.listFiles();
            for(File f : children) {
                visitAllFiles(files,f);
            }
        } else {
        	dto.setFileName(dir.getName());
        	dto.setName(dir.getName());
            files.add(dto);
        }
    }
}
