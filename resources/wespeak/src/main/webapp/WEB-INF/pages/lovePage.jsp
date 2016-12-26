<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<style>
body {
	background: url('img/train-no-text.png') no-repeat center fixed;
	background-size: cover;
}
</style>
</head>
<body>
	<%@include file="../pages/templates/nav.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Love</h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<a href="#">
								<div class="col-md-6">
									<button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#level1Modal">
										<span class="glyphicon glyphicon-lock pull-left"></span> Level
										1: First date<span class="badge pull-right">0/40</span>
									</button>
								</div>
							</a> <a href="#">
								<div class="col-md-6">
									<button type="button" class="btn btn-primary btn-block">
										<span class="glyphicon glyphicon-lock pull-left"></span> Level
										7: The One
									</button>
								</div>
							</a>
						</div>
						<br>
						<div class="row">
							<a href="#">
								<div class="col-md-6">
									<button type="button" class="btn btn-primary btn-block">
										<span class="glyphicon glyphicon-lock pull-left"></span> Level
										2: Word stress
									</button>
								</div>
							</a> <a href="#">
								<div class="col-md-6">
									<button type="button" class="btn btn-primary btn-block">
										<span class="glyphicon glyphicon-lock pull-left"></span> Level
										8: Word stress
									</button>
								</div>
							</a>
						</div>
						<br>
						<div class="row">
							<a href="#">
								<div class="col-md-6">
									<button type="button" class="btn btn-primary btn-block">
										<span class="glyphicon glyphicon-lock pull-left"></span> Level
										3: Early gets the girl
									</button>
								</div>
							</a> <a href="#">
								<div class="col-md-6">
									<button type="button" class="btn btn-primary btn-block">
										<span class="glyphicon glyphicon-lock pull-left"></span> Level
										9: Ocean eleven
									</button>
								</div>
							</a>
						</div>
						<br>
						<div class="row">
							<a href="#">
								<div class="col-md-6">
									<button type="button" class="btn btn-primary btn-block">
										<span class="glyphicon glyphicon-lock pull-left"></span> Level
										4: Sentence stress
									</button>
								</div>
							</a> <a href="#">
								<div class="col-md-6">
									<button type="button" class="btn btn-primary btn-block">
										<span class="glyphicon glyphicon-lock pull-left"></span> Level
										10: Sentence stress
									</button>
								</div>
							</a>
						</div>
						<br>
						<div class="row">
							<a href="#">
								<div class="col-md-6">
									<button type="button" class="btn btn-primary btn-block">
										<span class="glyphicon glyphicon-lock pull-left"></span> Level
										5: Journey for two
									</button>
								</div>
							</a> <a href="#">
								<div class="col-md-6">
									<button type="button" class="btn btn-primary btn-block">
										<span class="glyphicon glyphicon-lock pull-left"></span> Level
										11: I promis you
									</button>
								</div>
							</a>
						</div>
						<br>
						<div class="row">
							<a href="#">
								<div class="col-md-6">
									<button type="button" class="btn btn-primary btn-block">
										<span class="glyphicon glyphicon-lock pull-left"></span> Level
										6: You're not alone
									</button>
								</div>
							</a> <a href="#">
								<div class="col-md-6">
									<button type="button" class="btn btn-primary btn-block">
										<span class="glyphicon glyphicon-lock pull-left"></span> Level
										12: Love hurts
									</button>
								</div>
							</a>
						</div>
						<br>
						<div class="row">
							<div class="col-md-6">
								<center>
									<strong>Half way there!</strong>
								</center>
							</div>
							<a href="#">
								<div class="col-md-6">
									<button type="button" class="btn btn-primary btn-block">
										<span class="glyphicon glyphicon-lock pull-left"></span> Level
										13: FA forever alone
									</button>
								</div>
							</a>
						</div>
						<br>
						<div class="row">
							<a href="#">
								<div class="col-md-6"></div>
							</a> <a href="#">
								<div class="col-md-6">
									<button type="button" class="btn btn-primary btn-block">
										<span class="glyphicon glyphicon-lock pull-left"></span> Level
										14: Purpose purpose purpose
									</button>
								</div>
							</a>
						</div>
						<br>
						<div class="row">
							<a href="#">
								<div class="col-md-6"></div>
							</a> <a href="#">
								<div class="col-md-6">
									<button type="button" class="btn btn-primary btn-block">
										<span class="glyphicon glyphicon-lock pull-left"></span> Level
										15: Sorry, I am taken
									</button>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Level 1 Modal -->
		<div class="modal fade" id="level1Modal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">First date</h4>
					</div>
					<div class="modal-body">
						<p><strong>Keywords:</strong> nervous, hurts, first date, concerned, alone, perfect.</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="redirectPlayLevel1();">Play</button>
						<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="redirectListenLevel1();">Listen</button>
					</div>
				</div>

			</div>
		</div>
		
		
	</div>

</body>
<script type="text/javascript">
	function redirectListenLevel1() {
		window.location = "${pageContext.request.contextPath}/listenLevel1OfLove";
	}
	
	function redirectPlayLevel1() {
		window.location = "${pageContext.request.contextPath}/playLevel1OfLove";
	}
</script>
</html>