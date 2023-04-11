package com.web.study.domain.entity;

import java.time.LocalDate;

import com.web.study.dto.response.StudentRespDto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;


@Builder
@Getter
//@Alias("S1")
@NoArgsConstructor
@AllArgsConstructor
public class Student {
	private int sdm_id;
	private String sdm_name;
	private LocalDate sdm_birth;
	
	
	
	public StudentRespDto toDto() {
		return StudentRespDto.builder()
				.id(sdm_id)
				.name(sdm_name)
				.birhDate(sdm_birth)
				.build();
	}
}
