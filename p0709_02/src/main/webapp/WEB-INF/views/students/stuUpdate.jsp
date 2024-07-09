<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>form</title>
		<!-- head 부분에 추가 -->
	<link href="//fonts.googleapis.com/earlyaccess/hanna.css" rel="stylesheet" type="text/css">
	<link href="//fonts.googleapis.com/earlyaccess/nanumgothic.css" rel="stylesheet" type="text/css">
	<style type="text/css">
	.hanna { font-family: 'hanna'; }
	.nanum { font-family: 'Nanum Barun Gothic'; }
	</style>

	</head>
	   <style>
       
        form {
        
            background-color: #9bccf2;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 300px;
        }
        h2 {
            color: #2d45fa;
            
        }
       
        input[type="submit"] {
            display: block;
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 10px;
            background-color:#ecf279;
            color: black;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
        }
        input[type="submit"]:hover {
            background-color: #9361e8;
        }
        
    </style>
	<body>
		<h2>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; ♠ 성적수정</h2>
		<form action="doStudents" name=sfrm method="post">
			<label>학번</label>
			<input type="text" name="${stu.stuNo}"><br>
			<label>이름</label>
			<input type="text" name="${stu.name}"><br>
			<label>국어</label>
			<input type="text" name="${stu.kor}"><br>
			<label>영어</label>
			<input type="text" name="${stu.eng}"><br>
			<label>수학</label>
			<input type="text" name="${stu.math}"><br>
			
			<label>성별</label><br>
			<input type="radio" name="gender" id="male" value="male" <c:if test="${stu.gender =='male'}">checked</c:if>>
			<label for="male">남자</label>
			<input type="radio" name="gender" id="female" value="female" <c:if test="${stu.gender =='female'}">checked</c:if>>
			<label for="female">여자</label>
			<br>
			<label>취미</label><br>
			<input type="checkbox" name="hobbys" id="game" value="game" <c:if test="${fn:contains(stu.hobby,'game')}">checked</c:if>>
			<label for="game">게임</label>
			<input type="checkbox" name="hobbys" id="golf" value="golf" <c:if test="${fn:contains(stu.hobby,'golf')}">checked</c:if>>
			<label for="game">골프</label>
			<input type="checkbox" name="hobbys" id="run" value="run" <c:if test="${fn:contains(stu.hobby,'run')}">checked</c:if>>
			<label for="game">조깅</label>
			<input type="checkbox" name="hobbys" id="swim" value="swim" <c:if test="${fn:contains(stu.hobby,'swim')}">checked</c:if>>
			<label for="swim">수영</label><br>
			<input type="checkbox" name="hobbys" id="book" value="book" <c:if test="${fn:contains(stu.hobby,'book')}">checked</c:if>>
		
			<label for="read">독서</label>
			<input type="submit" value="성적저장"><br>
			<br>
		</form>
	</body>
</html>