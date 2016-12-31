<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>${title}</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="custom/css/digital-clock.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="custom/js/digital-clock.js"></script>
<script type="text/javascript">
	function newPage(classRoom) {
		var username = document.getElementById("Username").innerHTML;
		var userGroup = document.getElementById("userGroup").innerHTML;
		var url;
		if (userGroup == 4)
			url = "http://125.253.123.33/demo/demo.jsp?username=" + username
					+ "&meetingID=" + classRoom + "&password=" + "prof123"
					+ "&action=create";
		else
			url = "http://125.253.123.33/demo/demo.jsp?username=" + username
					+ "&meetingID=" + classRoom + "&password=" + "student123"
					+ "&action=create";
		window.open(url);
	}

	function newCreate() {

		var classRoomName = document.getElementById("classRoom").value;
		var username = document.getElementById("Username").innerHTML;
		var url = "http://125.253.123.33/demo/demo_create.jsp?username="
				+ username + "&classname=" + classRoomName + "&password="
				+ "prof123" + "&action=create";

		window.open(url);
	}
</script>
<style>
body {
	background: url('img/train-no-text.png') no-repeat center fixed;
	background-size: cover;
}
</style>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">WeSpeak</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="home.html">Trang chủ</a></li>
				<li class="active"><a href="#">Lớp đang học</a></li>
				<li><a href="#">Luyện phát âm</a></li>
				<li><a href="#">Học liệu</a></li>
				<li><a href="#">Bài viết</a></li>
			</ul>
			<form class="navbar-form navbar-left">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search">
					<div class="input-group-btn">
						<button class="btn btn-default" type="submit">
							<i class="glyphicon glyphicon-search"></i>
						</button>
					</div>
				</div>
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
						<p id="Username">${name}</p></a></li>
				<div id="userGroup" class="hidden">${groupUser}</div>
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<span class="glyphicon glyphicon-cog"></span>
						<ul class="dropdown-menu">
							<li><a href="#">Thông tin cơ bản</a></li>
							<li class="divider"></li>
							<li><a href="#">Thoát</a></li>
						</ul>
				</a></li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-md-2">
				<div class="well well-sm">
					<div id="date-clock"></div>
					<div id="digital-clock"></div>
				</div>
			</div>
			<div class="col-md-8">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Lớp đang học</h3>
					</div>
					<div class="panel-body">
						<c:forEach var="dept" items="${classModel}">
							<div class="row">
								<a href="#">
									<div class="col-md-1">
										<img src="img/brief-logo.png" class="img-rounded">
									</div>
									<div class="col-md-1">
									</div>
									<div class="col-md-9">
										<strong>${dept.className}</strong><br> <i>${dept.startDate}-${dept.endDate}</i><br>
										<strong>Giáo viên:</strong> ${dept.fullName}
									</div>
									<div class="col-md-2">
										<button type="button" class="btn btn-primary"
											onclick="newPage('${dept.className}${dept.classId}')">Vào
											học</button>
									</div>
								</a>
							</div>
							<hr>
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<c:if test="${groupUser == 4}">
					<div>
						<button type="button" class="btn btn-success" id="createNewClass">Tạo
							lớp mới</button>
					</div>
				</c:if>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px;">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4>
						<span class="glyphicon glyphicon-new-window"></span> Tạo lớp học
						mới
					</h4>
				</div>
				<div class="modal-body" style="padding: 40px 50px;">
					<form role="form">
						<div class="form-group">
							<label for="classRoom"><span
								class="glyphicon glyphicon-user"></span> Nhập tên lớp</label> <input
								type="text" class="form-control" placeholder="Tên lớp"
								id="classRoom" value="English 01">
						</div>
						<button type="submit" class="btn btn-success btn-block"
							Onclick="newCreate()">
							<span class="glyphicon glyphicon-off"></span> Tạo
						</button>
					</form>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-danger btn-default pull-left"
						data-dismiss="modal">
						<span class="glyphicon glyphicon-remove"></span> Hủy
					</button>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(function() {
			$("#createNewClass").click(function() {
				$("#myModal").modal();
			});
		});
	</script>
</body>
</html>