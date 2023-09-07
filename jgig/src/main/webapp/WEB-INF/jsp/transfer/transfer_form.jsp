<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>계좌조회 및 이체</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
</head>
	<body>
		<h1>계좌이체</h1>
		<fieldset>
			<h2>이체정보입력</h2>
			<form action="transfer_form2" method = "post">
				<input type = "hidden" name = "account" value = "${dto.account}">
				<input type = "hidden" name = "withdr_mon" value = "0">
				<input type = "hidden" name = "send_nm" value = "${dto.mem_nm}">
				<input type = "hidden" name = "mem_id" value = "${dto.mem_id}">
				<table>
						<tr>
							<th>출금계좌번호</th>
							<td>${dto.account}</td>
						</tr>
						<tr>
							<th>입금은행</th>
							<td><input type = "text" name = "depo_bank" value = "국민" required></td>
						</tr>
						<tr>
							<th>받는분</th>
							<td><input type = "text" name = "receive_nm" required></td>
						</tr>
						<tr>
							<th>입금계좌번호</th>
							<td><input type = "text" name = "depo_num" required></td>
						</tr>
						<tr>
							<th>이체금액</th>
							<td><input type = "text" name = "depo_mon" required></td>
						</tr>
						<tr>
							<th>계좌비밀번호</th>
							<td><input type = "text" name = "act_password" required></td>
						</tr>
				</table>
				<input type = "submit" value = "이체">
			</form>
			<p>${errorMessage}</p>
		</fieldset>
	</body>
</html>