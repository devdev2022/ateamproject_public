<%@page contentType="text/html; charset=UTF-8"%>
<%

//세션에서 id를 가져온다. 밑에 자세한 의미.
// 로그인 폼의 action="loginProc.jsp"페이지에 세션에 '설정'한 session.setAttribute("idKey", id);		
	String id=(String)session.getAttribute("idKey");

		
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>LOGIN</title>
<link href="style.css" rel="stylesheet" type="text/css">

<script type="text/javascript">

 function loginCheck(){
		/* f=document.loginFrm.id.value;
	 	 	document는 html창 모두. loginFrm로그인 폼의 이름. id는 로그인의 이름. value은 그 값.; */
	 f=document.loginFrm;
  	if(f.id.value==""){
  		alert("아이디를 입력하세요.!!");
  		f.id.focus();
  			return; // 밑 실행 안하고 빠져나감.
  		}
  		if(f.pwd.value==""){
  			alert("비밀번호를 입력하세요");
  			f.pwd.focus();
  			return; // 밑 실행 안하고 빠져나감.
 }
  		f.submit();
 }
</script>
</head>
<body bgcolor="#ffffcc">	

 <div align="center"><br><br>
 
  <%if(id!=null){ %>
  
  <!-- 밑은 로그인 성공시 -->
  
  <b><%=id %></b>님 환영합니다.<br>
 <h1>  >>> YOU ARE AVAILABLE NOW<<< </h1>	<br><p>
 <h2>  <a href="logout.jsp">LOGOUT</a></h2><p>
   <a href="memberUpdate.jsp">회원수정할라우??</a>
<%    }else{%>
    <!-- 밑은 로그인 실패시 -->
 
 <form name="loginFrm" method="post" action="loginProc.jsp">
			<table border="1">
				<tr>
					<td align="center" colspan="2"><h4>로그인</h4></td>
				</tr>
				<tr>
					<td>아 이 디</td>
					<td><input name="id" value="aab"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pwd" value="1234"></td>
				</tr>
				<tr>
					<td colspan="2">
						<div align="right">
							<input type="button" value="로그인" 
							onclick="loginCheck()">&nbsp;
							
							<input type="button" value="회원가입" 
							onclick="javascript:location.href='member.jsp'">
						</div>
					</td>
				</tr>
			</table>
		</form>   
      	
<%    }%>
  
   
 </div>

</body>
</html>

















