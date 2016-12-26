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
<link rel="stylesheet" href="multiSceens/demo-styles.css">
<link rel="stylesheet" href="multiSceens/multi-screen-css.css">
<script type="text/javascript" src="jquery-latest.pack.js"></script>
<script type="text/javascript" src="multi-screen.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<style>
body {
	background: url('img/train-no-text.png') no-repeat center fixed;
	background-size: cover;
}

.final {
	color: black;
}

.interim {
	color: gray;
}

#info_1, #info_2, #info_3 {
	visibility: hidden;
}
#screen_2, #screen_3 {
	visibility: hidden;
}
</style>
</head>
<body>
	<%@include file="../pages/templates/nav.jsp"%>

	<div class="container">
		<!-- panel 1 -->
		<div class="row" id="screen_1">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Love</h3>
					</div>
					<div class="panel-body" style="position: relative;">
						<center>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8">
									<img src="img/brief-logo.png" alt="man" style="width: 4%">
									<br>
									<div id="info_1">
										<h3 id="info_start_1">Now it's your turn to respond. Read
											the sentence and receive feedback on the underline sound...</h3>
										<h3 id="info_listening_1">Listening...</h3>
										<h3 id="info_no_speech_1">No speech was detected. You may
											need to adjust your microphone settings</h3>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8">
									<img src="img/manIcon.png" alt="man" style="width: 4%"><span
										id="text1Level1" style="font-size: 125%"> How are you
										feeling today?</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8">
									<img src="img/womanIcon.png" alt="woman" style="width: 4%"><span
										id="text2Level1" style="font-size: 125%"> I am so <u>nervous</u>
										it <u>hurts</u>.
									</span>
								</div>
							</div>
							<br> <br>
							<div class="row">
								<div class="col-md-3"></div>
								<div class="col-md-2">
									<a href="#" class="button disabled one" id="play"> <span
										class="pull-left"> <img src="img/speakIcon.png"
											alt="user speaks" style="width: 20%">
									</span></a>
								</div>
								<div class="col-md-2">
									<button class="" id="start_button"
										onclick="startButton(event)">
										<img id="start_img" src="img/mic.gif" alt="record">
									</button>
								</div>
								<div class="col-md-2">
									<a href="javascript:void(0)" class="ms-nav-link"
										data-ms-target="screen-2" data-ms-exit-animation="left"
										data-ms-enter-animation="right"> <img
										src="img/nextIcon.png" alt="next" style="width: 20%">
									</a>
								</div>
								<div class="col-md-3"></div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-12" id="results">
									<span id="final_span_1" class="final"> abc</span> <span
										id="interim_span_1" class="interim">def</span>
								</div>
							</div>

						</center>
					</div>
				</div>
			</div>
		</div>
		<!-- end panel 1 -->
		<!-- panel 2 -->
		<div class="row" id="screen_2">
			<div class="col-md-12">
				<div id="screen-1" class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Love</h3>
					</div>
					<div class="panel-body" style="position: relative;">
						<center>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8">
									<img src="img/brief-logo.png" alt="man" style="width: 4%">
									<br>
									<div id="info_2">
										<h3 id="info_start_2">Now it's your turn to respond. Read
											the sentence and receive feedback on the underline sound...</h3>
										<h3 id="info_listening_2">Listening...</h3>
										<h3 id="info_no_speech_2">No speech was detected. You may
											need to adjust your microphone settings</h3>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8">
									<img src="img/manIcon.png" alt="man" style="width: 4%"><span
										id="text1Level1" style="font-size: 125%"> How are you
										feeling today?</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8">
									<img src="img/womanIcon.png" alt="woman" style="width: 4%"><span
										id="text2Level1" style="font-size: 125%"> I am so <u>nervous</u>
										it <u>hurts</u>.
									</span>
								</div>
							</div>
							<br> <br>
							<div class="row">
								<div class="col-md-3"></div>
								<div class="col-md-2">
									<a href="#" class="button disabled one" id="play"> <span
										class="pull-left"> <img src="img/speakIcon.png"
											alt="user speaks" style="width: 20%">
									</span></a>
								</div>
								<div class="col-md-2">
									<button class="" id="start_button"
										>
										<img id="start_img" src="img/mic.gif" alt="record">
									</button>
								</div>
								<div class="col-md-2">
									<a href="javascript:void(0)" class="ms-nav-link"
										data-ms-target="screen-2" data-ms-exit-animation="left"
										data-ms-enter-animation="right"> <img
										src="img/nextIcon.png" alt="next" style="width: 20%">
									</a>
								</div>
								<div class="col-md-3"></div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-12" id="results">
									<span id="final_span_2" class="final"> abc</span> <span
										id="interim_span_2" class="interim">def</span>
								</div>
							</div>

						</center>
					</div>
				</div>
			</div>
		</div>
		<!-- end panel 1 -->
		<!-- panel 3 -->
		<div class="row" id="screen_3">
			<div class="col-md-12">
				<div id="screen-1" class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Love</h3>
					</div>
					<div class="panel-body" style="position: relative;">
						<center>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8">
									<img src="img/brief-logo.png" alt="man" style="width: 4%">
									<br>
									<div id="info_3">
										<h3 id="info_start_3">Now it's your turn to respond. Read
											the sentence and receive feedback on the underline sound...</h3>
										<h3 id="info_listening_3">Listening...</h3>
										<h3 id="info_no_speech_3">No speech was detected. You may
											need to adjust your microphone settings</h3>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8">
									<img src="img/manIcon.png" alt="man" style="width: 4%"><span
										id="text1Level1" style="font-size: 125%"> How are you
										feeling today?</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8">
									<img src="img/womanIcon.png" alt="woman" style="width: 4%"><span
										id="text2Level1" style="font-size: 125%"> I am so <u>nervous</u>
										it <u>hurts</u>.
									</span>
								</div>
							</div>
							<br> <br>
							<div class="row">
								<div class="col-md-3"></div>
								<div class="col-md-2">
									<a href="#" class="button disabled one" id="play"> <span
										class="pull-left"> <img src="img/speakIcon.png"
											alt="user speaks" style="width: 20%">
									</span></a>
								</div>
								<div class="col-md-2">
									<button class="" id="start_button"
										>
										<img id="start_img" src="img/mic.gif" alt="record">
									</button>
								</div>
								<div class="col-md-2">
									<a href="javascript:void(0)" class="ms-nav-link"
										data-ms-target="screen-2" data-ms-exit-animation="left"
										data-ms-enter-animation="right"> <img
										src="img/nextIcon.png" alt="next" style="width: 20%">
									</a>
								</div>
								<div class="col-md-3"></div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-12" id="results">
									<span id="final_span_3" class="final"> abc</span> <span
										id="interim_span_3" class="interim">def</span>
								</div>
							</div>

						</center>
					</div>
				</div>
			</div>
		</div>
		<!-- end panel 3 -->
		
	</div>
	<audio id="l1Audio1" src="voices/love.level1/level1.1.mp3"></audio>
	<audio id="l1Audio2" src="voices/love.level1/level1.2.mp3"></audio>

	<script type="text/javascript">
		showInfo('info_start_1');
		
		var create_email = false;
		var final_transcript = '';
		var recognizing = false;
		var ignore_onend;
		var start_timestamp;
		if (!('webkitSpeechRecognition' in window)) {
			upgrade();
		} else {
			//start_button.style.display = 'inline-block';
			var recognition = new webkitSpeechRecognition();
			recognition.continuous = true;
			recognition.interimResults = true;

			recognition.onstart = function() {
				recognizing = true;
				showInfo('info_speak_now_1');
				start_img.src = 'img/mic-animate.gif';
			};

			recognition.onerror = function(event) {
				if (event.error == 'no-speech') {
					start_img.src = 'img/mic.gif';
					showInfo('info_no_speech_1');
					ignore_onend = true;
				}
				if (event.error == 'audio-capture') {
					start_img.src = 'img/mic.gif';
					showInfo('info_no_microphone_1');
					ignore_onend = true;
				}
				if (event.error == 'not-allowed') {
					if (event.timeStamp - start_timestamp < 100) {
						showInfo('info_blocked_1');
					} else {
						showInfo('info_denied_1');
					}
					ignore_onend = true;
				}
			};

			recognition.onend = function() {
				recognizing = false;
				if (ignore_onend) {
					return;
				}
				start_img.src = 'img/mic.gif';
				if (!final_transcript) {
					showInfo('info_start');
					return;
				}
				showInfo('');
				if (window.getSelection) {
					window.getSelection().removeAllRanges();
					var range = document.createRange();
					range.selectNode(document.getElementById('final_span_1'));
					window.getSelection().addRange(range);
				}
				if (create_email) {
					create_email = false;
					createEmail();
				}
			};

			recognition.onresult = function(event) {
				var interim_transcript = '';
				for (var i = event.resultIndex; i < event.results.length; ++i) {
					if (event.results[i].isFinal) {
						final_transcript += event.results[i][0].transcript;
					} else {
						interim_transcript += event.results[i][0].transcript;
					}
				}
				final_transcript = capitalize(final_transcript);
				final_span_1.innerHTML = linebreak(final_transcript);
				interim_span_1.innerHTML = linebreak(interim_transcript);
				if (final_transcript || interim_transcript) {
					showButtons('inline-block');
				}
			};
		}
		function upgrade() {
            start_button.style.visibility = 'hidden';
            showInfo('info_upgrade');
          }

          var two_line = /\n\n/g;
          var one_line = /\n/g;
          function linebreak(s) {
            return s.replace(two_line, '<p></p>').replace(one_line, '<br>');
          }

          var first_char = /\S/;
          function capitalize(s) {
            return s.replace(first_char, function(m) { return m.toUpperCase(); });
          }

          function createEmail() {
            var n = final_transcript.indexOf('\n');
            if (n < 0 || n >= 80) {
              n = 40 + final_transcript.substring(40).indexOf(' ');
            }
            var subject = encodeURI(final_transcript.substring(0, n));
            var body = encodeURI(final_transcript.substring(n + 1));
            window.location.href = 'mailto:?subject=' + subject + '&body=' + body;
          }

          function copyButton() {
            if (recognizing) {
              recognizing = false;
              recognition.stop();
            }
            copy_button.style.display = 'none';
            copy_info.style.display = 'inline-block';
            showInfo('');
          }

          function emailButton() {
            if (recognizing) {
              create_email = true;
              recognizing = false;
              recognition.stop();
            } else {
              createEmail();
            }
            email_button.style.display = 'none';
            email_info.style.display = 'inline-block';
            showInfo('');
          }

          function startButton(event) {
            if (recognizing) {
              recognition.stop();
              return;
            }
            final_transcript = '';
            recognition.lang = 'en-US';
            recognition.start();
            ignore_onend = false;
            final_span_1.innerHTML = '';
            interim_span_1.innerHTML = '';
            start_img.src = 'img/mic-slash.gif';
            showInfo('info_allow_1');
            showButtons('none');
            start_timestamp = event.timeStamp;
          }

          function showInfo(s) {
            if (s) {
              for (var child = info.firstChild; child; child = child.nextSibling) {
                if (child.style) {
                  child.style.display = child.id == s ? 'inline' : 'none';
                }
              }
              info.style.visibility = 'visible';
            } else {
              info.style.visibility = 'hidden';
            }
          }

          var current_style;
          function showButtons(style) {
            if (style == current_style) {
              return;
            }
            current_style = style;
            copy_button.style.display = style;
            email_button.style.display = style;
            copy_info.style.display = 'none';
            email_info.style.display = 'none';
          }
	</script>

</body>
</html>