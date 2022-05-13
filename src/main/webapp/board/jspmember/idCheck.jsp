<%@page contentType="text/html; charset=UTF-8"%>

<jsp:useBean id="mgr" class="member.MemberMgr"/>

<%
String id=request.getParameter("id");
boolean result=mgr.checkId(id);
//out.print(result);

%>

<!DOCTYPE html>
<html>
<head>
<title>ID 중복체크</title>
<link href="style.css" rel="stylesheet" type="text/css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</head>
<body bgcolor="white">
<div style="margin-top: 5vw; margin-bottom: 5vw;" align="center"><br>
<b><%=id %></b>
<%
 if(result){
	 out.println("는 이미 존재하는 아이디입니다.<p>");
 }else{
	 out.println("는 사용 가능한 아이디입니다.<p>");
 }

%>
</div>
<div align="center">
<a href="#" onclick="self.close()"><button type="button" class="btn btn-dark">닫기</button></a>

</div>
</body>
</html>















