<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>

<html>
<head>
<title>${title}</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="_menu.jsp" />

	<h2>Admin Page</h2>


	<h3>Welcome : ${pageContext.request.userPrincipal.name}</h3>
	<div class="col-md-2">
		<button type="button" class="btn btn-primary"
			onclick="location.href='checkPost'">Duyệt bài viết</button>
	</div>
</body>
</html>