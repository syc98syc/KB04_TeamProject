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
		<h1>계좌관리</h1>
		<table>
			<tr>
				<th>상품명</th><td>${dto.act_name}</td>
			</tr>
			<tr>
				<th>계좌번호 </th><td>${dto.account}</td>
			</tr>
			<tr>
				<th>발급일시</th><td>${formattedRegdate}</td>
			</tr>
			<tr>
				<th>잔액</th><td>${dto.balance}</td>
			</tr>
		</table>
		<a href = "update_password?account=${dto.account}" class ="button-like-link">비밀번호 수정</a>
		<a href = "termination?account=${dto.account}" class ="button-like-link" >계좌해지</a><br>
	</body>
</html>