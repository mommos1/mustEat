<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
    <head>
    
    	<!-- jQuery  -->
    	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    	
    	
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description"content />
        <meta name="author" content />
        <title>쿠폰 정보</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <script src=""https://use.fontawesome.com/releases/v5.15.3/js/all.js"" crossorigin="anonymous"></script>
        <link href="../../../resources/css/styles.css" rel="stylesheet" type="text/css">
        
    </head>
    
    <script type="text/javascript">      
    
    </script>
    
    <body>
    
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <h1 class="logo"><a href="/">
				<img src="../../../resources/img/메인로고.png" alt="로고">
				<!-- alt = 앞의 이미지를 보여줄수 없을때 대체할 텍스트를 명시  -->		
			</a></h1>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">                       
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
                <h2>
                   내 쿠폰 정보
                    <small></small>
                </h2>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="/">Home</a></li>
                    <li class="breadcrumb-item active">${memberLogin.userName} 님 쿠폰 정보</li>
                </ol>
                
                <table class="table table-hover">
                    
                    	<thead>
                    	<tr>
                    		<th>쿠폰 번호</th>
                    		<th>맛집 이름</th>
                    		<th>발급 일자</th>
                    		<th>쿠폰 사용하기</th>
                    	</tr>
                    	</thead>
                    	<tbody>
                    	
                    	<c:forEach items="${musteat_couponUse}" var="musteat_couponUse" >
                    	
                    	<tr>
                    		<td>${musteat_couponUse.couponnum}</td>
                    		<c:if test="${musteat_couponUse.commentId == 6 }">
                             		<td>김삿갓 족발 보쌈</td>
		                    </c:if>
		                    <c:if test="${musteat_couponUse.commentId == 7 }">
                             		<td>양평5일장 왕족발</td>
		                    </c:if>
                    		<td>${musteat_couponUse.useStatus}</td>
                    		<td><button class="couponBtn btn btn-primary" type="submit">쿠폰 사용</button></td>
                    	</tr>               	
                    	
                    	</c:forEach>
                    	  	
                    	</tbody>
                    	
                    </table>
                                                                  
        </section>
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">목원대학교 융합컴퓨터미디어학부 <br></p></div>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
