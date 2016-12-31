<%@ page contentType="text/html; charset=UTF-8" %>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="home">WeSpeak</a>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="home">Trang chủ</a></li>
			<li><a href="classlist">Lớp đang học</a></li>
			<li><a href="pronunciation">Luyện phát âm</a></li>
			<li><a href="courseware">Học liệu</a></li>
			<li><a href="posts">Bài viết</a></li>
		</ul>
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
						<li><a href="#">Thông tin cơ bản</a></li>
						<li class="divider"></li>
						<li><a href="${pageContext.request.contextPath}/logout">Thoát</a></li>
					</ul>
			</a></li>
		</ul>
	</div>
</nav>