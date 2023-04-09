package com.web.study.dto.request.student;

import java.time.LocalDate;

import com.web.study.domain.entity.Student;

import lombok.Setter;
import lombok.ToString;

@Setter
@ToString
public class StudentReqDto {
	
	private String studentName;
	private LocalDate studentBirthDate;
	
	public Student toEntity() {
		return Student.builder()
				.name(studentName)
				.birthDate(studentBirthDate)
				.build();
	}

}
