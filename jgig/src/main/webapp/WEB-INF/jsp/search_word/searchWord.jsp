<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		/* 		$("#searchBtn").click(function(evt) {
		 evt.preventDefault();
		 searchWordHandler();
		 })
		
		 function searchWordHandler() {
		 const word = $("#word").val();
		 console.log(word);
		 } */
	})
</script>
</head>
<body>
	<form action="searchWordResult" method="post" class="search_wrap">
		<input type="text" name="pw_word" id="word">
		<input type="hidden" name="pw_age" value="20">
		<input type="hidden" name="mem_id" value="">
		<button id="searchBtn">검색</button>
	</form>
	<div class="popular_word_list">
		<h3>인기 검색어</h3>
		<table>
			<tr>
				<th>순위</th>
				<th>단어</th>
			</tr>
			<c:forEach items="${word_list}" var="wrd" varStatus="status">
				<tr>
					<th>${status.count}</th>
					<th>${wrd.pw_word }</th>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>