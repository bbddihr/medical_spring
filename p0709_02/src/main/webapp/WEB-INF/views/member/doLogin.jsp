<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인완료</title>
	<style>
		 table {
            border: 1px solid green;
            border-collapse: collapse;
            width: 50%;
            margin: 20px 0;
            font-family: 'Arial', sans-serif;
        }
        th, td {
            border: 1px solid green;
            width: 200px;
            height: 40px;
            text-align: center;
            padding: 10px;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        td {
            background-color: #f9f9f9;
        }
        tr:nth-child(even) td {
            background-color: #e9e9e9;
        }
        tr:hover td {
            background-color: #d1e7dd;
        }
        
	</style>
	</head>
	
	<body>
		<h2>로그인 정보</h2>
		<table>
			
			<tr>
				<th>제목</th>
				<th>내용</th>
			</tr>
			<tr>
				<td>아이디</td>
				<td>${id }</td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td>${pw }</td>
			</tr>
			<tr>
				<td>페이지번호</td>
				<td>${pno}</td>
			</tr>
			
			
		</table>
	</body>
</html>