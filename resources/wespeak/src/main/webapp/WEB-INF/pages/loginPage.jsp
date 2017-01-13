<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<%@include file="../pages/templates/head.jsp"%>
<style>
body {
	background: url('img/train.png') no-repeat center fixed;
	background-size: cover;
}
</style>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="">WeSpeak</a>
			</div>

			<ul class="nav navbar-nav navbar-right">
				<li><a href="register"><span
						class="glyphicon glyphicon-user"></span> Đăng ký</a></li>
				<li><a href="login"><span
						class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
			</ul>
		</div>
	</nav>

	<div class="container">
		<div id="loginbox" style="margin-top: 50px;"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Đăng nhập</div>

				</div>

				<div style="padding-top: 30px" class="panel-body">


					<!-- /login?error=true -->
					<c:if test="${param.error == 'true'}">
						<div style="display: true" id="login-alert"
							class="alert alert-danger col-sm-12">
							<div style="color: red; margin: 10px 0px;">

								Login Failed!!!<br /> Reason :
								${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}

							</div>
						</div>
					</c:if>


					<form id="loginform"
						action="${pageContext.request.contextPath}/j_spring_security_check"
						class="form-horizontal" method="POST" role="form">

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input id="login-username"
								type="text" class="form-control" name="username" value=""
								placeholder="Tên đăng nhập">
						</div>

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-lock"></i></span> <input id="login-password"
								type="password" class="form-control" name="password"
								placeholder="Mật khẩu">
						</div>



						<div class="input-group">
							<div class="checkbox">
								<label> <input id="login-remember" type="checkbox"
									name="remember" value="1"> Ghi nhớ tôi
								</label>
							</div>
						</div>


						<div style="margin-top: 10px" class="form-group">
							<!-- Button -->

							<div class="col-sm-12 controls">

								<button id="btn-login" type="submit" class="btn btn-success">Đăng
									nhập</button>
								<a id="btn-fblogin" href="#" class="btn btn-primary">Đăng
									nhập bằng Facebook</a>

							</div>
						</div>


						<div class="form-group">
							<div class="col-md-12 control">
								<div
									style="border-top: 1px solid #888; padding-top: 15px; font-size: 85%">
									Bạn chưa có tài khoản? <a href="#"
										onClick="$('#loginbox').hide(); $('#signupbox').show()">
										Đăng ký tại đây </a>
								</div>
							</div>
						</div>
					</form>



				</div>
			</div>
		</div>
		<div id="signupbox" style="display: none; margin-top: 50px"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Đăng ký</div>
					<div
						style="float: right; font-size: 85%; position: relative; top: -10px">
						<a id="signinlink" href="#"
							onclick="$('#signupbox').hide(); $('#loginbox').show()">Đăng
							nhập</a>
					</div>
				</div>
				<div class="panel-body">
					<form id="signupform" class="form-horizontal" role="form">

						<div id="signupalert" style="display: none"
							class="alert alert-danger">
							<p>Lỗi:</p>
							<span></span>
						</div>



						<div class="form-group">
							<label for="email" class="col-md-3 control-label">Email</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="email"
									placeholder="Email">
							</div>
						</div>

						<div class="form-group">
							<label for="firstname" class="col-md-3 control-label">Tên</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="firstname"
									placeholder="Tên">
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-md-3 control-label">Họ</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="lastname"
									placeholder="Họ">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label" for="selectbasic">Loại
								thành viên</label>
							<div class="col-md-9">
								<select id="userType" name="userType" class="form-control">
									<option value="0">Học viên</option>
									<option value="1">Giáo viên</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-md-3 control-label">Mật
								khẩu</label>
							<div class="col-md-9">
								<input type="password" class="form-control" name="passwd"
									placeholder="Mật khẩu">
							</div>
						</div>
						<div class="form-group">
							<label for="confirmPassword" class="col-md-3 control-label">Xác
								nhận mật khẩu</label>
							<div class="col-md-9">
								<input type="password" class="form-control"
									name="confirmPassword" placeholder="Xác nhận mật khẩu">
							</div>
						</div>
						<div class="form-group">
							<!-- Button -->
							<div class="col-md-offset-3 col-md-9">
								<button id="btn-signup" type="button" class="btn btn-info">
									<i class="icon-hand-right"></i> &nbsp Đăng ký
								</button>
								<span style="margin-left: 8px;">hoặc</span>
							</div>
						</div>

						<div style="border-top: 1px solid #999; padding-top: 20px"
							class="form-group">

							<div class="col-md-offset-3 col-md-9">
								<button id="btn-fbsignup" type="button" class="btn btn-primary">
									<i class="icon-facebook"></i>   Đăng ký bằng Facebook
								</button>
							</div>

						</div>



					</form>
				</div>
			</div>

		</div>
	</div>
</body>
</html>