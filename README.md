# 대전 맛집 소개 홈페이지
## 개요
- SpringFramework 를 이용한 대전 맛집을 소개하는 웹 프로젝트

#### 만든 목적
- 타 지역에서 대전을 찾을때 맛집을 쉽게 찾을수 있도록
- 대전 사람이여도 다른 동네를 가면 맛집을 모르기 때문에 알려주기 위해

#### 일정
- 22.09.15 ~ 22.11.04

## 사용 기술 및 개발 환경
- O/S : Window 10
- Server : Apache Tomcat 8.5
- DB : MySQL
- Framework/Flatform : Spring MVC, MyBatis, Bootstrap
- Language : JAVA, Javascript, HTML, CSS
- Tool : Eclipse, GitHub

## 내용 (구현 기능 일부)
### 로그인
  
login.jsp 일부
~~~jsp
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

/* 로그인 버튼 클릭 메서드 */
<script>
 
  $(".login_button").click(function(){
		        
    /* alert("로그인 버튼 작동"); */
		        
    $("#login_form").attr("action", "/board/login");
    $("#login_form").submit();
		        
    });
		 
</script>
~~~

BoardController.java 일부
~~~java
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String joinPOST(HttpServletRequest req,BoardVO vo, RedirectAttributes rttr)throws Exception {	
		
		BoardVO lvo = service.login(vo);
		HttpSession session = req.getSession();
		logger.info(""+vo);
		logger.info(""+lvo);
		
		if(lvo == null) {                     // 일치하지 않는 아이디, 비밀번호 입력 경우
            
            int result = 0;
            rttr.addFlashAttribute("result", result);
            logger.info("로그인 실패");
            return "redirect:/board/login";
            
        }
        
        session.setAttribute("memberLogin", lvo);     // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
        
        logger.info(""+lvo);
        
        return "redirect:/";   		
	}
~~~

BoardServicelmpl.java 일부
~~~java
	//로그인
	@Override
	public BoardVO login(BoardVO vo) throws Exception {
		return dao.login(vo);
	}
~~~

BoardDAOlmpl.java 일부
~~~java
	//로그인
	@Override
	public BoardVO login(BoardVO vo) throws Exception {
		return sql.selectOne(namespace + ".memberLogin", vo);
	}
~~~

boardMapper.xml 일부
~~~xml
<!-- 아이디 중복체크 -->
<select id="idCheck" resultType="int">

	SELECT count(userId) FROM member WHERE userId= #{userId}

</select>
  	
<!-- 로그인 회원정보 확인 -->
<select id="memberLogin" resultType="com.board.domain.BoardVO">
      
         select 
         	userId, userName, userPass, userPhon, userAddr1, userAddr2, userAddr3, regiDate, verify 
         from 
         	member 
         where 
         	userId = #{userId} and userPass = #{userPass}
      
</select>
~~~

### 회원가입

sighup.jsp 일부
~~~jsp
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
~~~
