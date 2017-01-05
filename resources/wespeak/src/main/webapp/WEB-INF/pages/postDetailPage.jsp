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
			<div class="col-md-9">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							<span class="glyphicon glyphicon-pencil"></span> Bài viết
						</h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-12">
								<div class="textfull">
									<h2>
										<span class="font-arial">${postModel.title}</span>
									</h2>
									<p>${postModel.content}</p>
									<hr>
								</div>
							</div>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							<span class="glyphicon glyphicon-eye-open"></span> Bài viết nổi
							bật
						</h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-sm-12 col-md-12">
								<c:forEach var="dept" items="${postListImportant}">
									<div class="thumbnail">
										<a href="postDetail?id=${dept.postId}"><img
											src="img/50-cau-tieng-anh-giao-tiep-1.png"
											alt="50 câu tiếng anh giao tiếp"></a>
									</div>

									<div class="caption">
										<a href="postDetail?id=${dept.postId}">
										<h4>${dept.title}</h4>
										</a>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>