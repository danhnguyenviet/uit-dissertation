<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html lang="en">
<%@include file="../pages/templates/head.jsp" %>
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
			<%
			List<Integer> levelPointsList = (List<Integer>) request.getAttribute("levelPointsList");
			%>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Love</h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<a href="#">
								<div class="col-md-12">
									<button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#level1Modal">
										<span class="pull-left">Level 1</span>First date<span class="badge pull-right"><%=levelPointsList.get(0)%>/ 70</span>
									</button>
								</div>
							</a> 
						</div>
						<br>
						<div class="row">
							<a href="#">
								<div class="col-md-12">
									<button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#level2Modal">
										<span class="pull-left">Level 2</span>Word stress<span class="badge pull-right"><%=levelPointsList.get(1)%>/ 50</span>
									</button>
								</div>
							</a> 
						</div>
						<br>
						<div class="row">
							<a href="#">
								<div class="col-md-12">
									<button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#level3Modal">
										<span class="pull-left">Level 3</span>Early gets the girl<span class="badge pull-right"><%=levelPointsList.get(2)%>/ 50</span>
									</button>
								</div>
							</a> 
						</div>
						<br>
						<div class="row">
							<a href="#">
								<div class="col-md-12">
									<button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#level4Modal">
										<span class="pull-left">Level 4</span>Sentence stress<span class="badge pull-right"><%=levelPointsList.get(3)%>/ 90</span>
									</button>
								</div>
							</a> 
						</div>
						<br>
						<div class="row">
							<a href="#">
								<div class="col-md-12">
									<button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#level5Modal">
										<span class="pull-left">Level 5</span>Journey for two<span class="badge pull-right"><%=levelPointsList.get(4)%>/ 50</span>
									</button>
								</div>
							</a> 
						</div>
						<br>
						<div class="row">
							<a href="#">
								<div class="col-md-12">
									<button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#level6Modal">
										<span class="pull-left">Level 6</span>You're not alone<span class="badge pull-right"><%=levelPointsList.get(5)%>/ 60</span>
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
						<h3 class="modal-title"><strong>First date</strong></h3>
					</div>
					<div class="modal-body">
						<h4><strong>Keywords:</strong> nervous, hurts, first date, concerned, alone, perfect.</h4>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="redirectPlayLevel1();">Play</button>
						<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="redirectListenLevel1();">Listen</button>
					</div>
				</div>

			</div>
		</div>
		<!-- Level 2 Modal -->
		<div class="modal fade" id="level2Modal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h3 class="modal-title"><strong>Word stress</strong></h3>
					</div>
					<div class="modal-body">
						<h4>Is she perfect for you?</h4>
						<h4>Stress it right when you ask that question!</h4>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="redirectStartLevel2();">Start</button>
					</div>
				</div>

			</div>
		</div>
		<!-- Level 3 Modal -->
		<div class="modal fade" id="level3Modal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h3 class="modal-title"><strong>/ɜr/ - Early gets the girl</strong></h3>
					</div>
					<div class="modal-body">
						<h4>The early bird gets the girl, or is it?</h4>
						<h4>In this level, you will learn how to say the sound <strong>/ɜr/</strong> in the most charming way!</h4>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="redirectStartLevel3();">Start</button>
					</div>
				</div>

			</div>
		</div>
		<!-- Level 4 Modal -->
		<div class="modal fade" id="level4Modal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h3 class="modal-title"><strong>Sentence stress</strong></h3>
					</div>
					<div class="modal-body">
						<h4>Do you believe in love at first sight?</h4>
						<h4>I'm ready to hear you say more words!</h4>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="redirectStartLevel4();">Start</button>
					</div>
				</div>

			</div>
		</div>
		<!-- Level 5 Modal -->
		<div class="modal fade" id="level5Modal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h3 class="modal-title"><strong>/ɜr/ - Journey for two</strong></h3>
					</div>
					<div class="modal-body">
						<h4>A journey of a thousand miles starts with one small step.</h4>
						<h4>Have a journey with the <strong>/ɜr/</strong> sound here!</h4>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="redirectStartLevel5();">Start</button>
					</div>
				</div>

			</div>
		</div>
		<!-- Level 6 Modal -->
		<div class="modal fade" id="level6Modal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h3 class="modal-title"><strong>You're not alone</strong></h3>
					</div>
					<div class="modal-body">
						<h4>You're not alone.</h4>
						<h4>Only when you say "alone" correctly! Just kidding, I'll show you how.</h4>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="redirectStartLevel6();">Start</button>
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
	
	function redirectStartLevel2() {
		window.location = "${pageContext.request.contextPath}/startLevel2OfLove";
	}
	
	function redirectStartLevel3() {
		window.location = "${pageContext.request.contextPath}/startLevel3OfLove";
	}
	
	function redirectStartLevel4() {
		window.location = "${pageContext.request.contextPath}/startLevel4OfLove";
	}
	
	function redirectStartLevel5() {
		window.location = "${pageContext.request.contextPath}/startLevel5OfLove";
	}
	
	function redirectStartLevel6() {
		window.location = "${pageContext.request.contextPath}/startLevel6OfLove";
	}
</script>
</html>