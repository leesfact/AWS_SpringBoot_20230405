package com.web.study.controller.lecture;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.web.study.dto.DataResponseDto;
import com.web.study.dto.ResponseDto;
import com.web.study.dto.request.lecture.LecturerReqDto;
import com.web.study.service.LecturerService;

import lombok.RequiredArgsConstructor;



@RestController 
@RequiredArgsConstructor
public class LecturerController {
	private final LecturerService lecturerService;
	//Create
	@PostMapping("/lecturer")
	public ResponseEntity<? extends ResponseDto> register(@RequestBody LecturerReqDto lecturerReqDto) {
		lecturerService.registeLecturer(lecturerReqDto);
		System.out.println(lecturerReqDto);
		return ResponseEntity.ok().body(ResponseDto.ofDefault());
	}
	
	
	@GetMapping("/lecturers")
	public ResponseEntity<? extends ResponseDto> getLecturers() {
		
		return ResponseEntity.ok().body(DataResponseDto.of(lecturerService.getLecturerAll()));
	}
	
	@GetMapping("/lecturers/{id}")
	public ResponseEntity<? extends ResponseDto> getLecturerById(@PathVariable int id) {
		
		return ResponseEntity.ok().body(DataResponseDto.of(lecturerService.findLecturerById(id)));
	}
}
