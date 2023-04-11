package com.web.study.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.web.study.domain.entity.Instructor;



@Mapper
public interface InstructorRepository {
	
	
	// insert, update, delete 리턴 자료형 없음
	public int registe(Instructor instructor);
	public List<Instructor> getInstructorAll();
	public Instructor findInstructorById(int id);


}