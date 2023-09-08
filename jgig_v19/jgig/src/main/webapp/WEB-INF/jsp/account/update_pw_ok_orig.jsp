<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>계좌조회및이체</title>
		<style>
			table, tr, th, td{
				border: 1px solid black
			}
			/* 버튼 스타일링 */
	        .button-like-link {
	            display: inline-block;
	            padding: 3px 10px;
	            background-color: #FED671;
	            color: black;
	            text-decoration: none;
	            border: 1px solid black;
	            cursor: pointer;
	            border-radius: 5px;
	            font-weight: bold;
	        }
	
	        /* 버튼에 호버 효과 추가 */
	        .button-like-link:hover {
	            background-color: #E5CC7C;
	        }
		</style>
	</head>
	<body>
		<h1>비밀번호 수정</h1>
		<table>
			<tr>
				<td>상품명</td>
				<td>${dto.act_name}</td>
			</tr>
			<tr>
				<td>계좌번호</td>		
				<td>${dto.account}</td>
			</tr>
			<tr>
				<td>비밀번호수정</td>
				<td>${dto.act_password}</td>
			</tr>
		</table>
		<strong>${msg}</strong><br>
		<a href = "account_list" class ="button-like-link">계좌조회 및 이체</a>
	</body>
</html>