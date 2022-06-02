<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="mgr" class="member.MemberMgr"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<title>네이버 로그인 Call Back</title>
</head>
<body>

<script type="text/javascript">
  var naver_id_login = new naver_id_login("TtdhomtlTfeImQCp_RKn", "http://127.0.0.1/ateamweb/board/jsphome/callback.jsp");
  // 접근 토큰 값 출력
  // alert(naver_id_login.oauthParams.access_token);
  // 네이버 사용자 프로필 조회
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
  
  
  function naverSignInCallback() {
	var nvId = (naver_id_login.getProfileData('id')).substring(0,19);  
	var inputId = document.getElementById('inputId');
	inputId.setAttribute('value', nvId);
	
	url="callbackIdProc.jsp?nvId="+nvId;
	
	window.open(url, "ID중복체크", "width=400, height=350"),
	
	setTimeout(naverJoin(), 2000);
  }  
  
  function naverJoin(){
	    alert('새로운 회원정보를 등록하는 중입니다.\n가입완료 후 네이버 로그인 기능으로 다시 로그인해주세요.');
	  	var nvId = (naver_id_login.getProfileData('id')).substring(0,19);
	    var nvEmail = naver_id_login.getProfileData('email');
	    var nvName = naver_id_login.getProfileData('name');
	    var nvPhoto = naver_id_login.getProfileData('profile_img');
		var nvPhone = naver_id_login.getProfileData('mobile');
		//id가 있다면 로그인 시켜주고, 없다면 가입시켜주자.
		
		var inputId = document.getElementById('inputId');
		inputId.setAttribute('value', nvId);
		
		var inputPwd = document.getElementById('inputPwd');
		inputPwd.setAttribute('value', 1111);
		
		var inputName = document.getElementById('inputName');
		inputName.setAttribute('value', nvName);
		
		var inputPhoto = document.getElementById('inputPhoto');
		//프로필 사진이 undefined로 떠서 사진 가져오기 미구현.
		
		var inputEmail1 = document.getElementById('inputEmail1');
		var inputEmail2 = document.getElementById('inputEmail2');
		
		var emailSplit = nvEmail.split('@');
		inputEmail1.setAttribute('value', emailSplit[0]);
	    inputEmail2.setAttribute('value', emailSplit[1]);
		
		
	    var phoneSplit;
	    //네이버 휴대폰 번호가 undefined로 떠서 폰 가져오기 미구현.

		var inputPhone1 = document.getElementById('inputPhone1');
		var inputPhone2 = document.getElementById('inputPhone2');
		var inputPhone3 = document.getElementById('inputPhone3');
		inputPhone1.setAttribute('value', 010);
		inputPhone2.setAttribute('value', 0000);
		inputPhone3.setAttribute('value', 0000);
		
		setTimeout(() => document.regFrm.submit(), 3000);
  }
  
  
</script>

<form name="loginFrm" method="post" action="callbackLoginProc.jsp"
			enctype="multipart/form-data">
	<input type="hidden" id="inputLoginId" name="nvLoginId" value="" >
</form>

<form name="regFrm" method="post" action="../jspmember/joinProc.jsp"
			enctype="multipart/form-data">

			<div class="join_form_block" style="margin-top:60px; display:flex; flex-direction:column; align:center;">
				<div style="margin-top: 2vw;"></div>
				<div class="col-auto profile_div" width="10vw" height="10vw">
					<div class="col-auto profile_div" style="margin-left: 60px;">
						<img src="../icon/spin.gif" width="150vw">
					</div>
					
					<div>*브라우저에서 팝업을 허용해주시기 바랍니다.</div>

					<div style="margin-top: 2vw;"></div>
					<div class="row g-1 align-items-center">


						<div class="col-auto col-md-4">
							<input id="inputId" type="hidden" name="id" value="" class="form-control">
						</div>
						<!--  -->

						<div class="col-auto col-md-4">
							<input id="inputPwd" type="hidden" name="pwd" value="" class="form-control">
						</div>

						<div class="col-auto col-md-4">
							<input id="inputName" type="hidden" name="name" value="" class="form-control">
						</div>


						<div class="col-auto col-md-3">
							<input id="inputEmail1" type="hidden" name="email1" value="" class="form-control">
						</div>
						<div class="col-auto col-md-3">
							<input id="inputEmail2" type="hidden" name="email2" value=""  class="form-control">
						</div>
					
						<div class="col-auto col-md-2">
							<input id="inputPhone1" type="hidden" name="phone1" value="010" class="form-control">
						</div>
						<div class="col-auto col-md-2">
							<input id="inputPhone2" type="hidden" name="phone2" value="" class="form-control">
						</div>
						<div class="col-auto col-md-2">
							<input id="inputPhone3" type="hidden" name="phone3" value="" class="form-control">
						</div>
						<div style="margin-top: 3vw;"></div>
					</div>

					<div
						style="display: flex; justify-content: center; margin-bottom: 3vw;">
					</div>
				</div>
			</div>
		</form>

</body>
</html>