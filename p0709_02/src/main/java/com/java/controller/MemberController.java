package com.java.controller;

import java.util.Arrays;

import org.springframework.boot.context.properties.bind.DefaultValue;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.java.dto.Member;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/member")  //앞으로빼주면 밑에 간결하게 쓸수있음.
public class MemberController {
	
	@RequestMapping("/member")
	public String member() {
		return "member/member";
	}
	
	@RequestMapping("/doMember")
	public ModelAndView doMember(Member member) {
		
		System.out.println("id : "+member.getId());
		System.out.println("name : "+member.getName());
		System.out.println("gender : "+member.getGender());
		System.out.println("hobby :  "+Arrays.toString(member.getHobbys()));
		
		member.setHobby(Arrays.toString(member.getHobbys()));
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("member",member);
		mv.setViewName("member/doMember");
			
		return mv;
	}

	@RequestMapping("/member/login")
	public String login() {
		return "member/login";
	}
	
	@RequestMapping("/member/doLogin")
	public ModelAndView doLogin(@RequestParam("id") String id,
			@RequestParam String pw,
			@RequestParam(defaultValue = "1") int pno,
			HttpServletRequest request) {
		
//		int pno = Integer.parseInt(request.getParameter("pno"));
		
		System.out.println("id:   "+id);
		System.out.println("pw:   "+pw);
		System.out.println("pno:   "+pno);
		
		ModelAndView mv= new ModelAndView();
		mv.addObject("id",id);
		mv.addObject("pw",pw);
		mv.addObject("pno",pno);
		mv.setViewName("member/doLogin");
		
		
		return mv;
	}
	
	
	//requestParam 형태로 데이터를 받아 doData.jsp페이지로 데이터를 전송하시오.
	@RequestMapping("/member/data")
	public String data() {
		return "member/data";
	}
	
	
	@RequestMapping("/member/doData")  // 객체선언하면됨
	public ModelAndView doData(@RequestParam(defaultValue = "1") int stuNo
			, String name,@RequestParam(defaultValue = "0") int kor
			,String[] hobby) {
		
		
		
		System.out.println("stuNo:   "+stuNo);
		System.out.println("name:   "+name);
		System.out.println("kor:   "+kor);
		System.out.println("hobby:   "+kor);
		System.out.println("hobby: "+Arrays.toString(hobby));
		
		ModelAndView mv= new ModelAndView();
		mv.addObject("stuNo",stuNo);
		mv.addObject("name",name);
		mv.addObject("kor",kor);
		mv.addObject("hobby",Arrays.toString(hobby));
		
		mv.setViewName("member/doData");
		
		
		return mv;
	}
	
}
