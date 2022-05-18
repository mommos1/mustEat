<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html lang="ko">
<head>

		<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

	<meta charset="UTF-8">      <!-- utf-8 인코딩 -->  
	<title>Must_EAT</title>
	<link rel="stylesheet" href="../../../resources/css/main.css">   <!-- main.css 가 연결되어있다-->
	<link rel="stylesheet" href="../../../resources/css/slick.css">
	<script src="../../../resources/js/jquery-3.3.1.min.js"></script>
	<script src="../../../resources/js/script.js"></script>     <!-- script.js 를 연결했다 -->
	<script src="../../../resources/js/splitting.min.js"></script>
	<script src="../../../resources/js/slick.min.js"></script>
	<script src="../../../resources/js/scrolla.jquery.min.js"></script>
</head>
<body>
	<div class="wrap">
		<!-- header-->

		<header>
			<div class="innerHeader">
				<h1 class="logo"><a href="/">
				<img src="../../../resources/img/메인로고.png" alt="로고">
				<!-- alt = 앞의 이미지를 보여줄수 없을때 대체할 텍스트를 명시  -->		
			</a></h1>
			<ul class="must">

				<li><a href="#">머스트잇</a>
					<ul class="inner">
						<li><a href="#"><span>Must-Eat</span></a></li>
						<li><a href="#"><span>CEO인사말</span></a></li>
						<li><a href="#"><span>개발자</span></a></li>
						<li><a href="#"><span>향후계획</span></a></li>
					</ul>
				</li>

		        <li><a href="#">지역맛집</a>
					<ul class="inner">
						<li><a href="#"><span>대전전역</span></a></li>
						<li><a href="#"><span>대전서구</span></a></li>
						<li><a href="#"><span>대전중구</span></a></li>
						<li><a href="#"><span>대전동구</span></a></li>
					</ul>
				</li>

		        <li><a href="#">테마별맛집</a>
					<ul class="inner">
						<li><a href="#"><span>한식</span></a></li>
						<li><a href="#"><span>중식</span></a></li>
						<li><a href="#"><span>일식</span></a></li>
						<li><a href="#"><span>양식</span></a></li>
						<li><a href="#"><span>카페/디저트</span></a></li>
					</ul>
				</li>

		        <li><a href="#">야식</a>
					<ul class="inner">
						<li><a href="/board/nightEat/jokbal"><span>족발/보쌈</span></a></li>
						<li><a href="/board/nightEat/chicken"><span>치킨</span></a></li>
						<li><a href="/board/nightEat/pizza"><span>피자</span></a></li>
						<li><a href="/board/nightEat/chickenfeet"><span>닭발</span></a></li>
						<li><a href="/board/nightEat/makchang"><span>막창/곱창</span></a></li>
					</ul>
				</li>

		        <li><a href="#">고객지원</a>
					<ul class="inner">
						<li><a href="#"><span>고객문의</span></a></li>
						
						<c:if test="${memberLogin.verify == 9 }">
						<li><a href="/board/contact"><span>맛집등록</span></a></li>
						</c:if>
						
					</ul>
				</li>
	</ul>

<c:if test="${memberLogin == null}">
	<div class="search"> 
		<a href="board/login" style="color:#fff;">로그인<br></a>
		<a href="board/sighup" style="color:#fff;">회원가입<br></a>
	</div>	
</c:if>

<c:if test="${memberLogin != null}">
	<div class="search"> 
	
	<c:if test="${memberLogin.verify == 9 }">
		<span style="color:#fff;">관리자 계정<br></span>
	</c:if>
	
		<span style="color:#fff;">${memberLogin.userName } 님 환영합니다. <br></span>
		<span style="color:#fff;"><a href="/board/logout">로그아웃</a><br></span>
	</div>	
</c:if>

	</div>
</header>

