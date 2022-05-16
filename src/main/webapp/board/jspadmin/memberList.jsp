<%@page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="member.MemberBean1" %>
<%@ page import="member.MemberMgr1"%>
<jsp:useBean id="mgr" class="member.MemberMgr1"/>

<%
	
	String adminId = (String)session.getAttribute("idKey");
	
	MemberBean1 abean = new MemberBean1();
	abean = mgr.getMember(adminId);
	if(abean.getGrade()=="1"){
		System.out.println("관리자입니다.");	
	}

	
	Vector<MemberBean1> vlist = new Vector<MemberBean1>(); 
	vlist = mgr.listMember();
%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>관리자 페이지</title>
<!-- 부트스트랩 요소 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
</head>
<script>
function deleteChk(id, name){
	alert(
			'정말로 다음 회원을 강제 탈퇴시키겠습니까?\nid: '+ id + '\n이용자명:'+	name);
	return false;
}

</script>

<body style="padding: 5vw;">
	<h3>관리자 페이지입니다.</h3>
	<hr>
	<table class="table">
		
		<thead>
			<tr>
				<th scope="col">No.</th>
				<th scope="col">id</th>
				<th scope="col">name</th>
				<th scope="col">email</th>
				<th scope="col">phone</th>
				<th scope="col"></th>
			</tr>
		</thead>
		
		<tbody>
		<%for (int i=0; i < vlist.size(); i++){
				MemberBean1 mbean = vlist.get(i);
				int num = i;
				String id = mbean.getId();
				String name = mbean.getName();
				String email = mbean.getEmail1() + "@" + mbean.getEmail2();
				String phone = mbean.getPhone1() + "-" + mbean.getPhone2() + "-" + mbean.getPhone3();
			%>
			<tr>
				<th scope="row"><%=num%></th>
				<td><%=id%></td>
				<td><%=name%></td>
				<td><%=email%></td>
				<td><%=phone%></td>
				<td><a href="#"
					onclick="deleteChk('<%=id%>','<%=name%>')">
						<button type="button" class="btn btn-outline-danger">X</button>
				</a></td>

			</tr>
			<%} %>
			
			
			
			
		</tbody>
	</table>
	
</body>
</html>