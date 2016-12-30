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
						<div class="row">
							<div class="col-md-12">
								<center><h2>Listen first...</h2></center>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<img src="img/manIcon.png" alt="man" style="width: 4%"><span id="text1Level1" style="font-size: 125%"> How are you feeling today?</span>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<img src="img/womanIcon.png" alt="woman" style="width: 4%"><span id="text2Level1" style="font-size: 125%"> I am so nervous it hurts.</span>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-md-12">
								<img src="img/manIcon.png" alt="man" style="width: 4%"><span id="text3Level1" style="font-size: 125%"> Wow. What are you so nervous about?</span>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<img src="img/womanIcon.png" alt="woman" style="width: 4%"><span id="text4Level1" style="font-size: 125%"> I am going on a first date tonight.</span>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-md-12">
								<img src="img/manIcon.png" alt="man" style="width: 4%"><span id="text5Level1" style="font-size: 125%"> Where did you two meet?</span>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<img src="img/womanIcon.png" alt="woman" style="width: 4%"><span id="text6Level1" style="font-size: 125%"> At a party. For me, it was love at first sight.</span>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-md-12">
								<img src="img/manIcon.png" alt="man" style="width: 4%"><span id="text7Level1" style="font-size: 125%"> Amazing. Pick a quiet and romantic restaurant so you can really talk.</span>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<img src="img/womanIcon.png" alt="woman" style="width: 4%"><span id="text8Level1" style="font-size: 125%"> But I'm concerned about knowing what to say when we are alone.</span>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-md-12">
								<img src="img/manIcon.png" alt="man" style="width: 4%"><span id="text9Level1" style="font-size: 125%"> I've listened to you, I am sure you will have plenty to say.</span>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<img src="img/womanIcon.png" alt="woman" style="width: 4%"><span id="text10Level1" style="font-size: 125%"> I hope so. I want us to be perfect for each other.</span>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-md-12">
								<img src="img/manIcon.png" alt="man" style="width: 4%"><span id="text11Level1" style="font-size: 125%"> Dating is a journey, so just relax and be yourself.</span>
							</div>
						</div>
						<br>
						<center>
							<div class="row">
								<div class="col-md-12">
									<button type="button" class="btn btn-primary btn-lg" onclick="redirectPlayLevel1OfLove()">Play</button>
								</div>
							</div>
						<center>
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
	var au1 = document.getElementById('l1Audio1');
	var au2 = document.getElementById('l1Audio2');
	var au3 = document.getElementById('l1Audio3');
	var au4 = document.getElementById('l1Audio4');
	var au5 = document.getElementById('l1Audio5');
	var au6 = document.getElementById('l1Audio6');
	var au7 = document.getElementById('l1Audio7');
	var au8 = document.getElementById('l1Audio8');
	var au9 = document.getElementById('l1Audio9');
	var au10 = document.getElementById('l1Audio10');
	var au11 = document.getElementById('l1Audio11');
	
	setTimeout(function() {
		playAu1();
	}, 1 * 1000);
	setTimeout(function() {
		playAu2();
	}, 4 * 1000);
	setTimeout(function() {
		playAu3();
	}, 9 * 1000);
	setTimeout(function() {
		playAu4();
	}, 14 * 1000);
	setTimeout(function() {
		playAu5();
	}, 20 * 1000);
	setTimeout(function() {
		playAu6();
	}, 23 * 1000);
	setTimeout(function() {
		playAu7();
	}, 31 * 1000);
	setTimeout(function() {
		playAu8();
	}, 40 * 1000);
	setTimeout(function() {
		playAu9();
	}, 46 * 1000);
	setTimeout(function() {
		playAu10();
	}, 53 * 1000);
	setTimeout(function() {
		playAu11();
	}, 59 * 1000);
	
	function playAu1() {
		document.getElementById("text1Level1").style.color = "red";
		au1.play();
	}
	function playAu2() {
		document.getElementById("text2Level1").style.color = "red";
		au2.play();
		document.getElementById("text1Level1").style.color = "#333333";
	}
	function playAu3() {
		document.getElementById("text3Level1").style.color = "red";
		au3.play();
		document.getElementById("text2Level1").style.color = "#333333";
	}
	function playAu4() {
		document.getElementById("text4Level1").style.color = "red";
		au4.play();
		document.getElementById("text3Level1").style.color = "#333333";
	}
	function playAu5() {
		document.getElementById("text5Level1").style.color = "red";
		au5.play();
		document.getElementById("text4Level1").style.color = "#333333";
	}
	function playAu6() {
		document.getElementById("text6Level1").style.color = "red";
		au6.play();
		document.getElementById("text5Level1").style.color = "#333333";
	}
	function playAu7() {
		document.getElementById("text7Level1").style.color = "red";
		au7.play();
		document.getElementById("text6Level1").style.color = "#333333";
	}
	function playAu8() {
		document.getElementById("text8Level1").style.color = "red";
		au8.play();
		document.getElementById("text7Level1").style.color = "#333333";
	}
	function playAu9() {
		document.getElementById("text9Level1").style.color = "red";
		au9.play();
		document.getElementById("text8Level1").style.color = "#333333";
	}
	function playAu10() {
		document.getElementById("text10Level1").style.color = "red";
		au10.play();
		document.getElementById("text9Level1").style.color = "#333333";
	}
	function playAu11() {
		document.getElementById("text11Level1").style.color = "red";
		au11.play();
		document.getElementById("text10Level1").style.color = "#333333";
	}
	
	</script>
	<script type="text/javascript">
		function redirectPlayLevel1OfLove() {
			window.location = "${pageContext.request.contextPath}/playLevel1OfLove";
		}
	</script>

</body>
</html>