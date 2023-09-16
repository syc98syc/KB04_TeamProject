<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>거래테이블</title>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<!-- Bootstrap JavaScript 파일 -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		
		<script>
			var $j = jQuery.noConflict();
		    
		    $j(function(){
		        $j("#myModal").modal('show');
		    });
		    $j('#modalClose').click(function(){
	            $j('#myModal').modal('hide')
	        })
	</script>
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
			<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog">
					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">거래 내역 조회 연습 완료!</h4>
						</div>
						<div class="modal-body">
							<p>${point}</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal" id="modalClose">Close</button>
						</div>
					</div>
				</div>
			</div>
			<br>
			<nav aria-label="Page navigation example"
				class="nav justify-content-center">
				<ul class="pagination_account">
					<c:if test="${hasPrevious}">
						<li class="page-item">
						<a class="page-link_account"
							onclick="pagetest('${currentPage-1}')"
							aria-label="Previous"> <span aria-hidden="true">이전</span>
						</a></li>
					</c:if>
		
					<c:forEach begin="${startPage}" end="${endPage}" var="page">
						<c:choose>
							<c:when test="${page == currentPage}">
								<li class="page-item active"><span
									class="page-link_account_choice">${page} <span
										class="sr-only">(current)</span></span></li>
							</c:when>
							<c:otherwise>
								<li class="page-item">
								<a class="page-link_account"onclick="pagetest('${page}')">${page}</a>
								</li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
		
					<c:if test="${hasNext}">
						<li class="page-item">
						<a class="page-link_account"onclick="pagetest('${currentPage+1}')" aria-label="Next"> <span aria-hidden="true">다음</span></a>
						</li>
					</c:if>
				</ul>
			</nav>
		</div>
	</body>
</html>