<!--visual -->
  <section class="visual">
  	<ul class="slide">
  		<li>
  			<img src="../../../resources/img/main3.png" alt="">
  			<div class="txt en">
  				<div data-splitting>MUST-EAT,</div>
  				<div data-splitting>AND FIND IT</div>
  			</div>
  			<a href="#" class="en">FIND OUT MORE</a>
  			<span class="mask a"></span>
  			<span class="mask b"></span>
  			<span class="mask c"></span>
  			<span class="mask d"></span>
  		</li>
  		<li>
  			<img src="../../../resources/img/main2.jpg" alt="">
  			<div class="txt en">
  				<div data-splitting>MUST-EAT,</div>
  				<div data-splitting>AND FIND IT</div>
  			</div>
  			<a href="#" class="en">FIND OUT MORE</a>
  			<span class="mask a"></span>
  			<span class="mask b"></span>
  			<span class="mask c"></span>
  			<span class="mask d"></span>
  		</li>
  		<li>
  			<img src="../../../resources/img/main1.png" alt="">
  			<div class="txt en">
  				<div data-splitting>MUST-EAT,</div>
  				<div data-splitting>AND FIND IT</div>
  			</div>
  			<a href="#" class="en">FIND OUT MORE</a>
  			<span class="mask a"></span>
  			<span class="mask b"></span>
  			<span class="mask c"></span>
  			<span class="mask d"></span>
  		</li>
  	</ul>
  </section>
