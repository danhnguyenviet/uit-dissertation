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
						<h3 class="panel-title">Your results</h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-12">
								<center>
									<img alt="brief-logo" src="img/brief-logo.png">
									<h2>Level points: <b>70</b>/ 70</h2>
									<h2>Total points: <b>70</b>/ 730</h2>
								</center>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-md-12">
								<center>
									<button class="btn btn-primary" id="btnPlayAgain">Play again</button>&nbsp;&nbsp;
									<button class="btn btn-primary" id="btnReturnLevel">Return the level</button>
								</center>
							</div>
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