package com.liuxinrong.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.liuxinrong.dao.StudentMapper;
import com.liuxinrong.domain.Student;
@Service
public class StudentServiceImpl implements StudentService {
    @Resource   
	private StudentMapper mapper;
	 
	@Override
	public List<Student> selects(Map<String, Object> map) {
          		
		return mapper.selects(map);
	}

	@Override
	public List toadd() {
		// TODO Auto-generated method stub
		return mapper.toadd();
	}

	@Override
	public int add(Student s) {
		// TODO Auto-generated method stub
		return mapper.add(s);
	}

}
