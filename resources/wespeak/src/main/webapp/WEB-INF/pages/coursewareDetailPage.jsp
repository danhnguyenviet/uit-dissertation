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
.centerTrue {
	margin: auto;
	width: 90%;
	border: 3px solid black;
	text-align: center;
}
.centerFalse {
	margin: auto;
	width: 100%;
	text-align: center;
}

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
							<span class="glyphicon glyphicon-asterisk"></span> Chi tiết học
							liệu
						</h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-2">
								<br> <img src="img/hoc-tieng-anh-giao-tiep.png"
									class="pull-right">
							</div>
							<div class="col-md-10">
								<h4>${coursewareModel.coursewareName}</h4>
								<p>
									<span class="glyphicon glyphicon-user"></span>${coursewareModel.author}</p>
								<p>
									<span class="glyphicon glyphicon-upload"></span>
									${coursewareModel.userName}
								</p>
								<p>
									<span class="glyphicon glyphicon-eye-open"></span>
									${coursewareModel.numOfView} lượt đọc
								</p>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-md-12">
								<label>Giới thiệu</label>
								<p>${coursewareModel.description}</p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="centerTrue">
									<embed src="${coursewareModel.coursewarePath}" width="800px" height="600px" class="centerFalse"/>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>