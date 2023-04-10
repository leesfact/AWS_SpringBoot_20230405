package com.web.study.controller.student;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.web.study.dto.DataResponseDto;
import com.web.study.dto.ResponseDto;
import com.web.study.dto.request.student.StudentReqDto;
import com.web.study.service.StudentService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class StudentController {
	
	private final StudentService studentService;
	
	
	//@RequestBody => 클라이언트 -> 서버 데이터 전송(JSON)
	// JSON의 형태 -> 객체
	// JSON형태로 받고 싶으면 무조건 @RequestBody를 붙여줘야함
	
	@PostMapping("/student")
	public ResponseEntity<? extends ResponseDto> registeStudent(@RequestBody StudentReqDto studentReqDto ){
		
		studentService.registeStudent(studentReqDto);
		return ResponseEntity.ok().body(ResponseDto.ofDefault());
	}
	
	@GetMapping("/students")
	public ResponseEntity<? extends ResponseDto> getStudents(){
		return ResponseEntity.ok().body(DataResponseDto.of(studentService.getStudentAll()));
	}
	
	@GetMapping("/students/{id}")
	public ResponseEntity<? extends ResponseDto> getStudentById(@PathVariable int id){
		return ResponseEntity.ok().body(DataResponseDto.of(studentService.findStudentById(id)));
	}
	
	
}
