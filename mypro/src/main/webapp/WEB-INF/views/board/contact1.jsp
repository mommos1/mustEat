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
        <title>맛집 제보</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src=""https://use.fontawesome.com/releases/v5.15.3/js/all.js"" crossorigin="anonymous"></script>
        <!-- Core theme CSS (includes Bootstrap)-->
<!--         <link href="/css/style.css"  rel="stylesheet"  /> -->
<!--         <link href="styles.css"  rel="stylesheet"  /> -->
        <link href="../../../resources/css/styles.css" rel="stylesheet" type="text/css">
        
    </head>
    
    <script type="text/javascript">   
    
    /* $(function() {
  	  	
    	$("#sendMessageButton").click(function() {
    		
    		name = $('#name').val();
    		phone = $('#phone').val();
    		address = $("#address").val();
    		message = $("#message").val();    		    		
    		
    		$.ajax ({
    		
    			type : "GET",
    			url : "/message.do", 
    			data : { "name" : name,
    						"phone" : phone,
    						"address" : address,
    						"message" : message 
    			},
    			dataType : "text",
    			success : function(data) {

    				if(data == "Success") {
        				alert ("전송 성공");
        				location.reload(); // 새로고침
        				
    				}else {
    					alert ("전송 실패");
    				}
    			},
    			error : function(data) {
    				
    				alert("에러");
    			}    			   			    			
    		})    		   		
    	});    		    		    	    	  	
    }) */    
    
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
                   📣 여러분들만의 특별한 장소를 제보해 주세요.
                    <small></small>
                </h2>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="/">Home</a></li>
                    <li class="breadcrumb-item active">맛집제보</li>
                </ol>
                <!-- Content Row-->
                <div class="row">
                    <!-- Map Column -->
                     <div class="col-lg-8 mb-4">
                        구글맵 Map
                        <iframe style="width: 100%; height: 400px; border: 0" src="https://map.naver.com/v5/directions/-/-/-/transit?c=14172953.7846374,4354158.8792368,7,0,0,0,dh"></iframe>
                    </div> 
                    <!-- Contact Details Column -->
                    <div class="col-lg-4 mb-4">
                        <h2>Must Eat<small></small></h2>
                        <p>
                            - 공과대학 D관
                            <br />
                            - D429-1
                            <br />
                        </p>
                        <p>
                            P : 010-2232-4091
                        </p>
                        <p>
                            E : letsko5@gmail.com
                        </p>
                        <p>
                            H : 월요일 - 금요일 9:00 ~ 17:00 
                        </p>
                    </div>
                </div> 
                <!-- Contact Form-->
                <!-- In order to set the email address and subject line for the contact form go to the assets/mail/contact_me.php file.-->
          <div class="row">
                 <div class="col-lg-8 mb-4">
	                        <h3>나만의 맛집을 추천해주세요!</h3>
	                        <!-- <form id="contactForm" name="sentMessage" novalidate> -->
                            <div class="control-group form-group">
                                <div class="controls">
                                     
                                   <!-- 입력받기 -->                       
                                <form method="post">
                                    <label>매장이름 :</label>
                                    <input class="form-control" name="name" type="text" required data-validation-required-message="이름을 입력 해주세요." />
                                    <p class="help-block"></p>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>전화번호 :</label>
                                    <input class="form-control" name="phone" type="tel" required data-validation-required-message="연락처를 입력 해주세요." />
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>매장주소 :</label>
                                    <input class="form-control" name="address" type="address" required data-validation-required-message="주소를 입력 해주세요." />
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>내용 및 사진첨부 :</label>
                                    <textarea class="form-control" name="message" rows="10" cols="100" required data-validation-required-message="보내실 메시지 내용을 입력 해주세요." maxlength="999" style="resize: none"></textarea>
                                </div>
                            </div>
                            <div id="success"></div>
                            <!-- For success/fail messages-->
                            <button class="btn btn-primary" id="sendMessageButton" type="submit" >전송하기</button>                            
                        </form>
                        
                    </div>
                </div>
            </div>   
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">목원대학교 융합컴퓨터미디어학부 <br>17 허준범, 17 오병주 </p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <!-- <script src="../../../resources/js/scripts.js"></script> -->
        <!-- Contact form JavaScript-->
        <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the assets/mail/contact_me.php file.-->
        <!-- <script src="../../../resources/assets/mail/jqBootstrapValidation.js"></script> -->
        <!-- <script src="../../../resources/assets/mail/contact_me.js"></script> -->
    </body>
</html>
