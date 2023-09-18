<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경 완료</title>
</head>
<body>

	<h1>카드 비밀번호 변경</h1>



	<table>

		<tr>
			<th>카드 상품명</th>
			<td>${cardDto.cd_item}</td>
		</tr>

		<tr>
			<th>카드 번호</th>
			<td>${cardDto.cd_num}</td>
		</tr>


		<tr>
			<th>상태</th>
			<td>${cardDto.cd_status}</td>
		</tr>

	</table>

	해당 카드의 비밀번호 변경이 완료되었습니다.

</body>
</html>