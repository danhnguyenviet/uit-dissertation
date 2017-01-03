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
									<button type="button" class="btn btn-primary btn-block">
										<span class="pull-left">Level 2</span>Word stress<span class="badge pull-right"><%=levelPointsList.get(1)%>/ 50</span>
									</button>
								</div>
							</a> 
						</div>
						<br>
						<div class="row">
							<a href="#">
								<div class="col-md-12">
									<button type="button" class="btn btn-primary btn-block">
										<span class="pull-left">Level 3</span>Early gets the girl<span class="badge pull-right"><%=levelPointsList.get(2)%>/ 50</span>
									</button>
								</div>
							</a> 
						</div>
						<br>
						<div class="row">
							<a href="#">
								<div class="col-md-12">
									<button type="button" class="btn btn-primary btn-block">
										<span class="pull-left">Level 4</span>Sentence stress<span class="badge pull-right"><%=levelPointsList.get(3)%>/ 90</span>
									</button>
								</div>
							</a> 
						</div>
						<br>
						<div class="row">
							<a href="#">
								<div class="col-md-12">
									<button type="button" class="btn btn-primary btn-block">
										<span class="pull-left">Level 5</span>Journey for two<span class="badge pull-right"><%=levelPointsList.get(4)%>/ 50</span>
									</button>
								</div>
							</a> 
						</div>
						<br>
						<div class="row">
							<a href="#">
								<div class="col-md-12">
									<button type="button" class="btn btn-primary btn-block">
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