<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


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

            <a class="navbar-brand text-success logo h1 align-self-center" href="/jgig/">
                <img src="/assets/img/KB-logo.png" width="30" height="30" alt="">
                <img src="/assets/img/jgig-icon.png"  height="45" alt="">
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button> <!-- 화면 작아질시 토글바 -->

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                      	<li class="nav-item dropdown">
                        	<a class="nav-link " href="/jgig/open_account1"   role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            금융거래연습
                        	</a>
                        	<ul class="dropdown-menu">
                           	 <li><a class="dropdown-item" href="/jgig/open_account1">계좌 개설</a></li>
                             <li><a class="dropdown-item" href="/jgig/account_list">계좌 조회 및 이체</a></li>
                             <li><a class="dropdown-item" href="/jgig/trans_history">거래 내역 조회</a></li>
                             <hr>
                             <li><a class="dropdown-item" href="/jgig/card_issuance">카드 발급</a></li>
                             <li><a class="dropdown-item" href="/jgig/card_list">카드 조회 및 관리</a></li>
                             <hr>
                             <li><a class="dropdown-item" href="/jgig/certification">인증서 발급</a></li>
                        	</ul>
                    	</li>
                        <li class="nav-item dropdown">
                        	<a class="nav-link " href="/jgig/searchWord"   role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            금융교육
                        	</a>
                        	<ul class="dropdown-menu">
                           	  <li><a class="dropdown-item" href="/jgig/searchWord">금융 용어 검색</a></li>
                             <li><a class="dropdown-item" href="#">금융 상식 퀴즈</a></li>
                             <hr>
                             <li><a class="dropdown-item" href="#">이용 가이드</a></li>
                        	</ul>
                    	</li>
                    	<li class="nav-item dropdown">
                        	<a class="nav-link " href="#공지사항링크"   role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            커뮤니티
                        	</a>
                        	<ul class="dropdown-menu">
                           	 <li><a class="dropdown-item" href="#">공지사항</a></li>
                             <li><a class="dropdown-item" href="/jgig/board_list">게시판</a></li>
                             <li><a class="dropdown-item" href="#">내가 쓴 글</a></li>
                        	</ul>
                    	</li>
                    	<li class="nav-item dropdown">
                        	<a class="nav-link " href="/jgig/findStore"   role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            지점찾기
                        	</a>
                        	<ul class="dropdown-menu">
                           	 <li><a class="dropdown-item" href="/jgig/findStore">지점찾기 및 번호표 발행</a></li>
                             <li><a class="dropdown-item" href="/jgig/detailWaiting">번호표 조회 및 취소</a></li>
                        	</ul>
                    	</li>
                    	<li class="nav-item dropdown">
                        	<a class="nav-link " href="/jgig/point_list"   role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            마이포인트
                        	</a>
                        	<ul class="dropdown-menu">
                           	 <li><a class="dropdown-item" href="/jgig/point_list">포인트 조회</a></li>
                             <li><a class="dropdown-item" href="/jgig/point_conversion">포인트 전환</a></li>
                        	</ul>
                    	</li>
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
							<li class="nav-item dropdown">
								<a class="nav-icon position-relative text-decoration-none nav-link"
									href="/jgig/member_detail" role="button" data-bs-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> <i
										class="fa fa-fw fa-user text-dark mr-3"></i>
									${sessionScope.mem_nm}님 <!--session값으로 받아오기 -->
								</a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="/jgig/member_detail">마이페이지</a></li>
								</ul>
							</li>
							<li class="nav-item"><a class="nav-link" href="/jgig/logout">로그아웃</a>
							</li>
						</c:if>
						
						<!--로그인 안 했을 때 -->
						<c:if test="${empty sessionScope.mem_id}">
							<li class="nav-item"><a class="nav-link" href="/jgig/login">로그인</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="/jgig/register">회원가입</a>
							</li>
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
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="/./assets/img/banner_img_01.jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left align-self-center">
                                <h1 class="h1 text-success"><b>Zay</b> eCommerce</h1>
                                <h3 class="h2">Tiny and Perfect eCommerce Template</h3>
                                <p>
                                    Zay Shop is an eCommerce HTML5 CSS template with latest version of Bootstrap 5 (beta 1). 
                                    This template is 100% free provided by <a rel="sponsored" class="text-success" href="https://templatemo.com" target="_blank">TemplateMo</a> website. 
                                    Image credits go to <a rel="sponsored" class="text-success" href="https://stories.freepik.com/" target="_blank">Freepik Stories</a>,
                                    <a rel="sponsored" class="text-success" href="https://unsplash.com/" target="_blank">Unsplash</a> and
                                    <a rel="sponsored" class="text-success" href="https://icons8.com/" target="_blank">Icons 8</a>.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="/./assets/img/banner_img_02.jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1">Proident occaecat</h1>
                                <h3 class="h2">Aliquip ex ea commodo consequat</h3>
                                <p>
                                    You are permitted to use this Zay CSS template for your commercial websites. 
                                    You are <strong>not permitted</strong> to re-distribute the template ZIP file in any kind of template collection websites.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="/./assets/img/banner_img_03.jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1">Repr in voluptate</h1>
                                <h3 class="h2">Ullamco laboris nisi ut </h3>
                                <p>
                                    We bring you 100% free CSS templates for your websites. 
                                    If you wish to support TemplateMo, please make a small contribution via PayPal or tell your friends about our website. Thank you.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
            <i class="fas fa-chevron-left"></i>
        </a>
        <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
            <i class="fas fa-chevron-right"></i>
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
							<li class="is_on"><a class="btn" onclick="showTab('tab1')">공지사항</a></li>
							<li><a class="btn" onclick="showTab('tab2')">게시판</a></li>
							<li><a class="btn" onclick="showTab('tab3')">Q&A</a></li>
						</ul>
						<br>
						<div id="tab1" class="cont">
						공지사항
						</div>
						<div id="tab2" class="cont">
<ul>
								<c:forEach items="${free_list}" var="fl">

									<li><a class="brd_title" href="/jgig/board_detail?brd_id=${fl.brd_id}"> ${fl.title}</a> <span
										class="brd_date"> <fmt:formatDate
												value="${fl.brd_date_created}" pattern="yyyy-MM-dd" /></span></li>



								</c:forEach>
							</ul>
</div>
						<div id="tab3" class="cont">Content 3</div>
					</div>
				</div>
				<script>
					function showTab(tabId) {
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
					}
				</script>

				
				<table>
					<thead>자유게시판
					</thead>
					<c:forEach items="${free_list}" var="fl">
						<tr>
							<td>${fl.title}</td>
							<td><fmt:formatDate value="${fl.brd_date_created}"
									pattern="yyyy-MM-dd" /></td>
						</tr>
					</c:forEach>

				</table>

				<table>
					<thead>질문게시판
					</thead>
					<c:forEach items="${question_list}" var="ql">
						<tr>
							<td>${ql.title}</td>
							<td><fmt:formatDate value="${ql.brd_date_created}"
									pattern="yyyy-MM-dd" /></td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="col-lg-4">

				<button type="button" onclick="location.href='/jgig/attendance' ">출석체크</button>
				<br>
				<table>
					<thead>랭킹
					</thead>
					<c:forEach items="${point_rank}" var="pr" varStatus="loop">
						<tr>
							<td>${loop.index + 1}</td>
							<td>${pr.nickname}</td>
							<td>${pr.score}</td>
						</tr>
					</c:forEach>
				</table>


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
                        <p class="text-left text-light">
                            Copyright &copy; 2023 KB IT's Your Life , Ditto
                          
                        </p>
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
    <!-- End Script -->
</body>

</html>