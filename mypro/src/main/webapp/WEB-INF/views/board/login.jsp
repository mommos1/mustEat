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
        <title>로그인</title>
        <script
		  src="https://code.jquery.com/jquery-3.4.1.js"
		  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
		  crossorigin="anonymous"></script>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src=""https://use.fontawesome.com/releases/v5.15.3/js/all.js"" crossorigin="anonymous"></script>
        <!-- Core theme CSS (includes Bootstrap)-->
<!--         <link href="/css/style.css"  rel="stylesheet"  /> -->
<!--         <link href="styles.css"  rel="stylesheet"  /> -->
        <link href="../../../resources/css/login.css" rel="stylesheet" type="text/css">  
        
    </head>
    
    <script type="text/javascript">   
    
    </script>
    
    <body bgcolor="#6c757d" >
    
        
        <!-- Page Content-->
        
        <div class="wrapperlogin">
	
            <div class="wrap">
            
            <form id="login_form" method="post">
            
		                <div class="logo_wrap">
		                    <a href="/"><img src="../../../resources/img/메인로고.png" alt="로고"></a>
		                </div>
		                <div class="login_wrap"> 
		                    <div class="id_wrap">
		                            <div class="id_input_box">
		                            <input class="id_input" name="userId" placeholder="아이디를 입력해 주세요" required="required">
		                        </div>
		                    </div>
		                    <div class="pw_wrap">
		                        <div class="pw_input_box">
		                            <input type="password" class="pw_iput" name="userPass" placeholder="암호를 입력해 주세요" required="required">
		                        </div>
		                    </div>
		                    <div class="login_button_wrap">
		                        <input type="button" class="login_button" value="로그인">
		                    </div>			
		                </div>
                
                </form>
                
            </div>
        
        </div>

        <br><br><br><br>
        
        <script>
 
		    /* 로그인 버튼 클릭 메서드 */
		    $(".login_button").click(function(){
		        
		        /* alert("로그인 버튼 작동"); */
		        
		        $("#login_form").attr("action", "/board/login");
		        $("#login_form").submit();
		        
		    });
		 
		</script>
        
                
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            
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
