<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- 카카오 스크립트 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<!-- 카카오 로그인 확인 스크립트 -->
<script>
Kakao.init('03c4acfff67b86424855d7417230df7f'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단
//카카오로그인
function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  console.log(response)
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }
//카카오로그아웃  
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
  }  
</script>
<!-- 네이버 스크립트 -->
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>

<!-- <script type="text/javascript"> 

var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "DREO30p4UF7l6m7yR9_B", //내 애플리케이션 정보의 cliendId
			callbackUrl: "http://localhost:8080/Social_Login/estimate/compare.jsp", // 내 애플리케이션 API설정의 Callback URL
			isPopup: false,
			callbackHandle: true
		}
	);	

naverLogin.init();

window.addEventListener('load', function () {
	naverLogin.getLoginStatus(function (status) {
		if (status) {
			var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
			
			console.log(naverLogin.user); 
    		
// 			if( email == undefined || email == null) {
// 				alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
// 				naverLogin.reprompt();
// 				return;
// 			}
		} else {
			console.log("callback 처리에 실패하였습니다.");
		}
	});
});


var testPopUp;
function openPopUp() {
    testPopUp= window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
}
function closePopUp(){
    testPopUp.close();
}

function naverLogout() {
	openPopUp();
	setTimeout(function() {
		closePopUp();
		}, 1000);
	
	
}
</script> -->


<body>

<ul>
	<li onclick="kakaoLogin();">
      <a href="javascript:void(0)">
          <span>카카오 로그인</span>
      </a>
	</li>
	<li onclick="kakaoLogout();">
      <a href="javascript:void(0)">
          <span>카카오 로그아웃</span>
      </a>
	</li>
</ul>

<!-- <ul> -->
<!-- 	<li> -->
<!--       <a id="naverIdLogin_loginButton" href="javascript:void(0)"> -->
<!--           <span>네이버 로그인</span> -->
<!--       </a> -->
<!-- 	</li> -->
<!-- 	<li onclick="naverLogout(); return false;"> -->
<!--       <a href="javascript:void(0)"> -->
<!--           <span>네이버 로그아웃</span> -->
<!--       </a> -->
<!-- 	</li> -->
<!-- </ul> -->

  <div class="container">
    <h1>Naver Login API 사용하기</h1>
    <div class="login-area">
      <div id="message">
        로그인 버튼을 눌러 로그인 해주세요.
      </div>
      <div id="button_area">
        <div id="naverIdLogin"></div>
      </div>
    </div>
  </div>

</body>

<script type="text/javascript">
  
  const naverLogin = new naver.LoginWithNaverId(
   {
    clientId: "DREO30p4UF7l6m7yR9_B",
    callbackUrl: "http://localhost:8080/Social_Login/estimate/compare.jsp",
    loginButton: {color: "green", type: 2, height: 40}
    }
   );
  

    naverLogin.init();
    naverLogin.getLoginStatus(function (status) {
      if (status) {
          const nickName=naverLogin.user.getNickName();
          const age=naverLogin.user.getAge();
          const birthday=naverLogin.user.getBirthday();

          if(nickName===null||nickName===undefined ){
            alert("별명이 필요합니다. 정보제공을 동의해주세요.");
            naverLogin.reprompt();
            return ;  
         }else{
          setLoginStatus();
         }
	}
      console.log("okay");
    });
    console.log(naverLogin);

    function setLoginStatus(){
    
      const message_area=document.getElementById('message');
      message_area.innerHTML=`
      <h3> Login 성공 </h3>
      <div>user Nickname : ${naverLogin.user.nickname}</div>
      <div>user Age(범위) : ${naverLogin.user.age}</div>
      <div>user Birthday : ${naverLogin.user.birthday}</div>
      `;
     
      const button_area=document.getElementById('button_area');
      button_area.innerHTML="<button id='btn_logout'>로그아웃</button>";

      const logout=document.getElementById('btn_logout');
      logout.addEventListener('click',(e)=>{
        naverLogin.logout();
	location.replace("http://localhost:8080/Social_Login/estimate/compare.jsp");
      })
    }
   

  </script>
</html>