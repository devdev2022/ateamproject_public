<%@page contentType="text/html; charset=UTF-8"%>
<%
	
%>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<style>
.container{
	margin-top: 5vw;
}

.col{
	background-color: blue;
	margin-right: 3vw;
}

.grid_item {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	width: 15vw;
	height: 15vw;
	padding: 0.5vw;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-box-align: stretch;
	-webkit-align-items: stretch;
	-ms-flex-align: stretch;
	align-items: stretch;
	background-color: #4b4343;
}

.grid_upper {
	height: 60%;
	background-color: #fff;
}

.grid_lower {
	display: -ms-grid;
	display: grid;
	height: 40%;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
	grid-auto-columns: 1fr;
	grid-column-gap: 0px;
	grid-row-gap: 0px;
	-ms-grid-columns: 1fr 1fr;
	grid-template-columns: 1fr 1fr;
	-ms-grid-rows: auto auto auto;
	grid-template-rows: auto auto auto;
	background-color: #080808;
}

.grid_lower *{
color: white;
font-size: 0.5vw;
}	

</style>

<div class="container">
	<div class="row">
		<div class="col">

			<div class="grid_item">
				<div class="grid_upper"></div>
				<div class="grid_lower">
					<table>
						<tr>
							<td style="font-size: 0.7vw;">게시글 제목</td>
						</tr>
						<tr>
							<td>작성자</td>
						</tr>
						<tr>
							<td>♡ 12 | 조회 134</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="col">

			<div class="grid_item">
				<div class="grid_upper"></div>
				<div class="grid_lower">
					<table>
						<tr>
							<td style="font-size: 0.7vw;">게시글 제목</td>
						</tr>
						<tr>
							<td>작성자</td>
						</tr>
						<tr>
							<td>♡ 12 | 조회 134</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="col">

			<div class="grid_item">
				<div class="grid_upper"></div>
				<div class="grid_lower">
					<table>
						<tr>
							<td style="font-size: 0.7vw;">게시글 제목</td>
						</tr>
						<tr>
							<td>작성자</td>
						</tr>
						<tr>
							<td>♡ 12 | 조회 134</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="col">

			<div class="grid_item">
				<div class="grid_upper"></div>
				<div class="grid_lower">
					<table>
						<tr>
							<td style="font-size: 0.7vw;">게시글 제목</td>
						</tr>
						<tr>
							<td>작성자</td>
						</tr>
						<tr>
							<td>♡ 12 | 조회 134</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="col">

			<div class="grid_item">
				<div class="grid_upper"></div>
				<div class="grid_lower">
					<table>
						<tr>
							<td style="font-size: 0.7vw;">게시글 제목</td>
						</tr>
						<tr>
							<td>작성자</td>
						</tr>
						<tr>
							<td>♡ 12 | 조회 134</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

