<%@page contentType="text/html; charset=UTF-8"%>
<%

%>

<head>
<!-- 부트스트랩 영역-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<!-- webflow 영역-->
<style>

.joinbody {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  margin-top: 0vw;
  -webkit-box-orient: horizontal;
  -webkit-box-direction: normal;
  -webkit-flex-direction: row;
  -ms-flex-direction: row;
  flex-direction: row;
  -webkit-box-pack: start;
  -webkit-justify-content: flex-start;
  -ms-flex-pack: start;
  justify-content: flex-start;
  -webkit-flex-wrap: nowrap;
  -ms-flex-wrap: nowrap;
  flex-wrap: nowrap;
  -webkit-box-align: stretch;
  -webkit-align-items: stretch;
  -ms-flex-align: stretch;
  align-items: stretch;
}

.login_logo {
  width: 30vw;
  height: 5vw;
  background-color: #c9c9c9;
  text-align: center;
}

.join_form_block {
  width: 100%;
  min-height: 30vw;
  padding-left: 1vw;
  padding-top: 0%;
  background-color: white;
}

.memberlbl {
  width: 100%;
  height: 5vw;
  padding-top: 1vw;
  padding-left: 1vw;
}



.section {
  width: 100vw;
}

.side_tab {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  width: 20%;
  height: auto;
  min-height: 50vw;
  margin: 1vw 0vw 1vw 1vw;
  padding-top: 1vw;
  padding-bottom: 1vw;
  padding-left: 1vw;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
  -ms-flex-direction: column;
  flex-direction: column;
  -webkit-box-align: center;
  -webkit-align-items: center;
  -ms-flex-align: center;
  align-items: center;
  border-right: 1px solid #000;
  background-color: transparent;
  font-size: 2vw;
}

.side {
  border: 1px solid #000;
}

.tablbl {
  width: 15vw;
  height: 10vw;
  padding-left: 2vw;
  color: #000;
  font-size: 3vw;
}

.div-block-2 {
  height: 7vw;
}

.tab_item {
  width: 15vw;
  height: 7vw;
  padding-left: 2vw;
  border-top: 1px solid #000;
  background-color: transparent;
  vertical-algin: center;
  font-size: 2vw;
  white-space: normal;
}

.join_form_container {
  max-width: 80%;
}

.form_block {
  width: 70%;
}

@media screen and (max-width: 900px) {
  .joinbody {
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -webkit-flex-direction: column;
    -ms-flex-direction: column;
    flex-direction: column;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -ms-flex-align: center;
    align-items: center;
  }

  .side_tab {
    width: 98vw;
    height: 10vw;
    min-height: 10vw;
    margin-top: 1vw;
    margin-right: 1vw;
    margin-left: 1vw;
    -webkit-box-orient: horizontal;
    -webkit-box-direction: normal;
    -webkit-flex-direction: row;
    -ms-flex-direction: row;
    flex-direction: row;
    border: 1px none #000;
  }

  .tablbl {
    height: 7vw;
  }

  .tab_item {
    padding-left: 1vw;
    -webkit-box-ordinal-group: 2;
    -webkit-order: 1;
    -ms-flex-order: 1;
    order: 1;
    -webkit-box-flex: 1;
    -webkit-flex: 1;
    -ms-flex: 1;
    flex: 1;
    border-right: 1px none #000;
    border-bottom: 1px solid #000;
    border-top-style: none;
    text-align: center;
  }

  .form_block {
    width: 80%;
  }
}

@media screen and (max-width: 479px) {
  .memberlbl {
    font-size: 1vw;
  }

  .tablbl {
    text-decoration: none;
  }

  .tab_item {
    text-align: center;
    background-clip: border-box;
    -webkit-text-fill-color: inherit;
    -o-object-fit: fill;
    object-fit: fill;
  }
}
</style>
</head>
<div class="joinbody">
	<div class="side_tab">
		<div class="tablbl">
			회원<br/>‍
		</div>
		<div class="tab_item">로그인</div>
		<div class="tab_item">회원가입</div>
		<div class="tab_item">ID/PW찾기</div>
	</div>
	
	<div class="form_block">
		<div class="memberlbl"><h3>회원정보 수정</h3></div>
		<div class="join_form_block">
			<div style="margin-top: 2vw;"></div>
			<div class="col-auto profile_div" width="10vw" height="10vw" >	
				<img src="icon/profile_def.png">
			</div>

			<div style="margin-top: 2vw;"></div>
			<div class="row g-1 align-items-center">


				<div>아이디</div>
				<div class="col-auto col-md-4">
					<input type="text" id="id" class="form-control" disabled>
				</div>

				<!-- <button class="btn btn-dark col-auto">중복확인</button> -->



				<div>비밀번호</div>
				<div class="col-auto col-md-4">
					<input type="text" id="id" class="form-control">
				</div>
				<!-- <div>비밀번호 확인*</div>
				<div class="col-auto col-md-4">
					<input type="text" id="id" class="form-control">
				</div> -->
				<div>닉네임</div>
				<div class="col-auto col-md-4">
					<input type="text" id="id" class="form-control">
				</div>



				<div>이메일</div>
				<div class="col-auto col-md-3">
					<input type="text" id="email_id" class="form-control">
				</div>
				<div class="col-auto" disabled>@</div>
				<div class="col-auto col-md-3">
					<input type="text" id="email_domain" class="form-control" disabled>
				</div>
				<!-- <button class="btn btn-dark col-auto">중복확인</button> -->
				<div>휴대폰 번호</div>
				<div class="col-auto col-md-2">
					<input type="text" id="phone_corp" class="form-control">
				</div>
				<div class="col-auto col-md-2">
					<input type="text" id="phone_1" class="form-control">
				</div>
				<div class="col-auto col-md-2">
					<input type="text" id="phone_2" class="form-control">
				</div>
				<div class="col-auto col-md-2">
					<input type="text" id="phone_3" class="form-control">
				</div>
				<div style="margin-top: 3vw;"></div>
			</div>
			<div style="display: flex; justify-content: center; margin-bottom: 3vw;">
				<button type="button" class="btn btn-lg btn-dark">수정완료</button>
				<button type="button" class="btn btn-secondary btn-lg">취소</button>
			</div>


		</div>
	</div>
	
</div>
