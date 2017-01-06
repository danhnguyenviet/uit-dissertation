<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>${title}</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<style>
body {
	background: url('img/train.png') no-repeat center fixed;
	background-size: cover;
}
</style>
</head>
<body>
	<%@ include file="../pages/templates/nav.jsp"%>
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
							<label for="usrname"><span
								class="glyphicon glyphicon-user"></span> Nhập tên lớp</label> <input
								type="text" class="form-control" id="usrname"
								placeholder="Tên lớp">
						</div>
						<button type="submit" class="btn btn-success btn-block">
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