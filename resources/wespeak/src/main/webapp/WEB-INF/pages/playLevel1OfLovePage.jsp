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
	<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="custom/css/digital-clock.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<style>
body {
	background: url('img/train-no-text.png') no-repeat center fixed;
	background-size: cover;
}
</style>
</head>
<body onload="play()">
	<%@include file="../pages/templates/nav.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Love</h3>
					</div>
					<div class="panel-body">
						<center>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8">
									<img src="img/brief-logo.png" alt="man" style="width: 4%">
									<br>
									<h3>Now it's your turn to respond. Read the sentence and receive feedback on the underline sound...</h3>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8">
									<img src="img/manIcon.png" alt="man" style="width: 4%"><span id="text1Level1" style="font-size: 125%"> How are you feeling today?</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8">
									<img src="img/womanIcon.png" alt="woman" style="width: 4%"><span id="text2Level1" style="font-size: 125%"> I am so <u>nervous</u> it <u>hurts</u>.</span>
								</div>
							</div>
							<br>
							<br>
							<div class="row">
								<div class="col-md-3"></div>
								<div class="col-md-2">
								<span class="pull-left">
									<img src="img/speakIcon.png" alt="man" style="width: 20%"><span id="text1Level1" style="font-size: 125%"></span>
									</span>
								</div>
								<div class="col-md-2">
									<img src="img/speechToTextIcon.png" alt="man" style="width: 20%"><span id="text1Level1" style="font-size: 125%"></span>
								</div>
								<div class="col-md-2">
									<span class="pull-left">
									<img src="img/nextIcon.png" alt="man" style="width: 20%"><span id="text1Level1" style="font-size: 125%"></span>
									</span>
								</div>
								<div class="col-md-3"></div>
							</div>
						</center>
					</div>
				</div>
			</div>
		</div>

	</div>
	<audio id="l1Audio1" src="voices/love.level1/level1.1.mp3"></audio>
	<audio id="l1Audio2" src="voices/love.level1/level1.2.mp3"></audio>
	<audio id="l1Audio3" src="voices/love.level1/level1.3.mp3"></audio>
	<audio id="l1Audio4" src="voices/love.level1/level1.4.mp3"></audio>
	<audio id="l1Audio5" src="voices/love.level1/level1.5.mp3"></audio>
	<audio id="l1Audio6" src="voices/love.level1/level1.6.mp3"></audio>
	<audio id="l1Audio7" src="voices/love.level1/level1.7.mp3"></audio>
	<audio id="l1Audio8" src="voices/love.level1/level1.8.mp3"></audio>
	<audio id="l1Audio9" src="voices/love.level1/level1.9.mp3"></audio>
	<audio id="l1Audio10" src="voices/love.level1/level1.10.mp3"></audio>
	<audio id="l1Audio11" src="voices/love.level1/level1.11.mp3"></audio>

	<script type="text/javascript">
	
	</script>

</body>
</html>