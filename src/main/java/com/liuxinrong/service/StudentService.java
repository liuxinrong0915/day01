package com.liuxinrong.service;

import java.util.List;
import java.util.Map;

import com.liuxinrong.domain.Student;

public interface StudentService {
	
	 List<Student> selects(Map<String,Object> map);

	List toadd();

	int add(Student s);
}
