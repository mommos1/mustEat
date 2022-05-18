<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
        <title>족발 보쌈</title>
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
                   족발 / 보쌈
                    <small></small>
                </h2>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="/">Home</a></li>
                    <li class="breadcrumb-item active">족발 보쌈</li>                   
                </ol>
                <!-- Content Row-->
                <div class="row">
                     <div class="col-lg-8 mb-4">
                        <!-- 구글맵 Map -->
                        <iframe style="width: 100%; height: 400px; border: 0" src="https://map.naver.com/v5/directions/-/-/-/transit?c=14172953.7846374,4354158.8792368,7,0,0,0,dh"></iframe>
                    </div> 
                    <!-- Contact Details Column -->
                    <div class="col-lg-4 mb-4">
                        <h2><br><br>${jokbal_view.name}<br><br><small></small></h2>

                        <p>
                            전화번호 : ${jokbal_view.phone}
                        </p>
                        <p>
                            주소 : ${jokbal_view.address}
                          <br><br><br><br><br><br>
                          
                         <c:if test="${memberLogin.verify == 9 }"> 
                          <a href="/board/nightEat/jokbal_modify?bno=${jokbal_view.bno}">게시물 수정하기</a>       
                          </c:if> 
                                            
                        <p>

                        </p>
                    </div>
                </div>      
                
                <!-- Comments Form-->
                ${jokbal_view.message}
                        <div class="card my-4">
                            <h5 class="card-header">후기를 남겨주세요!</h5>
                            <div class="card-body">
                            
                                <form method="post">                             
                                	<input class="form-control" type="text" name="name" placeholder="이름을 입력해주세요." /><br />                               
                                    <div class="form-group">
                                    <textarea class="form-control" rows="3" name="content" placeholder="후기를 작성해주세요."></textarea>
                                    </div>
                                    <input type="hidden" name="commentId" value="${jokbal_view.bno}">
                                    <button class="btn btn-primary" type="submit">후기 남기기</button>
                                </form>
                                
                            </div>
                        </div>
                                               
                                               
                       <c:forEach items="${jokbal_comment}" var="jokbal_comment" >
                       
                        <!-- Single Comment-->
                        <div class="media mb-4">
                            <img class="d-flex mr-3 rounded-circle" src="https://via.placeholder.com/50x50" alt="..." />
                            <div class="media-body">
                                <h5 class="mt-0">${jokbal_comment.name }</h5>
                                ${jokbal_comment.content}<br>
                                <fmt:formatDate value="${jokbal_comment.regDate}" pattern="yyyy-MM-dd" />      <br>                  
                                <a href="#">삭제</a> 
                            </div>
                        </div>      
                        
                        </c:forEach>              
                   
        </section>
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">목원대학교 융합컴퓨터미디어학부 <br>17 허준범, 17 오병주 </p></div>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
