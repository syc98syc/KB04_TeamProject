<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <th>카드번호</th>
            <th>카드상품</th>
            <th>이름</th>
            <th>전화번호</th>
        </tr>
        <c:forEach items="${list}" var="c">
        <tr>
            <td>${c.cd_num}</td>
            <td>${c.cd_item}</td>
            <td>${c.cd_name}</td>
            <td>${c.cd_phone}</td>
        </c:forEach>
    </table>
</body>
</html>