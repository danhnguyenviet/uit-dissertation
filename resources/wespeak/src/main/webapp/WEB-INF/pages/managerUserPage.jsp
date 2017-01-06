<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>${title}</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/managerUser.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/managerUser.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"
	rel='stylesheet' type='text/css'>
<style>
</style>
</head>
<body>
	<%@ include file="../pages/templates/nav.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">

				<div class="panel panel-default panel-table">
					<div class="panel-heading">
						<div class="row">
							<div class="col col-xs-6">
								<h3 class="panel-title">Users</h3>
							</div>
							<div class="col col-xs-6 text-right">
								<button type="button" class="btn btn-sm btn-primary btn-create"
									onclick="location.href='newUser'">Tạo mới</button>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<table class="table table-striped table-bordered table-list">
							<thead>
								<tr>
									<th><em class="fa fa-cog"></em></th>
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
										<td align="center">
										<a class="btn btn-default" href="userEdit?id=${dept.userId}"><em
												class="fa fa-pencil"></em></a> 
												<a href="userDelete?id=${dept.userId}" class="btn btn-danger"><em
												class="fa fa-trash"></em></a></td>
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
					<!-- 					<div class="panel-footer"> -->
					<!-- 						<div class="row"> -->
					<!-- 							<div class="col col-xs-4">Page 1 of 5</div> -->
					<!-- 							<div class="col col-xs-8"> -->
					<!-- 								<ul class="pagination hidden-xs pull-right"> -->
					<!-- 									<li><a href="#">1</a></li> -->
					<!-- 									<li><a href="#">2</a></li> -->
					<!-- 									<li><a href="#">3</a></li> -->
					<!-- 									<li><a href="#">4</a></li> -->
					<!-- 									<li><a href="#">5</a></li> -->
					<!-- 								</ul> -->
					<!-- 								<ul class="pagination visible-xs pull-right"> -->
					<!-- 									<li><a href="#">«</a></li> -->
					<!-- 									<li><a href="#">»</a></li> -->
					<!-- 								</ul> -->
					<!-- 							</div> -->
					<!-- 						</div> -->
					<!-- 					</div> -->
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