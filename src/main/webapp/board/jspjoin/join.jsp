<%@page contentType="text/html; charset=UTF-8"%>
<%

%>


<head>
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
  width: 75vw;
  height: 800px;
  min-height: 30vw;
  margin-top: 0vw;
  padding-top: 0%;
  background-color: #c9c9c9;
}

.memberlbl {
  width: 75vw;
  height: 5vw;
  padding-top: 1vw;
  padding-left: 1vw;
}

.profile_div {
  margin-left: 60%;
}

.section {
  width: 100vw;
}

.side_tab {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  width: 20vw;
  height: auto;
  min-height: 50vw;
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
  font-size: 2vw;
  white-space: normal;
}

@media screen and (max-width: 767px) {
  .joinbody {
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -webkit-flex-direction: column;
    -ms-flex-direction: column;
    flex-direction: column;
  }

  .side_tab {
    width: 80vw;
    height: 10vw;
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
<body class="joinbody">
	<div class="side_tab">
		<div class="tablbl">
			회원<br/>‍
		</div>
		<div class="tab_item">로그인</div>
		<div class="tab_item">회원가입</div>
		<div class="tab_item">ID/PW</div>
	</div>
	<div class="w-container">
		<div class="memberlbl">개인정보 찾기</div>
		<div class="join_form_block">
			<div class="profile_div"></div>
		</div>
	</div>
	
</body>
