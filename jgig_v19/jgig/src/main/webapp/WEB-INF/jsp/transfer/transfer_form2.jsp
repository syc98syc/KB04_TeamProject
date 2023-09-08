<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>계좌조회 및 이체</title>
		<style>
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
		<h1>입력내용 확인</h1>
		<form action = "transfer_action" method = "post">
			<input type = "hidden" name = "withdr_mon" value = "${dto.withdr_mon}">
			<input type = "hidden" name = "send_nm" value = "${dto.send_nm}">
			<input type = "hidden" name = "mem_id" value = "${dto.mem_id}">
			<input type = "hidden" name = "receive_nm" value = "${dto.receive_nm}">
			
			<table>
			<tr>
				<th>출금계좌번호</th>
				<td><input type = "hidden" name = "account" value = "${dto.account}"></td>
			</tr>
			
			<tr>
				<th>입금은행</th>
				<td><input type ="text" name = "depo_bank" value = "${dto.depo_bank}"></td>
			</tr>
			<tr>
				<th>입금계좌번호</th>
				<td><input type = "text" name = "depo_num" value = "${dto.depo_num}"></td>
			</tr>
			<tr>
				<th>이체금액</th>
				<td><input type = "text" name = "depo_mon" value = "${dto.depo_mon}"></td>
			</tr>
			</table>
			
			<input type = "submit" value = "확인">
		</form>
	</body>
</html>