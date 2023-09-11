<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>지금입금</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="/assets/img/apple-touch-icon.png">
<link rel="shortcut icon" type="image/x-icon" href="/assets/img/favicon.ico">

<link rel="stylesheet" href="/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="/assets/css/templatemo.css">
<link rel="stylesheet" href="/assets/css/custom.css">

<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="/assets/css/fontawesome.min.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
</head>
<body>
	<!-- Header -->
	<nav class="navbar navbar-expand-lg navbar-light shadow navcolor">
		<div class="container d-flex justify-content-between align-items-center">

			<a class="navbar-brand text-success logo h1 align-self-center" href="/jgig/"> <img src="/assets/img/KB-logo.png" width="30" height="30" alt=""> <img src="/assets/img/jgig-icon.png" height="45" alt="">
			</a>

			<button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<!-- 화면 작아질시 토글바 -->

			<div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
				<div class="flex-fill">
					<ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
						<li class="nav-item dropdown"><a class="nav-link " href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 금융거래연습 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="/jgig/open_account1">계좌 개설</a></li>
								<li><a class="dropdown-item" href="/jgig/account_list">계좌 조회 및 이체</a></li>
								<li><a class="dropdown-item" href="/jgig/trans_history">거래 내역 조회</a></li>
								<hr>
								<li><a class="dropdown-item" href="/jgig/card_issuance">카드 발급</a></li>
								<li><a class="dropdown-item" href="/jgig/card_list">카드 조회 및 관리</a></li>
								<hr>
								<li><a class="dropdown-item" href="/jgig/certification">인증서 발급</a></li>
							</ul></li>
						<li class="nav-item dropdown"><a class="nav-link " href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 금융교육 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="/jgig/searchWord">금융 용어 검색</a></li>
								<li><a class="dropdown-item" href="#">금융 상식 퀴즈</a></li>
								<hr>
								<li><a class="dropdown-item" href="#">이용 가이드</a></li>
							</ul></li>
						<li class="nav-item dropdown"><a class="nav-link " href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 커뮤니티 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">공지사항</a></li>
								<li><a class="dropdown-item" href="/jgig/board_list">게시판</a></li>
								<li><a class="dropdown-item" href="#">내가 쓴 글</a></li>
							</ul></li>
						<li class="nav-item dropdown"><a class="nav-link " href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 지점찾기 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="/jgig/findStore">지점찾기 및 번호표 발행</a></li>
								<li><a class="dropdown-item" href="/jgig/detailWaiting">번호표 조회 및 취소</a></li>
							</ul></li>
						<li class="nav-item dropdown"><a class="nav-link " href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 마이포인트 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="/jgig/point_list">포인트 조회</a></li>
								<li><a class="dropdown-item" href="/jgig/point_conversion">포인트 전환</a></li>
							</ul></li>
					</ul>
				</div>
				<div class="navbar align-self-center d-flex">
					<div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
						<div class="input-group">
							<input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
							<div class="input-group-text">
								<i class="fa fa-fw fa-search"></i>
							</div>
						</div>
					</div>
					<ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">

						<!--로그인 했을 때 -->
						<c:if test="${not empty sessionScope.mem_id}">
							<li class="nav-item dropdown"><a class="nav-icon position-relative text-decoration-none nav-link" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fa fa-fw fa-user text-dark mr-3"></i> ${sessionScope.mem_nm}님 <!--session값으로 받아오기 -->
							</a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="/jgig/member_detail">마이페이지</a></li>
								</ul></li>
							<li class="nav-item"><a class="nav-link" href="/jgig/logout">로그아웃</a></li>
						</c:if>

						<!--로그인 안 했을 때 -->
						<c:if test="${empty sessionScope.mem_id}">
							<li class="nav-item"><a class="nav-link" href="/jgig/login">로그인</a></li>
							<li class="nav-item"><a class="nav-link" href="/jgig/register">회원가입</a></li>
						</c:if>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	<!-- Close Header -->

	<!-- Modal -->
	<div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="w-100 pt-1 mb-5 text-right">
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<form action="certification_issuance3" method="post" class="modal-content modal-body border-0 p-0">
				<div class="input-group mb-2">
					<input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
					<button type="submit" class="input-group-text bg-success text-light">
						<i class="fa fa-fw fa-search text-white"></i>
					</button>
				</div>
			</form>
		</div>
	</div>

	<!-- Start Content -->
	<div class="container py-5">
		<div class="row">
			<div class="col-lg-2">
				<div class="sidemenubox">
					<h2 class="h3 pt-3 ">금융거래연습</h2>
					<hr>
					
					<ul class="list-unstyled ">
						<li><a class="collapsed d-flex justify-content-between text-decoration-none" href="/jgig/open_account1"> <!--선택된 메뉴는 selectsidemenu 클래스 추가 --> 계좌 개설
						</a></li>
						<li><a class="collapsed d-flex justify-content-between  text-decoration-none" href="/jgig/account_list"> 계좌 조회 및 이체 </a></li>
						<li><a class="collapsed d-flex justify-content-between  text-decoration-none" href="/jgig/trans_history"> 거래 내역 조회 </a></li>
						<hr>
						<li><a class="collapsed d-flex justify-content-between text-decoration-none  " href="/jgig/card_issuance"> 카드발급 </a></li>
						<li><a class="collapsed d-flex justify-content-between text-decoration-none   " href="/jgig/card_list"> 카드 조회 및 관리 </a></li>
						<hr>
						<li><a class="collapsed d-flex justify-content-between  text-decoration-none selectsidemenu" href="/jgig/certification"> 인증서 발급 </a></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-9">
				<div class="row">
					<div class="col-md-6">
						<ul class="list-inline shop-top-menu pt-5 pl-3">
							<h2>인증서 발급</h2>
						</ul>
					</div>
				</div>
				<div class="row">
					<div id="service-content">
						<!-- 여기에 넣으시며 됩니당 -->
						<form action="certification_issuance3" method="post" onsubmit="return validateForm_user();">

							<div class="subcontent">
								<h3 class="h3-subtitle">추가 본인 인증</h3>
								<div class="subcontent">
									<table class="certifi-table">
										<colgroup>
											<col style="width: 30%">
											<col style="width: *">
										</colgroup>
										<tbody>
											<tr>
												<th>ARS 인증</th>
												<td>등록된 고객님의 연락처 중 선택하신 전화번호로 전화연결 후 ARS안내에 따라 본인여부를 확인합니다.</td>
											</tr>
										</tbody>
									</table>

								</div>
								<div class="btn-div">
									<button type="button" class="card-vaild-btn " onclick="openARS();">ARS 인증</button>
								</div>
							</div>

							<div class="subcontent">
								<h3 class="h3-subtitle">사용자 추가 본인확인</h3>
								<div class="subcontent">
									<table class="certifi-table" id="user-add-cttable">
										<colgroup>
											<col style="width: 30%">
											<col style="width: *">
										</colgroup>
										<tbody>

											<tr>
												<th>출금계좌</th>
												<td class="p-sm-2 text-sm-start"><input id="ct_account"></td>
											</tr>
											<tr>
												<th>계좌 비밀번호</th>
												<td class="p-sm-2 text-sm-start"><input type="password" id="ct_account_pw"></td>
											</tr>
											<tr>
												<th>인증 구분</th>
												<td class="p-sm-2 text-sm-start"><input type="radio" id="ct_div_smartotp" name="ct_div" value="smartotp">스마트OTP <input type="radio" id="ct_div_card" name="ct_div" value="card">보안카드</td>
											</tr>
											<tr id="smartotp_image" class="hidden">
												<th>일회용 비밀번호</th>

												<td class="p-sm-2 text-sm-start"><input  id="ct_otp_input" name="ct_otp_input"><br>
												<span>일회용비밀번호생성기(OTP)의 일회용 비밀번호 6자리를 입력해주세요.</span><br> <img src="/assets/img/otp.png" alt="스마트OTP 이미지"> <br><span>위 그림은 연습을 위한 가상의 OTP입니다.</span></td>
											</tr>
											
											
											<tr id="card_num" class="hidden">
												<th>보안카드 일련번호</th>
												<td class="p-sm-2 text-sm-start">보안카드 일련번호 <input type="password" id="ct_secu_input1" maxlength="4"> 일련번호 끝 4자리 입력
												</td>

											</tr>
											<tr id="card_image" class="hidden">
												<th>보안카드 비밀번호</th>
												<td class="p-sm-2 text-sm-start"><input type="password" id="ct_secu_input2" maxlength="2" name="ct_secu_input2"> ●● <span class="text-red">[29]</span> 앞의 두자리<br> ●● <input type="password" maxlength="2" id="ct_secu_input3" name="ct_secu_input3"> <span class="text-blue">[25]</span> 뒤의 두자리 <img src="/assets/img/securitycard.png" alt="보안카드 이미지"></td>
											</tr>

										</tbody>
									</table>

								</div>

							</div>
							<div class="btn-div">
								<button type="submit" class="card-sumit-btn">확인</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Content -->

	<!-- Start Footer -->
	<footer class="footer-cust" id="tempaltemo_footer">
		<div class="w-100 footer-cust py-2">
			<div class="container">
				<div class="row pt-2">
					<div class="col-12">
						<p class="text-left text-light">Copyright &copy; 2023 KB IT's Your Life , Ditto</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- End Footer -->

	<!-- Start Script -->
	<script src="/assets/js/jquery-1.11.0.min.js"></script>
	<script src="/assets/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="/assets/js/bootstrap.bundle.min.js"></script>
	<script src="/assets/js/templatemo.js"></script>
	<script src="/assets/js/custom.js"></script>



	<script>
		// JavaScript
		var ctDivSmartOTP = document.getElementById('ct_div_smartotp');
		var ctDivCard = document.getElementById('ct_div_card');
		var smartOTPImage = document.getElementById('smartotp_image');
		var cardImage = document.getElementById('card_image');
		var cardNum = document.getElementById('card_num');

		ctDivSmartOTP.addEventListener('change', function() {
			if (ctDivSmartOTP.checked) {
				showImage('smartotp_image');
			}
		});

		ctDivCard.addEventListener('change', function() {
			if (ctDivCard.checked) {
				showImage('card_image');
			}
		});
		

		function showImage(imageId) {
			smartOTPImage.classList.add('hidden');
			cardImage.classList.add('hidden');
			cardNum.classList.add('hidden');
			
			if(imageId==='card_image'){
			var cardnum=document.getElementById('card_num');
				cardnum.classList.remove('hidden');
			}
			var image = document.getElementById(imageId);
			image.classList.remove('hidden');
		}
		
		
		//ars 확인 함수
		function check_ars() {
			var isars = ${sessionScope.isARS};
			console.log("isars" + isars);

			if (isars === true) {
				//console.log("isARS exists:", isars);
				return true;
			} else {
				alert("ARS 인증이 필요합니다.");
				return false;
			}

		}
		// 폼이 제출될 때 실행되는 함수
	    function validateForm_user() {
	    	if (!check_ars()) {
				return false;
			}
			
			var ct_account=document.getElementById('ct_account').value;
			var ct_account_pw=document.getElementById('ct_account_pw').value;
			var ct_div = document.querySelectorAll('input[name="ct_div"]:checked');
			
			if(ct_account===''||ct_account_pw===''||ct_div.length === 0){
				alert("추가 본인확인이 완료되지 않았습니다.");
				return false;
			}
			
	    	
		var checked_certi_div = document
					.querySelector('input[name="ct_div"]:checked').value;
			if (checked_certi_div === "smartotp") {
				var ct_otp_input = document.getElementById('ct_otp_input').value;
				if (ct_otp_input !== '050109') {
					alert("일회용 비밀번호가 다릅니다.");
					return false;
				}
			}
			
			if (checked_certi_div === "card") {
				var ct_secu_input1 = document.getElementById('ct_secu_input1').value;
				var ct_secu_input2 = document.getElementById('ct_secu_input2').value;
				var ct_secu_input3 = document.getElementById('ct_secu_input3').value;
				
				if (ct_secu_input1!=='2938' ||ct_secu_input2!=='01'||ct_secu_input3!=='75') {
					alert("보안카드 비밀번호가 다릅니다");
				return false;
				}

			}

			
			return true;
		}
	</script>
	
	<script>
    function openARS() {
        var arsWindow = window.open('/jgig/ars', 'ARSWindow', 'width=800, height=1200, top=50, left=50');
        
        // ARS 창이 닫히면 부모 창을 새로 고침
        arsWindow.onbeforeunload = function() {
            window.opener.location.reload(); // 부모 창 새로 고침
        };
    }
</script>
	<!-- End Script -->

</body>
</html>
