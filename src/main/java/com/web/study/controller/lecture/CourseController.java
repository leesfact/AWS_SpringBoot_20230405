package com.web.study.controller.lecture;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.web.study.dto.DataResponseDto;
import com.web.study.dto.ResponseDto;
import com.web.study.dto.request.course.CourseReqDto;
import com.web.study.service.CourseService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class CourseController {
	
	private final CourseService courseService;
	//Create
	@PostMapping("/course")
	public ResponseEntity<? extends ResponseDto> register(@RequestBody CourseReqDto CourseReqDto) {
		courseService.registeCourse(CourseReqDto);
		return ResponseEntity.ok().body(ResponseDto.ofDefault());
	}
	
	@GetMapping("/courses")
	public ResponseEntity<? extends ResponseDto> getCurseAll() {
		return ResponseEntity.ok().body(DataResponseDto.of(courseService.getCourseAll()));
	}
	
	@GetMapping("/search/courses")
	public ResponseEntity<? extends ResponseDto> searchCourse(int type, String searchValue) {
		return ResponseEntity.ok().body(DataResponseDto.of(courseService.searchCourse(type,searchValue)));
	}
}
