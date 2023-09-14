<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>

<html id="attendance">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>지금입금 출석체크</title>

<link rel="stylesheet" href="/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="/assets/css/templatemo.css">
<link rel="stylesheet" href="/assets/css/custom.css">
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=IBM+Plex+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Russo+One&display=swap" rel="stylesheet">

<c:if test="${not empty sessionScope.checkinSuccess}">
	<c:choose>
		<c:when test="${sessionScope.checkinSuccess eq false}">
			<script>
                alert('이미 출석체크 하셨습니다.');
            </script>
		</c:when>
		<c:otherwise>
			<script>
                alert('출석체크가 완료되었습니다.');
            </script>
		</c:otherwise>
	</c:choose>
	<c:remove var="checkinSuccess" scope="session" />
</c:if>
</head>
<body>

	<div class="att-content">

		<div class="att-title vertical-center">
			<span>출석체크</span>
		</div>

			<img src="/assets/img/rubber-stamp.png" id="stamp-img">
		<div class="att-checklist">

			<table class="att-table">
				<c:set var="counter" value="0" />
				<c:forEach var="row" begin="1" end="5">
					<tr>
						<c:forEach var="col" begin="1" end="6">
							<c:set var="counter" value="${counter + 1}" />
							<c:set var="attValue" value="${att_yes[counter]}" />
							<td><c:choose>
									<c:when test="${attValue eq counter}">
										<img src="/assets/img/att-yes.png" width="70px">
									</c:when>
									<c:otherwise>
										<span>${counter}</span>

									</c:otherwise>
								</c:choose></td>
						</c:forEach>
					</tr>
				</c:forEach>

				<tr>
					<td><c:choose>
							<c:when test="${dayOfMonth eq '31'}">
								<span>31</span>
							</c:when>
						</c:choose></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>

			</table>

		</div>

		<div class="att-btn">
		<form action="/jgig/checkin" method="post">
			<button type="submit">출석체크</button>
		</form>
		</div>



	</div>






</body>
</html>