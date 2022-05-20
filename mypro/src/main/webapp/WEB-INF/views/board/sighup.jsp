<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">

<head>

	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
   	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

 	<meta charset="UTF-8">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<title>회원가입</title>

	<link href="../../../resources/css/sighup.css" rel="stylesheet" type="text/css">
 	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <style>
  
  
    body {
      min-height: 100vh;

      background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
      background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: #6c757d;
    }

    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
  </style> 
</head>

<script type="text/javascript">
		    function checkId(){
		        var id = $('#id').val(); //id값이 "id"인 입력란의 값을 저장
		        $.ajax({
		            url:'/board/idCheck', //Controller에서 인식할 주소
		            type:'post', //POST 방식으로 전달
		            data:{id:id},
		            success:function(cnt){
		            	if(cnt != 1){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
		                    $('.id_ok').css("display","inline-block"); 
		                    $('.id_already').css("display", "none");
		                } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
		                    $('.id_already').css("display","inline-block");
		                    $('.id_ok').css("display", "none");
		                }
		            },
		            error:function(){
		                alert("에러입니다");
		            }
		        });
		    };
</script>

<body>
  <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">회원가입</h4>
        
        <form method="post">
          <div class="row">
          
            <div class="col-md-6 mb-3">
              <label for="name">아이디
              <span class="id_ok">사용 가능한 아이디입니다.</span>
              <span class="id_already">중복된 아이디입니다.</span>
              </label>
              <input type="text" class="form-control" name="userId" id="id" placeholder="아이디를 입력해 주세요" value="" required oninput = "checkId()">
              <div class="invalid-feedback">
            
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="nickname">비밀번호</label>
              <input type="text" class="form-control" name="userPass" placeholder="비밀번호를 입력해 주세요" value="" required>
              <div class="invalid-feedback">
     
              </div>
            </div>
          </div>

          <div class="mb-3">
            <label for="email">이름</label>
            <input class="form-control" name="userName" placeholder="성함을 입력해 주세요" required>
            <div class="invalid-feedback">

            </div>
          </div>

          <div class="mb-3">
            <label for="address">핸드폰</label>
            <input type="text" class="form-control" name="userPhon" placeholder="연락처를 적어주세요" required>
            <div class="invalid-feedback">
       
            </div>
          </div>

          <div class="mb-3">
            <label for="address2">주소<span class="text-muted">&nbsp;</span></label>
            <input type="text" class="form-control" name="userAddr1" placeholder="ex) 대전광역시 유성구">
          </div>

          <div class="mb-3">
            <label for="address2">상세주소<span class="text-muted">&nbsp;(필수 아님)</span></label>
            <input type="text" class="form-control" name="userAddr2" placeholder="상세주소를 입력해주세요.">
          </div>

          <div class="mb-3">
            <input type="text" class="form-control" name="userAddr3" placeholder="상세주소를 입력해주세요.">
          </div>

          <hr class="mb-4">
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" required>
            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
          </div>
          <div class="mb-4"></div>
          <button class="btn btn-primary btn-lg btn-block" type="submit">가입 완료</button>
        </form>
      </div>
    </div>
    <footer class="my-3 text-center text-small">
      <p class="mb-1"><a href="/"><img src="../../../resources/img/메인로고.png" alt="로고"></a></p>
    </footer>
  </div>
</body>

</html>