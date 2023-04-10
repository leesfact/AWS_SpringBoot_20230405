package com.web.study.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.web.study.domain.entity.Lecturer;



@Mapper
public interface LecturerRepository {
	
	
	// insert, update, delete 리턴 자료형 없음
	public int registe(Lecturer lecturer);
	public List<Lecturer> getLecturerAll();
	public Lecturer findLecturerById(int id);


}