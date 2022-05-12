<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Modern Business - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../../../resources/css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <img class="d-block w-10" src="assets/img/must-eat.png" alt="..."/>
                <!-- <a class="navbar-brand" href="index.html">Must Eat </a> -->
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <!-- <li class="nav-item"><a class="nav-link" href="about.html">must eat</a></li>
                        <li class="nav-item"><a class="nav-link" href="services.html">대전맛집</a></li>
                        <li class="nav-item"><a class="nav-link" href="contact.html">이벤트</a></li>-->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownPortfolio" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">must eat</a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                                <a class="dropdown-item" href="portfolio-1-col.html">must eat</a>
                                <a class="dropdown-item" href="portfolio-2-col.html">ceo 인사말</a>
                                <a class="dropdown-item" href="portfolio-3-col.html">개발자</a>
                                <a class="dropdown-item" href="portfolio-4-col.html">향후계획</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownPortfolio" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">지역맛집</a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                                <a class="dropdown-item" href="portfolio-1-col.html">대전전역</a>
                                <a class="dropdown-item" href="portfolio-2-col.html">대전서구</a>
                                <a class="dropdown-item" href="portfolio-3-col.html">대전중구</a>
                                <a class="dropdown-item" href="portfolio-4-col.html">대전동구</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownPortfolio" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">테마별맛집</a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                                <a class="dropdown-item" href="portfolio-5-col.html">한식</a>
                                <a class="dropdown-item" href="portfolio-5-col.html">중식</a>
                                <a class="dropdown-item" href="portfolio-8-col.html">일식</a>
                                <a class="dropdown-item" href="portfolio-6-col.html">양식</a>
                                <a class="dropdown-item" href="blog-home-2.html">카페/디저트</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownPortfolio" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">야식</a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                                <a class="dropdown-item" href="portfolio-1-col.html">족발/보쌈</a>
                                <a class="dropdown-item" href="portfolio-2-col.html">치킨</a>
                                <a class="dropdown-item" href="portfolio-3-col.html">피자</a>
                                <a class="dropdown-item" href="portfolio-4-col.html">닭발</a>
                                <a class="dropdown-item" href="blog-home-3.html">막창/곱창</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownBlog" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">고객지원</a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                                <a class="dropdown-item" href="blog-post.html">고객문의</a>
                                <a class="dropdown-item" href="blog-home-1.html">1:1문의</a>
                                <a class="dropdown-item" href="blog-home-2.html">건의사항</a>
                                <a class="dropdown-item" href="blog-post.html">바라는점</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Page Content-->
        <section class="py-5">
            <div class="container">
                <!-- Page Heading/Breadcrumbs-->
                <h1>
                    카페/디저트
                    <small></small>
                </h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item active">카페/디저트</li>
                </ol>
                <!-- Blog Post-->
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <a href="#!"><img class="img-fluid rounded" src="assets/img/풍뉴가.png.PNG" alt="..." /></a>
                            </div>
                            <div class="col-lg-6">
                                <h2 class="card-title">풍뉴가</h2>
                                <p class="card-text">대전 소제동에 위치한 전통 차 카페 입구에 들어서면 대나무로 인테리어를 하여 야외에서 대나무와 함께 차를 마실수 있는곳 색다른 분위기와 고급진 분위기 데이트 코스 안성맞춤! </p>
                                <a class="btn btn-primary" href="#!">Read More →</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-muted">
                        영업시간:11:00~21:00  장소:대전 소제동
                        
                    </div>
                </div>
                <!-- Blog Post-->
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <a href="#!"><img class="img-fluid rounded" src="assets/img/드루쿰다.PNG" alt="..."style = "height:300px; width:550px" /></a>
                            </div>
                            <div class="col-lg-6">
                                <h2 class="card-title">드루쿰다 from 제주</h2>
                                <p class="card-text"> 대전 월평동에 위치한 드루쿰다 카페 드루쿰다 뜻이 넓은 초원을 품다 라는 뜻을 갖고있는 말입니다 말그대로 제주도 를 온듯한 느낌을 주기위한 감성 카페로 들어가면 넓은 건물에 감귤로 인테리어한 카페 제주도를 온기분을 느끼고싶다면 한번쯤 가보세요!</p>
                                <a class="btn btn-primary" href="#!">Read More →</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-muted">
                        영업시간:10:00~23:00  장소:대전 월평동
                        <a href="#!"></a>
                    </div>
                </div>
                <!-- Blog Post-->
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <a href="#!"><img class="img-fluid rounded" src="assets/img/에어산1.PNG" alt="..."style = "height:300px; width:550px" /></a>
                            </div>
                            <div class="col-lg-6">
                                <h2 class="card-title">에어산</h2>
                                <p class="card-text">대전 동학사에 위치한 에어산 넓고 고급진 분위기의 카페입니다. 어떤 자리 어떤 곳을 가도 360도 계룡산 뷰가 시원하게 보이는 감성카페 답답할때 가슴이 뻥 뚫리는 곳 힐링하고싶을때 꼭 한번쯤은 가보기 좋은카페 에어산 한번꼭 가보세요!</p>
                                <a class="btn btn-primary" href="#!">Read More →</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-muted">
                        영업시간:10:00~22:00 장소: 대전 동학사
                        <a href="#!"></a>
                    </div>
                </div>
                <!-- Blog Post-->
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <a href="#!"><img class="img-fluid rounded" src="assets/img/카페태리.jpg" alt="..."style = "height:300px; width:550px" /></a>
                            </div>
                            <div class="col-lg-6">
                                <h2 class="card-title">카페태리</h2>
                                <p class="card-text"> 대전 수통골에 새로 오픈한 독특한 건물 인테리어를 가진 이쁜 감성카페 입니다 카페 바로 뒤쪽에 수통골 산책로 도 있고 날씨 좋을때 산책하고 내려와서 가보기 좋은카페 독특한 인테리어에서 사진도 찍고 데이트하기 좋은 카페 한번쯤 가보세요!</p>
                                <a class="btn btn-primary" href="#!">Read More →</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-muted">
                        영업시간:11:00~21:00 장소 대전 수통골
                        <a href="#!"></a>
                    </div>
                </div>
                <!-- Pagination-->
                <ul class="pagination justify-content-center mb-4">
                    <li class="page-item"><a class="page-link" href="#!">← Older</a></li>
                    <li class="page-item disabled"><a class="page-link" href="#!">Newer →</a></li>
                </ul>
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">1551064 황지훈</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>