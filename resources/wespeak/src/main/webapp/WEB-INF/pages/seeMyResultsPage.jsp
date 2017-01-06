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
									<button class="btn btn-primary" id="btnPlayAgain" onclick="redirectPlayAgain();">Play again</button>&nbsp;&nbsp;
									<button class="btn btn-primary" id="btnReturnLevel" onclick="redirectLevels();">Return the level</button>
								</center>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

</body>
<script type="text/javascript">
	function redirectLevels() {
		window.location = "${pageContext.request.contextPath}/love";
	}
	
	function redirectPlayAgain() {
		switch (${levelId}) {
		case 1:
			window.location = "${pageContext.request.contextPath}/playLevel1OfLove";
			break;
		case 2:
			window.location = "${pageContext.request.contextPath}/startLevel2OfLove";
			break;
		case 3:
			window.location = "${pageContext.request.contextPath}/startLevel3OfLove";
			break;
		case 4:
			window.location = "${pageContext.request.contextPath}/startLevel4OfLove";
			break;
		case 5:
			window.location = "${pageContext.request.contextPath}/startLevel5OfLove";
			break;
		case 6:
			window.location = "${pageContext.request.contextPath}/startLevel6OfLove";
			break;
		}
	}
</script>
</html>