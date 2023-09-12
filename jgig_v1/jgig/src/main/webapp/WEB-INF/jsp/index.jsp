<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


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

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="/assets/css/fontawesome.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
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



	<!-- Start Banner Hero -->
	<div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
		<ol class="carousel-indicators">
			<li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
			<li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
			<li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<div class="container height350">
					<div class="row p-5">
						<div class="mx-auto col-md-8 col-lg-6 order-lg-last">
							<img class="img-fluid" src="/./assets/img/banner_img_01.jpg" alt="">
						</div>
						<div class="col-lg-6 mb-0 d-flex align-items-center">
							<div class="text-align-left align-self-center">
								<h1 class="h1 text-success">
									<b>Zay</b> eCommerce
								</h1>
								<h3 class="h2">Tiny and Perfect eCommerce Template</h3>
								<p>
									Zay Shop is an eCommerce HTML5 CSS template with latest version of Bootstrap 5 (beta 1). This template is 100% free provided by <a rel="sponsored" class="text-success" href="https://templatemo.com" target="_blank">TemplateMo</a> website. Image credits go to <a rel="sponsored" class="text-success" href="https://stories.freepik.com/" target="_blank">Freepik Stories</a>, <a rel="sponsored" class="text-success" href="https://unsplash.com/" target="_blank">Unsplash</a> and <a rel="sponsored" class="text-success" href="https://icons8.com/" target="_blank">Icons 8</a>.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="container">
					<div class="row p-5 ">
						<div class="mx-auto col-md-8 col-lg-6 order-lg-last">
							<img class="img-fluid" src="/./assets/img/banner_img_02.jpg" alt="">
						</div>
						<div class="col-lg-6 mb-0 d-flex align-items-center">
							<div class="text-align-left">
								<h1 class="h1">Proident occaecat</h1>
								<h3 class="h2">Aliquip ex ea commodo consequat</h3>
								<p>
									You are permitted to use this Zay CSS template for your commercial websites. You are <strong>not permitted</strong> to re-distribute the template ZIP file in any kind of template collection websites.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="container ">
					<div class="row p-5 height350">글쓸</div>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev"> <i class="fas fa-chevron-left  "></i>
		</a> <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next"> <i class="fas fa-chevron-right"></i>
		</a>
	</div>
	<!-- End Banner Hero -->


	<!-- Start 공지사항, 회원랭킹 -->
	<section class="container py-5">
		<div class="row">
			<div class="col-lg-8">
				<div class="main_board">
					<div class="tab_menu">
						<ul class="list">
							<li class="is_on"><a class="main-brd-a" onclick="showTab('tab1', this)">공지사항</a></li>
							<li><a class="main-brd-a" onclick="showTab('tab2', this)">게시판</a></li>
							<li><a class="main-brd-a" onclick="showTab('tab3', this)">Q&A</a></li>
						</ul>
						<br>
						<div id="tab1" class="cont">
							<ul>
								<c:forEach items="${notice_list}" var="nl">

									<li><a class="brd_title" href="/jgig/notice_detail?no=${nl.ntc_id}"> ${nl.title}</a> <span class="brd_date"> <fmt:formatDate value="${nl.ntc_date_created}" pattern="yyyy-MM-dd" /></span></li>



								</c:forEach>
							</ul>
						</div>
						<div id="tab2" class="cont">
							<ul>
								<c:forEach items="${free_list}" var="fl">

									<li><a class="brd_title" href="/jgig/board_detail?no=${fl.brd_id}"> ${fl.title}</a> <span class="brd_date"> <fmt:formatDate value="${fl.brd_date_created}" pattern="yyyy-MM-dd" /></span></li>



								</c:forEach>
							</ul>
						</div>
						<div id="tab3" class="cont">
							<ul>
								<c:forEach items="${question_list}" var="ql">

									<li><a class="brd_title" href="/jgig/board_detail?no=${ql.brd_id}"> ${ql.title}</a> <span class="brd_date"> <fmt:formatDate value="${ql.brd_date_created}" pattern="yyyy-MM-dd" /></span></li>



								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</div>



			<div class="col-lg-4">
				<div class="subcontent text-center">
					<button type="button"  class="att_btn " onclick="return isLogin();">
						<img src="/assets/img/attendance-icon.png" height="30px">출석체크
					</button>
				</div>

				<div class="subcontent">
					<table id="rank-table" class="text-center">
						<thead>
							<tr>
								<th colspan="3" class="text-center p-sm-2">
									<div class="horizontal-center">
										<img src="/assets/img/ranking.png" height="30px"> <span class="h3 fw-bold m-0">포인트 순위</span>
									</div>
								</th>
							</tr>
						</thead>
						<c:forEach items="${point_rank}" var="pr" varStatus="loop">

							<tr>

								<td class="left-round fw-bold">${loop.index + 1}</td>
								<td>${pr.nickname}</td>
								<td class="right-round text-sm-start"><img src="/assets/img/coins.png" height="20px"> ${pr.score}</td>

							</tr>

						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</section>
	<!-- End 공지사항, 회원랭킹 -->





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
		//게시판 tab함수
		function showTab(tabId, clickedButton) {

			// Get all the content divs
			var contentDivs = document.querySelectorAll('.cont');

			// Loop through all content divs
			for (var i = 0; i < contentDivs.length; i++) {
				// Hide all content divs
				contentDivs[i].style.display = 'none';
			}

			// Show the selected content div
			var selectedTab = document.getElementById(tabId);
			if (selectedTab) {
				selectedTab.style.display = 'block';
			}
			// Reset the color of all buttons
			var buttons = document.querySelectorAll('.main-brd-a');
			for (var i = 0; i < buttons.length; i++) {
				buttons[i].style.color = ''; // Reset to default color
			}

			// Change the color of the clicked button
			if (clickedButton) {
				clickedButton.style.color = 'white'; // Change to the desired color
			}
		}
		
		
		function isLogin(){
			
			if("${sessionScope.mem_id}"===''){
				alert("로그인이 필요합니다.");
				window.location.href='/jgig/login';
				return false;
			}else{
				window.open( '/jgig/attendance', 'Child', 'width=750px, height=800px, top=50, left=50' );
				return true;
			}
		}
		
		
	</script>
	<!-- End Script -->
</body>

</html>