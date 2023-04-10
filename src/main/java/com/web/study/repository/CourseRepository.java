package com.web.study.repository;

import org.apache.ibatis.annotations.Mapper;

import com.web.study.domain.entity.Course;



@Mapper
public interface CourseRepository {
	
	// insert, update, delete 리턴 자료형 없음
	public int registe(Course course );
	public Course getCourseAll();


}