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
	
	})
</script>
</head>
<body>
	<h1>${word} 검색 결과 </h1>
	<h3>총 ${totalCount}건의 금융용어가 검색되었습니다.</h3>
	<div class="search_result">
		<ul>
	<%-- ${result_list.size()} --%>
		<c:forEach items="${result_list}" var="item">
			<li>
				<div>
					<span>${item.word}</span>
				</div>
				<div>
					<p>${item.content}</p>
				</div>
			</li>
		</c:forEach>
		</ul>
	</div>
</body>
</html>