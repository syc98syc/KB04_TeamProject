<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>발급완료</title>
</head>
<body>

	<h1>카드 발급</h1>



	<table>

		<tr>
			<th>카드 상품명</th>
			<td>${card_success.cd_item}</td>
		</tr>

		<tr>
			<th>출금계좌</th>
			<td>${card_success.pay_account}</td>
		</tr>


 
    
		<tr>
			<th>발급일</th>
			<td>  <fmt:formatDate value="${card_success.start_date}" pattern="yyyy-MM-dd HH:mm:ss" /> </td>
		</tr>

	</table>

	해당 카드의 발급이 완료되었습니다.

</body>
</html>