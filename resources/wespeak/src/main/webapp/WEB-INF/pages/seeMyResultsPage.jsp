<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<%@include file="../pages/templates/head.jsp"%>
<style>
body {
	background: url('img/train-no-text.png') no-repeat center fixed;
	background-size: cover;
}
</style>

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
									<h2>Level points: <b>${mrm.getLevelPoints()}</b>/ 70</h2>
									<h2>Total points: <b>${mrm.getTotalPoints()}</b>/ 730</h2>
								</center>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-md-12">
								<center>
									<button class="btn btn-primary" id="btnPlayAgain" onclick="redirectPlayLevel1();">Play again</button>&nbsp;&nbsp;
									<button class="btn btn-primary" id="btnReturnLevel" onclick="redirectListenLevel1();">Return the level</button>
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
		window.location = "${pageContext.request.contextPath}/love";
	}
	
	function redirectPlayLevel1() {
		window.location = "${pageContext.request.contextPath}/playLevel1OfLove";
	}
</script>
</html>