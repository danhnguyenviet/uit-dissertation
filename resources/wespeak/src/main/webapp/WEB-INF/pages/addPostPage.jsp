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
<script src="ckeditor/ckeditor.js"></script>
</head>
<style>
body {
	background: url('img/train-no-text.png') no-repeat center fixed;
	background-size: cover;
}
</style>
<body>
	<%@ include file="../pages/templates/nav.jsp"%>
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">Thêm bài viết</div>
			<div class="panel-body">
				<form class="form-horizontal" role="form" id="insertPostForm" action="savePost" method="POST"
							enctype=”multipart/form-data” onsubmit="sendPost()">
					<div class="form-group">
						<label for="title_c" class="col-sm-2 control-label">Tiêu đề</label>
						<div class="col-sm-10">
							<input type="text" id="title_c" name="title" placeholder="Tiêu đề"
								class="form-control" autofocus required>
						</div>
					</div>
					<div class="form-group">
						<label for="content_c" class="col-sm-2 control-label">Nội dung</label>
						<div class="col-sm-10">
							<textarea id="content_c" name="content" class="form-control"></textarea>
						</div>
					</div>
					<div class="form-group">
						<label for="image_c" class="col-sm-2 control-label">Ảnh bài viết</label>
						<div class="col-sm-10">
							<input type="file" id="image_c" name="image" class="form-control">
						</div>
					</div>
					
					<!-- /.form-group -->
					<div class="form-group">
						<div class="col-sm-10 col-sm-offset-2">
							<button type="submit" class="btn btn-primary btn-block">Lưu bài viết</button>
						</div>
					</div>
				</form>
				<!-- /form -->
			</div>
		</div>
	</div>
	<!-- ./container -->
	<script>
       // Replace the <textarea id="editor1"> with a CKEditor
       // instance, using default configuration.
       CKEDITOR.replace( 'content' );

       function sendPost() {
    	   var title = document.getElementById("title_c").value;
           var content = document.getElementById("content_c").value;
           var image = document.getElementById("image_c").value;
           
    	   $.post("${pageContext.request.contextPath}/savePost", {
				title_c : title,
				content_c : content,
				image_c : image
			})
			.done(
					function(data) {
						//alert("true " + userId + " " + levelId + " " + point);
						window.location = "${pageContext.request.contextPath}/basicInfo";
					})
			.fail(
					function() {
						//alert("false " + userId + " " + levelId + " " + point);
						window.location = "${pageContext.request.contextPath}/basicInfo";
					});
       }
   	</script>
</body>
</html>