<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>계좌조회 및 이체</title>
		<style>
			table, tr, td{
				border: 1px solid black
			}
			th{
				background-color : #bfbfbf;
				border: 1px solid black
			}
	        /* 버튼 스타일링 */
	        .button-like-link {
	            display: inline-block;
	            padding: 3px 10px;
	            background-color: #f0f0f0;
	            color: black;
	            text-decoration: none;
	            border: 1px solid black;
	            cursor: pointer;
	            border-radius: 5px;
	        }
	
	        /* 버튼에 호버 효과 추가 */
	        .button-like-link:hover {
	            background-color: #717171;
	        }
		</style>
	</head>
	<body>
		<h1>계좌목록</h1>
		<h2>총 예금 잔액 </h2>
		<table>
			<c:forEach items="${account_list}" var ="acc">
			<tr>
				<th colspan=3>입출금 계좌</th>
			</tr>
			<tr>
				<td rowspan = 2>${acc.account}<br>${acc.act_name}</td>
				<td rowspan = 2>잔액 ${acc.balance}원</td>
				<td>
					<a href = "account_management?account=${acc.account}" class ="button-like-link">관리</a>
					<a href = "transfer_form?account=${acc.account}" class ="button-like-link">이체</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href = "account_management?account=${acc.account}" class ="button-like-link">내역조회</a>
				</td>
			</tr>
			</c:forEach>
		</table>
	</body>
</html>