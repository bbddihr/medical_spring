package com.java.controller;

import java.util.Arrays;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.java.dto.Students;


@Controller
public class StuController {
	
	@RequestMapping("/students/students")
	public String students() {
		return "students/students";
	}
	
	@RequestMapping("/students/doStudents")
	public ModelAndView doStudents(Students stu) {

//  public ModelAndView doStudents(
//  	int stuNo, String name, int kor, int eng, int math, 
//		HttpServletRequest request){

		
		//JSP방법
//		int stuNo=Integer.parseInt(request.getParameter("stuNo")); 
		
		
		
		System.out.println("국어점수 : "+stu.getKor());
		System.out.println("등수 : "+stu.getRank());
		System.out.println("취미 :  "+Arrays.toString(stu.getHobbys()));
		
		//입력값이 없으니까 setTotal, setAvg setHobby
		stu.setTotal(stu.getKor()+stu.getEng()+stu.getMath());
		stu.setAvg(stu.getTotal()/3.0);
		stu.setHobby(Arrays.toString(stu.getHobbys()));
		
//		Students s = new Students(s.getStuNo(),s.getKor(),s.getEng(),s.getMath())
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("stu",stu);
		mv.setViewName("students/doStudents");
			
		return mv;
	}
	
	
	@RequestMapping("/students/stuUpdate")
	public ModelAndView stuUpdate(Students stu) {
		ModelAndView mv=new ModelAndView();
		mv.addObject("stu",stu);
		mv.setViewName("students/stuUpdate");
		return mv;
	}
	
}