<!--contents-->
  <section class="contents">
  	<span class="line a"></span>
  	<span class="line b"></span>
  	<span class="line c"></span>
  	<div class="information">
  		<div class="scrollBox" id="scroll">
  			<a href="#" class="scroll en">SCROLL DOWN <span><img src="../../../resources/img/scrolldown.png" alt=""></span></a>
  		</div>
  		<div class="inner animate" data-animate = "motion">
  			<div class="title">
  				<div data-splitting class="en">MUSTEAT</div>
  				<div data-splitting class="en">Today best-4</div>
  				<p> MUST-EAT은 고객이 미래입니다. </p>
  			</div>
  		</div>
  		<div class="slideBox">
  			<ul class="slide2">
  				<li><a href="#"><p class="img"><span><img src="../../../resources/img/와인한잔.jpg" alt="">
  				</span></p></a></li>
  				<li><a href="#"><p class="img"><span><img src="../../../resources/img/인근주민.jpg" alt="">
  				</span></p></a></li>
  				<li><a href="#"><p class="img"><span><img src="../../../resources/img/청년다방.jpg" alt="">
  				</span></p></a></li>
  				<li><a href="#"><p class="img"><span><img src="../../../resources/img/라븐.jpg" alt="">
  				</span></p></a></li>
  			</ul>
  			<a href="#" class="more en">FIND OUT MORE</a>
  		</div>
  	</div>
  <div class="video animate" data-animate = "motion">
          <div class="inner">
              <div class="title  animate" data-animate = "motion">
                  <div data-splitting class="en">DaeJeon New Dealicious</div>
                  <P>떠오르는 대전맛집</P> 
              </div>
              <a href="#" class="more en">FIND OUT MORE</a>
              <div class="videoBox">
                  <iframe width="690" height="392" src="https://www.youtube.com/embed/TCNcHdREEx0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                  <p class="mask"><span><img src="../../../resources/img/유튜브2.gif" alt=""></span></p>
              </div>
          </div>
      </div>
      <div class="business">
          <div class="inner animate" data-animate = "motion">
              <div class="title">
                 <div data-splitting class="en">MustEat Best-3</div>
                  <P>머스트잇이 추천하는 대전맛집 베스트 3 <br> LET'S GO !!!</P>
              </div>
              <a href="#" class="more en">FIND OUT MORE</a>
          </div>
          <ul class="list">
              <li class="animate" data-animate = "motion" ><a href="#">
                  <p class="img"><img src="../../../resources/img/메드포갈릭.jpg" alt=""></p>
                  <div class="txt">
                      <h3 class="en">메드포갈릭<br><span>대전둔산점</span></h3>
                      <p>대전 서구 둔산북로 56 한화생명보험 <br>영업시간 11:30 - 21:00</p>
                      <i class="icon"></i>
                  </div>
              </a></li>
              <li class="animate" data-animate = "motion"><a href="#">
                  <p class="img"><img src="../../../resources/img/스테이크.jpg" alt=""></p>
                  <div class="txt">
                      <h3 class="en">칸 스테이크<br><span>하우스</span></h3>
                      <p>대전 유성구 봉명서로 17-11 도안 5단지 길 건너편  <br>영업시간 11:30 - 22:00</p>
                      <i class="icon"></i>
                  </div>
              </a></li>
              <li class="animate" data-animate = "motion"><a href="#">
                  <p class="img"><img src="../../../resources/img/샤브샤브.jpg" alt=""></p>
                  <div class="txt">
                      <h3 class="en">너와집 백합<br><span> 샤브샤브</span></h3>
                      <p>대전광역시 서구 둔산대로117번길 7 <br>영업시간 11:00 - 21:30</p>
                      <i class="icon"></i>
                  </div>
              </a></li>
          </ul>
      </div>
      <div class="news">
          <div class="inner animate" data-animate = "motion">
              <div class="title">
                   <div data-splitting class="en">NEWS</div> 
              </div>
              <a href="#" class="more en">FIND OUT MORE</a>
          </div>
          <p class="symbol animate" data-animate = "motion"><img src="" alt=""></p>
          <ul class="newsList">
              <li><a href="#">
                  <span class="category">공지 <br>사항</span>
                  <span class="subject">메리크리스마스 !!</span>
                  <span class="date en">2021.12.25</span>
                  <span class="desc"></span>
              </a></li>
              <li><a href="#">
                  <span class="category">MUST EAT </span>
                  <span class="subject">대전 목원대학교에서 2021년 첫 오픈</span>
                  <span class="date en">2021.12.21</span>
                  <span class="desc">대전 목원대학교에서 2021년 첫 오픈
            대전 유성구 목원대학교 컴퓨터 공학과에서 2021년 21일 오전 11시 머스트잇을 오픈했습니다. 이날 오픈일에는 개발자 3명이 함께 하는..</span>
              </a></li>
              <li><a href="#">
                  <span class="category">MUST EAT </span>
                  <span class="subject">대전 MUST-EAT 사이트 광고 CF</span>
                  <span class="date en">2021.12.23</span>
                  <span class="desc">대전 MUST-EAT 사이트 광고 CF</span>
              </a></li>
          </ul>
      </div>
      <div class="career  animate" data-animate = "motion">
          <div class="inner animate" data-animate = "motion">
              <div class="title">
                  <div data-splitting class="en">Employment</div>
                 <P>MUST-EAT과 함께 미래를 이끌어갈<br>인재를 기다립니다.</P> 
              </div>
              <a href="#" class="more en">FIND OUT MORE</a>
          </div>   
     </div>
     <div class="customers animate" data-animate = "motion">
         <div class="inner animate" data-animate = "motion">
             <div class="left"> 
                <div class="title">
                  <div data-splitting class="en">CUSTOMERS</div>
                 <P>저희 MUST-EAT은 손님에게 최선을 다합니다.</P> 
              </div> 
              <a href="#" class="more en">FIND OUT MORE</a>
             </div>
             <ul class="right">
                 <li><a href="#"><img src="../../../resources/img/icon1.png" alt="FAQ"></a></li>
                 <li><a href="#"><img src="../../../resources/img/icon2.png" alt="맛집예약안내"></a></li>
                 <li><a href="#"><img src="../../../resources/img/icon3.png" alt="관심맛집등록"></a></li>
                 <li><a href="#"><img src="../../../resources/img/icon4.png" alt="1:1문의"></a></li>
             </ul>
         </div>
     </div>
  </section>
  <!-- footer -->
        <footer>
          <ul>
            <li>이용약관</li>
            <li>개인정보</li>
            <li>취급방침</li>
            <li>이메일무단수집거부</li>
          </ul>
          <ul>
            <li>대전 유성구 목원대학교 </li>
            <li>사업자등록번호:123-12-12345</li>
            <li></li>
          </ul>
          <p>COPYRIGHT 2021</p>
        </footer>
   </div> 
</body>
</html>
