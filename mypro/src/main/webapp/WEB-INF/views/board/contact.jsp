<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
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
        <title>맛집 등록</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <script src=""https://use.fontawesome.com/releases/v5.15.3/js/all.js"" crossorigin="anonymous"></script>
        <link href="../../../resources/css/styles.css" rel="stylesheet" type="text/css">
        
        <style>
        
        .select_img img { margin:10px 0; }
        
        </style>
        
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
                   맛집 등록
                    <small></small>
                </h2>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="/">Home</a></li>
                    <li class="breadcrumb-item active">맛집 등록</li>
                </ol>
                <!-- Content Row-->
                <div class="row">
                     <div class="col-lg-8 mb-4">
                     
								 <label for="gdsImg">이미지를 선택해 주세요</label>
								 <input type="file" id="gdsImg" name="file" />
								 <div class="select_img"><img src="" /></div>
								 
								 <script>
								 
								  $("#gdsImg").change(function(){
								   if(this.files && this.files[0]) {
								    var reader = new FileReader;
								    reader.onload = function(data) {
								     $(".select_img img").attr("src", data.target.result).width(500);        
								    }
								    reader.readAsDataURL(this.files[0]);
								   }
								  });
								  
								 </script>
								 <%=request.getRealPath("/") %>
                    </div> 
                    <!-- Contact Details Column -->
                    
                    <!-- 매장이름 입력 -->      
                    
                    <div class="col-lg-4 mb-4">
                    
                    <!-- 맛집사이트 입력받음 -->
                    <form method="post" id="data">
                    
                    	<label>맛집 종류</label>
                    	
						 <select name="category">
							 <option value="1">족발</option>
							 <option value="2">치킨</option>
							 <option value="3">피자</option>
							 <option value="4">닭발</option>
							 <option value="5">막창/곱창</option>
							 <option value="6">한식</option>
							 <option value="7">중식</option>
							 <option value="8">일식</option>
							 <option value="9">양식</option>
							 <option value="10">카페/디저트</option>
						 </select>
                    
                        <input class="form-control" name="name" type="text" placeholder="맛집명을 입력해주세요" />
                                    <p class="help-block"></p>
                        <p>
                            <input class="form-control" name="phone" type="tel" placeholder="연락처를 입력 해주세요." />
                        </p>
                        <p>
                            <input class="form-control" name="address" type="address" placeholder="주소를 입력 해주세요." />                            
                        </p>
                        <p>
							<textarea class="form-control" name="message" rows="10" cols="100" placeholder="맛집에 대해 설명해주세요." maxlength="999" style="resize: none"></textarea>
                        </p>
                        <button class="btn btn-primary" id="sendMessageButton" type="submit" >등록하기</button>
                    </form>
                        
                        
                    </div>
                </div>                                                       
        </section>
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">목원대학교 융합컴퓨터미디어학부 <br></p></div>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
