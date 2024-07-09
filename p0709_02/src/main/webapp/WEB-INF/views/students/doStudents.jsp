<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>학생성적완료</title>

	<style>
		h2{text-color: grey;}
        body {
            background-color: #f0f8ff;
            display: flex;
            align-items: center;
          }
        table {
            border-collapse: separate;
           
            overflow: hidden;
            border-radius: 10px;
        }
        th, td {
            border: 1px solid #4cacaf;
            padding: 12px 15px;
            text-align: center;
         
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
	
	</head>
	
	<body>
		
		<h2>♡학생성적확인</h2>
		<form action="stuUpdate" method="post" name="frm">
		<input type="hidden" name="stuNo" value="${stu.stuNo }">
		<input type="hidden" name="name" value="${stu.name }">
		<input type="hidden" name="kor" value="${stu.kor }">
		<input type="hidden" name="eng" value="${stu.eng }">
		<input type="hidden" name="math" value="${stu.math }">
		<input type="hidden" name="rank" value="${stu.rank }">
		<input type="hidden" name="gender" value="${stu.gender }">
		<input type="hidden" name="hobby" value="${stu.hobby }">
			<table>
		
				<tr>
					<th>제목</th>
					<th>내용</th>
				</tr>
				<tr>
					<td>학번</td>
					<td>${stu.stuNo }</td>
				</tr>
				<tr>
					<td>이름</td>
					<td>${stu.name}</td>
				</tr>

				<tr>
					<td>국어점수</td>
					<td>${stu.kor}</td>
				</tr>
				<tr>
					<td>영어점수</td>
					<td>${stu.eng}</td>
				</tr>
				<tr>
					<td>수학점수</td>
					<td>${stu.math}</td>
				</tr>
				<tr>
					<td>합계</td>
					<td>${stu.total }</td>
				</tr>
				<tr>
					<td>평균</td>
					<td>${stu.avg }</td>
				</tr>
				<tr>
					<td>등수</td>
					<td>${stu.rank }</td>
				</tr>
				<tr>
					<td>성별</td>
					<td>${stu.gender }</td>
				</tr>
				<tr>
					<td>취미</td>
					<td>${stu.hobby }</td>
				</tr>
				
			</table>
			<input type="submit" value="수정">
		</form>
	</body>
</html>