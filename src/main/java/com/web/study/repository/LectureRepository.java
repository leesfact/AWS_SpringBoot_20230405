package com.web.study.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.web.study.domain.entity.Lecture;



@Mapper
public interface LectureRepository {
	
	// insert, update, delete 리턴 자료형 없음
	public int registe(Lecture lecture);
	public List<Lecture> searchLecture(Map<String, Object> parameterMap);


}