<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>${title}</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.js"></script>
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<style>
</style>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="home">WeSpeak</a>
			</div>
			<!-- <ul class="nav navbar-nav">
				<li><a href="home">Trang chủ</a></li>
				<li><a href="classList">Lớp đang học</a></li>
				<li><a href="pronunciation">Luyện phát âm</a></li>
				<li><a href="courseware">Học liệu</a></li>
				<li><a href="posts">Bài viết</a></li>
			</ul>  -->
			<!-- <form class="navbar-form navbar-left">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="Tìm kiếm">
				<div class="input-group-btn">
					<button class="btn btn-default" type="submit">
						<i class="glyphicon glyphicon-search"></i>
					</button>
				</div>
			</div>
		</form>  -->
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
						${username}</a></li>
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<span class="glyphicon glyphicon-cog"></span>
						<ul class="dropdown-menu">
							<li><a href="${pageContext.request.contextPath}/basicInfo">Thông
									tin cơ bản</a></li>
							<li class="divider"></li>
							<li><a href="${pageContext.request.contextPath}/logout">Thoát</a></li>
						</ul>
				</a></li>
			</ul>
		</div>
	</nav>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							<span class="glyphicon glyphicon-list"></span> Danh sách các bài
							viết chưa được kiểm duyệt
						</h3>
					</div>
					<div class="panel-body">
						<c:forEach var="dept" items="${postModel}">
							<div class="row">
								<div class="col-md-3">
									<a href="postDetail?id=${dept.postId}"><img
										src="img/50-cau-tieng-anh-giao-tiep-1.png" class="img-rounded"></a>
								</div>
								<div class="col-md-9">
									<a href="postDetail?id=${dept.postId}"><strong>${dept.title}</strong></a><br>
									<p>${dept.briefDescription}</p>
								</div>
								<div class="col-md-2">
									<button type="button" class="btn btn-primary"
										onclick="location.href='checkPostOK?id=${dept.postId}'">Đăng
										bài</button>
								</div>
								<div class="col-md-2">
									<button type="button" class="btn btn-primary"
										onclick="location.href='checkPostCancel?id=${dept.postId}'">Hủy
										bài</button>
								</div>
							</div>
							<hr>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default panel-table">
				<div class="panel-heading">
					<div class="row">
						<div class="col col-xs-6">
							<h3 class="panel-title">Users</h3>
						</div>
						<div class="col col-xs-6 text-right">
							
						</div>
					</div>
				</div>
				<div class="panel-body">
					<table class="table table-striped table-bordered table-list">
						<thead>
							<tr>
								<th class="hidden-xs">ID</th>
								<th>Họ và Tên</th>
								<th>Tên tài khoản</th>
								<th>Giới tính</th>
								<th>Nhóm tài khoản</th>
								<th>ngày tạo</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="dept" items="${userModel}">
								<tr>
									<td class="hidden-xs">${dept.userId}</td>
									<td>${dept.fullName}</td>
									<td>${dept.username}</td>
									<td>${dept.gender}</td>
									<td>${dept.userGroupId}</td>
									<td>${dept.createdDate}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

				</div>

			</div>
		</div>
		</div>
	</div>
</body>
</html>