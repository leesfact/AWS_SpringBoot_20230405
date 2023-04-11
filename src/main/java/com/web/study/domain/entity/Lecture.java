package com.web.study.domain.entity;

import com.web.study.dto.response.LectureRespDto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Builder
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Lecture {
	private int ltm_id;
	private String ltm_name;
	private int ltm_price;
	private int itm_id;
	private Instructor instructor;

	
	public LectureRespDto toDto() {
		
		String instructorName = null;

		
		if(instructor != null) {
			instructorName = instructor.getItm_name();
		}
		
		return LectureRespDto.builder()
				.lectureId(ltm_id)
				.lecutreName(ltm_name)
				.lecturePrice(ltm_price)
				.instructorName(instructorName)
				.build();
	}
				
}
