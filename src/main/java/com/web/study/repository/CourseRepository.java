package com.web.study.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.web.study.domain.entity.Course;



@Mapper
public interface CourseRepository {
	
	// insert, update, delete 리턴 자료형 없음
	public int registe(Course course );
	public List<Course> getCourseAll();
	public List<Course> searchCourse(Map<String, Object> parameterMap);


}