<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
    <!-- 포인트 내역 테이블 -->
    <table>
        <tr>
            <th>포인트</th>
            <th>적립일시</th>
            <th>적립 내역</th>
        </tr>
<c:forEach items="${pointList}" var="p">
	<tr>
		<td>${p.point}</td>
		<td>${p.point_date}</td>
		<td>${p.division}</td>ㄴ
	</tr>
</c:forEach>

    </table>

