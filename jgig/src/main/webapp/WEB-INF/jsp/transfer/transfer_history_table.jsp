<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>거래테이블</title>
</head>
	<body>
		<div class="accountListCss">
			<table>
				<thead>
					<tr>
						<th class="bgc">거래일시</th>
						<th class="bgc">보내는분</th>
						<th class="bgc">받는분</th>
						<th class="bgc">받은금액(원)</th>
						<th class="bgc">보낸금액(원)</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${empty transferList}">
		                <tr>
		                    <td colspan="5" style="text-align: center;">거래 내역이 없습니다.</td>
		                </tr>
		            </c:if>
					<c:forEach items="${transferList}" var="transferDto">
						<tr>
							<td><fmt:formatDate value="${transferDto.trans_date}"
									pattern="yyyy/MM/dd HH:mm:ss" /></td>
							<td>${transferDto.send_nm}</td>
							<td>${transferDto.receive_nm}</td>
							<td><fmt:formatNumber value="${transferDto.withdr_mon}"
									pattern="#,###" />원</td>
							<td><fmt:formatNumber value="${transferDto.depo_mon}"
									pattern="#,###" />원</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</body>
</html>