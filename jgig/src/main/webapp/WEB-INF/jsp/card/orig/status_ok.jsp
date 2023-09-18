<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>해지완료</title>
</head>
<body>

	<h1>카드 분실신고/취소</h1>



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

	<c:choose>
		<c:when test = "${cardDto.cd_status=='정상'}">
            해당 카드의 분실신고 취소가 완료되었습니다.
    	</c:when>
    	<c:otherwise>
            해당 카드의 분실신고가 완료되었습니다.
    	</c:otherwise>
    </c:choose>

</body>
</html>