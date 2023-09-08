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
		</style>
	</head>
	<body>
		<h1>비밀번호수정</h1>
		<fieldset>
			<form action="update_password_action" method = "post">
				<input type = "hidden" name = "account" value = "${dto.account}">
				<input type = "hidden" name = "act_name" value = "${dto.act_name}">
				<table>
					<tr>
						<th>상품명</th><td>${dto.act_name}</td>
					</tr>
					<tr>
						<th>계좌번호 </th><td>${dto.account}</td>
					</tr>
				</table>
				계좌비밀번호 수정 : <input type = "text" name = "act_password"  minlength = "4" maxlength = "4" value = "${dto.act_password}"><br>
				<input type = "submit" value = "비밀번호수정">
			</form>
		</fieldset>
	</body>	
</html>