<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 삭제</title>
</head>
<body>
	<h1>게시물 삭제</h1>
	<a href="board_list">게시물 목록</a> <br>
	<form action="board_delete_action" method="post">
		<fieldset>
			<input type="hidden" name="brd_id" value="${dto.brd_id}">
			게시물 제목 : <input type="text" name="title" value="${dto.title}"> <br>
			<c:if test="${dto.brd_category=='자유'}">
			게시물 카테고리 : 자유<input type="radio" name="brd_category" value='자유' checked>
						질문<input type="radio" name="brd_category" value='질문'><br>
			</c:if>
			<c:if test="${dto.brd_category=='질문'}">
			게시물 카테고리 : 자유<input type="radio" name="brd_category" value='자유'>
						질문<input type="radio" name="brd_category" value='질문' checked><br>
			</c:if>
			게시물 작성자 : <input type="text" name="mem_id" value="${dto.mem_id}"> <br>
			게시물 내 용 : <br>
			<textarea rows="3" cols="55" name="brd_content">${dto.brd_content}</textarea>
			<br>
			<input type="submit" value="게시물 삭제">
		</fieldset>
	</form>

</body>
</html>

