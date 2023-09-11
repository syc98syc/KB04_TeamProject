<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카드조회</title>

</head>
<body>



<h1>카드조회</h1>

<table>
        <tr>
            <th>카드상품</th>
            <th>카드번호</th>
            <th>발급일</th>
            <th>만료일</th>
            <th>사용가능여부</th>
        </tr>
        <c:forEach items="${card_list}" var="c">
        <tr>
            <td>${c.cd_item}</td>
            <td>${c.cd_num}</td>
            <td><fmt:formatDate value="${c.start_date}" pattern="yyyy-MM-dd" /></td>
            <td><fmt:formatDate value="${c.end_date}" pattern="yyyy-MM-dd" /></td>
            <td>${c.cd_status}</td>
           
            <td><button type="button" onclick="location.href='/jgig/card_cancellation_form?no=${c.cd_no}'">해지</button></td>
            <td><button type="button" onclick="location.href='/jgig/card_status_form?no=${c.cd_no}'">분실신고/취소</button></td>
            <td><button type="button" onclick="location.href='/jgig/card_pw_form?no=${c.cd_no}'">비밀번호 변경</button></td>
      	  
        </c:forEach>
    </table>
</body>
</html>