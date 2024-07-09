package com.java.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@Data
@NoArgsConstructor

public class Students {
	
	private int stuNo;
	private String name;
	private String gender;
	private int kor;
	private int eng;
	private int math;
	private int total;
	private double avg;
	private int rank;
	private String hobby;
	private String[] hobbys;
	static int count =1;
	
//	public Students() {}
	
	public Students(String name, int stuNo, int kor,int eng,int math, int total, int avg, int rank) {
		this.stuNo= stuNo; //stuNo은 DB에서 연결 
		this.name = name;
		this.kor =kor;
		this.eng=eng;
		this.math=math;
		this.total=kor+eng+math;
		this.avg=total/3.0;
		
	}

}
