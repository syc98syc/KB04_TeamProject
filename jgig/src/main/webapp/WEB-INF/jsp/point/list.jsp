<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>포인트 내역</title>
</head>
<body>
    <h1>나의 포인트</h1>
    
    
    <form action="/jgig/point_list" method="post">
    <!-- 포인트 내역 테이블 -->
    <table>
        <tr>
            <th>포인트</th>
            <th>적립일시</th>
            <th>적립 내역</th>
        </tr>
        <c:forEach var="point" items="${pointList}">
            <tr>
                <td>${point.point}</td>
                <td>${point.point_date}</td>
                <td>${point.division}</td>
            </tr>
        </c:forEach>
    </table>
    
    <!-- 총 포인트 표시 -->
    <p> 포인트: ${totalPoint}</p>
    </form>
</body>
</html>
