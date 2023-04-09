package com.web.study.controller.student;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.web.study.dto.ResponseDto;
import com.web.study.dto.request.student.StudentReqDto;
import com.web.study.service.StudentService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class StudentController {
	
	private final StudentService studentService;
	
	@PostMapping("/student")
	public ResponseEntity<? extends ResponseDto> register(@RequestBody StudentReqDto studentReqDto ){
		studentService.registeStudent(studentReqDto);
		return ResponseEntity.ok().body(ResponseDto.ofDefault());
	}
}
