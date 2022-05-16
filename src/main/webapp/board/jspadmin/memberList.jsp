<%@page contentType="text/html; charset=UTF-8"%>
<%
	
%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>관리자 페이지</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
</head>
<script>
function deleteChk(){
	alert(
			'정말로 다음 회원을 강제 탈퇴시키겠습니까?\nid: \n이용자명:'	);
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
			<tr>
				<th scope="row">1</th>
				<td>Mark</td>
				<td>Mark</td>
				<td>Mark</td>
				<td>Otto</td>
				<td><a href="#"
					onclick="deleteChk()">
						<button type="button" class="btn btn-outline-danger">X</button>
				</a></td>

			</tr>
			
			<tr>
				<th scope="row">2</th>
				<td>Mark</td>
				<td>Mark</td>
				<td>Mark</td>
				<td>Otto</td>
				<td><a href="#"
					onclick="deleteChk()">
						<button type="button" class="btn btn-outline-danger">X</button>
				</a></td>

			</tr>
			
			
			
		</tbody>
	</table>
	
</body>
</html>