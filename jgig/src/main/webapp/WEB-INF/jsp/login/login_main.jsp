<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
</head>
<body>

	<h2>메인페이지</h2>

	<p>${memberDto.mem_nm}님</p>
	<p>안녕하세요!</p>

	<form action="logout" method="post">
		<button type="submit">로그아웃</button>
	</form>
	<form action="member_detail" method="post">
		<input type="hidden" name="mem_id" value="${memberDto.mem_id}">
		<button type="submit">마이페이지</button>
	</form>

	<form action="point_list" method="post">
		<input type="hidden" name="mem_id" value="${pointDto.mem_id}">
		<button type="submit">포인트조회</button>
	</form>
</body>
</html>