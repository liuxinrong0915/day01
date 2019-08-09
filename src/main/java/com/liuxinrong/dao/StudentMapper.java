package com.liuxinrong.dao;

import java.util.List;
import java.util.Map;

import com.liuxinrong.domain.Student;

public interface StudentMapper {
	
    List<Student> selects(Map<String,Object> map);

	List toadd();

	int add(Student s);
    
}
