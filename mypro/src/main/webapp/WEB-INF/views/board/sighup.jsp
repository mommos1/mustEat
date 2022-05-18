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
        <title>회원가입</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src=""https://use.fontawesome.com/releases/v5.15.3/js/all.js"" crossorigin="anonymous"></script>
        <link href="../../../resources/css/sighup.css" rel="stylesheet" type="text/css">  
        
    </head>
    
    <script type="text/javascript">   
    
    </script>
    
    <body bgcolor="#6c757d">
    
        
        <!-- Page Content-->
        <div class="wrappersighup">
            <div class="wrap">
                    
                        <a href="/"><img src="../../../resources/img/메인로고.png" alt="로고"></a><span class="id_name">회원가입</span>
                   
                    <form method="post">
                    <div class="id_wrap">
                        <div class="id_name">아이디</div>
                        <div class="id_input_box">            
			                            <input class="id_input" name="userId">
			                        </div>
			                    </div>
			                    <div class="pw_wrap">
			                        <div class="pw_name">비밀번호</div>
			                        <div class="pw_input_box">
			                            <input class="pw_input" name="userPass">
			                        </div>
			                    </div>
			                    <div class="pwck_wrap">
			                        <div class="pwck_name" >이름</div>
			                        <div class="pwck_input_box">
			                            <input class="pwck_input" name="userName">
			                        </div>
			                    </div>
			                    <div class="user_wrap">
			                        <div class="user_name">핸드폰</div>
			                        <div class="user_input_box">
			                            <input class="user_input" name="userPhon">
			                        </div>
			                    </div>
			                    
			                    <div class="address_wrap">
			                        <div class="address_name" >주소</div>
			                        <div class="address_input_1_wrap">
			                            <div class="address_input_1_box">
			                                <input class="address_input_1" name="userAddr1" >
			                            </div>
			                            <div class="clearfix"></div>
			                        </div>
			                        <div class ="address_input_2_wrap">
			                            <div class="address_input_2_box">
			                                <input class="address_input_2" name="userAddr2" >
			                            </div>
			                        </div>
			                        <div class ="address_input_3_wrap">
			                            <div class="address_input_3_box">
			                                <input class="address_input_3" name="userAddr3" >
			                            </div>
			                        </div>
			                    </div>
			                    <div class="join_button_wrap">
			                        <button type="submit" class="join_button">가입하기</button>
			                    </div>
                    </form>
                </div>
        </div>
      
        
            
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
