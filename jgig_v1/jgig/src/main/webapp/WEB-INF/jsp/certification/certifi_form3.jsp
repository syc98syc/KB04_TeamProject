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
			<form action="" method="get" class="modal-content modal-body border-0 p-0">
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
						<form action="certification_action" method="post" onsubmit="return validateForm();">

							<div class="subcontent">
								<h3 class="h3-subtitle">인증서 저장 위치</h3>
								<div class="subcontent">
									<span>* 저장 위치는 연습을 위한 양식입니다. 실제 지정 위치에 저장되지 않습니다. </span> <br>
									<div id="loca-div">
									<label><input type="radio" name="save_loca" > 하드 디스크</label>
									<label><input type="radio" name="save_loca">이동식 디스크</label>
									<label><input type="radio" name="save_loca">보안 토큰</label>
									<label><input type="radio" name="save_loca">휴대폰</label>
									</div>
									
								</div>
								
							</div>

							<div class="subcontent">
								<h3 class="h3-subtitle">인증서 암호 입력</h3>
								<div class="subcontent">
									<table class="certifi-table" id="user-add-cttable">
										<colgroup>
											<col style="width: 30%">
											<col style="width: *">
										</colgroup>
										<tbody>

											<tr>
												<th>암호</th>
												<td class="p-sm-2 text-sm-start"><input id="ct_pw" type="password"></td>
											</tr>
											<tr>
												<th>암호 확인</th>
												<td class="p-sm-2 text-sm-start"><input type="password" id="ct_pw_confirm" oninput="checkPassword()"> <span id="pw2_message"></span></td>
											</tr>
											

										</tbody>
									</table>

								</div>

							</div>
							<div class="btn-div">
								<p id="form_msg"></p>
								<button type="submit" class="card-sumit-btn">발급</button>
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
        function checkPassword() {
            var password = document.getElementById("ct_pw").value;
            var confirmPassword = document.getElementById("ct_pw_confirm").value;
            
            var message2 = document.getElementById("pw2_message");

            
            if ( password !== confirmPassword &&confirmPassword.length!==0) {
                message2.innerHTML = "비밀번호가 일치하지 않습니다.";
            } else {
                message2.innerHTML = "";
    
            }
        }
        </script>			


	<script>
	
	
		
		// 폼이 제출될 때 실행되는 함수
	    function validateForm() {
	    
			var save_loca = document.querySelectorAll('input[name="save_loca"]:checked');
			var ct_pw=document.getElementById('ct_pw').value;
			var ct_pw_confirm=document.getElementById('ct_pw_confirm').value;
			
			if(save_loca.length === 0){
				alert("인증서 저장 위치를 선택해 주세요");
				return false;
			}else if(ct_pw===''||ct_pw_confirm===''){
				alert("암호를 설정해주세요.")
				return false;
			}
			

			
			return true;
		}
		
	</script>
	<!-- End Script -->

</body>
</html>
