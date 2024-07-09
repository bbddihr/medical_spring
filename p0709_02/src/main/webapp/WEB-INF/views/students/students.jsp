<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>form</title>
	</head>
	   <style>
       
        form {
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 300px;
        }
        h2 {
            color: grey;
        }
       
        input[type="submit"] {
            display: block;
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: pink;
            color: white;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
        }
        input[type="submit"]:hover {
            background-color: grey;
        }
    </style>
	<body>
		<h2>성적입력</h2>
		<form action="doStudents" name=sfrm method="post">
			<label>학번</label>
			<input type="text" name="stuNo"><br>
			<label>이름</label>
			<input type="text" name="name"><br>
			<label>국어</label>
			<input type="text" name="kor"><br>
			<label>영어</label>
			<input type="text" name="eng"><br>
			<label>수학</label>
			<input type="text" name="math"><br>
			
			<label>성별</label><br>
			<input type="radio" name="gender" id="male" value="male">
			<label for="male">남자</label>
			<input type="radio" name="gender" id="female" value="female">
			<label for="female">여자</label>
			<br>
			<label>취미</label><br>
			<input type="checkbox" name="hobbys" id="game" value="game">
			<label for="game">게임</label>
			<input type="checkbox" name="hobbys" id="golf" value="golf">
			<label for="game">골프</label>
			<input type="checkbox" name="hobbys" id="run" value="run">
			<label for="game">조깅</label>
			<input type="checkbox" name="hobbys" id="swim" value="swim">
			<label for="swim">수영</label><br>
			<input type="checkbox" name="hobbys" id="game" value="game">
		
			<label for="read">독서</label>
			<input type="submit" value="성적저장"><br>
			<br>
		</form>
	</body>
</html>