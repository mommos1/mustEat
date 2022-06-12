<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>족발 보쌈</title>
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
                <h1 class="logo"><a href="/">
				<img src="../../../resources/img/메인로고.png" alt="로고">
				<!-- alt = 앞의 이미지를 보여줄수 없을때 대체할 텍스트를 명시  -->		
			</a></h1>
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
                                <a class="dropdown-item" href="/board/nightEat/jokbal">족발/보쌈</a>
                                <a class="dropdown-item" href="portfolio-2-col.html">치킨</a>
                                <a class="dropdown-item" href="portfolio-3-col.html">피자</a>
                                <a class="dropdown-item" href="portfolio-4-col.html">닭발</a>
                                <a class="dropdown-item" href="blog-home-3.html">막창/곱창</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownBlog" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">고객지원</a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                                <a class="dropdown-item" href="#">고객문의</a>
                                <a class="dropdown-item" href="#">1:1문의</a>
                                <a class="dropdown-item" href="#">건의사항</a>
                                <a class="dropdown-item" href="/board/contact">맛집제보</a>
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
                    족발/보쌈
                    <small></small>
                </h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="/">Home</a></li>
                    <li class="breadcrumb-item active">족발/보쌈</li>
                </ol>
                <!-- Blog Post-->              
                
              <c:forEach items="${list}" var="list">
              	<c:if test="${list.category == 1 }">
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="row">
                        
                            <div class="col-lg-6">
                                <a href="#!"><img class="img-fluid rounded" src="https://d12zq4w4guyljn.cloudfront.net/20200501102956_photo1_e4885f69084c.jpg" alt="..."style = "height:300px; width:550px" /></a>
                            </div>
                            
                            <div class="col-lg-6">
                                <h2 class="card-title">${list.name}</h2>
                                <p class="card-text">${list.message} </p>
                                <a class="btn btn-primary" href="/board/nightEat/night_view?bno=${list.bno}&&userId=${memberLogin.userId}">맛집 보기 →</a>
                            </div>
                
               
                        </div>
                    </div>
                    <div class="card-footer text-muted">
                        ${list.address} / ${list.phone}
                        
                    </div>
                </div>
                </c:if>
              </c:forEach>                
                
                <!-- Pagination-->
                <ul class="pagination justify-content-center mb-4">
                    <li class="page-item"><a class="page-link" href="#!">← Older</a></li>
                    <li class="page-item disabled"><a class="page-link" href="#!">Newer →</a></li>
                </ul>
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white"></p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
