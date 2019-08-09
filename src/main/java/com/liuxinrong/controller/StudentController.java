package com.liuxinrong.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.liuxinrong.domain.Student;
import com.liuxinrong.service.StudentService;

@Controller
public class StudentController {
         @Resource
         private StudentService service;
	
	   @RequestMapping("list")
        public String list(Model model,@RequestParam(defaultValue="1")Integer pageNum) {
		   int pageSize=2;
		   PageHelper.startPage(pageNum,pageSize);
		   Map<String,Object> map=new HashMap<String,Object>();
		   
		   List<Student> selects=service.selects(map);
		   PageInfo info=new PageInfo(selects);
		   model.addAttribute("info",info);
		   model.addAttribute("selects",selects);
			return "list";
        }
	   @RequestMapping("toadd")
	   public String toadd(Model model) {
		   List list=service.toadd();
		return "add";
	   }
	   @ResponseBody
	   @RequestMapping("add")
	   public boolean add(Student s) {
		   int i=service.add(s);
		return i>0;
		   
	   }
        
}
