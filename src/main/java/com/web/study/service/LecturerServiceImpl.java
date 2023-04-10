package com.web.study.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.web.study.domain.entity.Lecturer;
import com.web.study.dto.request.lecture.LecturerReqDto;
import com.web.study.dto.response.LecturerRespDto;
import com.web.study.repository.LecturerRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class LecturerServiceImpl implements LecturerService {
	private final LecturerRepository lecturerRepository;

	@Override
	public void registeLecturer(LecturerReqDto lecturerReqDto) {
		
		Lecturer lecturer = lecturerReqDto.toEntity();
		lecturerRepository.registe(lecturer);
		
	}

	@Override
	public List<LecturerRespDto> getLecturerAll() {
		List<LecturerRespDto> dtos = new ArrayList<>();
		lecturerRepository.getLecturerAll().forEach(entity -> {
			dtos.add(entity.toDto());
		});

		return dtos;

	}

	@Override
	public LecturerRespDto findLecturerById(int id) {
		return lecturerRepository.findLecturerById(id).toDto();
	}
}
