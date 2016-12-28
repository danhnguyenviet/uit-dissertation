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
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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

#screen {
	visibility: hidden;
}
</style>
</head>
<body>
	<%@include file="../pages/templates/nav.jsp"%>

	<div class="container">
		<div id="screen">
			<!-- panel 1 -->
			<div id="screen_1">
			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">
								Love <span class="pull-right" id="point_1">0</span>
							</h3>
						</div>
						<div class="panel-body" style="position: relative;">
							<center>
								<div class="row">
									<div class="col-md-2"></div>
									<div class="col-md-8">
										<img src="img/brief-logo.png" alt="man" style="width: 4%">
										<br>
										<div id="info_1">
											<h3 id="info_start_1">Now it's your turn to respond.
												Read the sentence and receive feedback on the underline
												sound...</h3>
											<h3 id="info_listening_1">Listening...</h3>
											<h3 id="info_no_speech_1">No speech was detected. You
												may need to adjust your microphone settings.</h3>
											<h3 id="info_incorrect_answer_1">Both "nervous" and
												"hurts" have the long 'urr' sound. Round your lips, tense
												your tongue and make the vowel long as you say "nurr-vuhs"
												and "hurr-t".</h3>
											<h3 id="info_correct_answer_1">Hey you already right,
												you can move on now!</h3>
											<h3 id="info_upgrade_1">
												Web Speech API is not supported by this browser. Upgrade to
												<a href="//www.google.com/chrome">Chrome</a> version 25 or
												later.
											</h3>
											<h3 id="info_allow_1">Click the "Allow" button above to
												enable your microphone.</h3>
											<h3 id="info_no_microphone_1" style="display: none">
												No microphone was found. Ensure that a microphone is
												installed and that <a
													href="//support.google.com/chrome/bin/answer.py?hl=en&amp;answer=1407892">
													microphone settings</a> are configured correctly.
											</h3>
											<h3 id="info_denied_1">Permission to use microphone was
												denied.</h3>
											<h3 id="info_blocked_1">Permission to use microphone is
												blocked. To change, go to
												chrome://settings/contentExceptions#media-stream</h3>
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
										</span> <a href="javascript:void(0)" onclick="au2.play();"><span class="glyphicon glyphicon-volume-up"></span></a>
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
										<button class="" id="start_button_1"
											onclick="startButton_1(event)">
											<img id="start_img_1" src="img/mic.gif" alt="record" style="width: 60%">
										</button>
									</div>
									<div class="col-md-2">
										<a href="javascript:void(0)" onclick="showScreen('screen_2'); showInfo_2('info_start_2')"> <img
											src="img/nextIcon.png" alt="next" style="width: 20%">
										</a>
									</div>
									<div class="col-md-3"></div>
								</div>
								<br>
								<div class="row">
									<div class="col-md-12" id="results">
										<span id="final_span_1" class="final"></span> <span
											id="interim_span_1" class="interim"></span>
									</div>
								</div>

							</center>
						</div>
					</div>
					
				</div>

			</div>
			</div>
			<!-- end panel 1 -->
			<!-- panel 2 -->
			<div id="screen_2">
			   <div class="row">
			      <div class="col-md-12">
			         <div class="panel panel-default">
			            <div class="panel-heading">
			               <h3 class="panel-title">
			                  Love <span class="pull-right" id="point_2">0</span>
			               </h3>
			            </div>
			            <div class="panel-body" style="position: relative;">
			               <center>
			                  <div class="row">
			                     <div class="col-md-2"></div>
			                     <div class="col-md-8">
			                        <img src="img/brief-logo.png" alt="man" style="width: 4%">
			                        <br>
			                        <div id="info_2">
			                           <h3 id="info_start_2">Now it's your turn to respond.
			                              Read the sentence and receive feedback on the underline
			                              sound...
			                           </h3>
			                           <h3 id="info_listening_2">Listening...</h3>
			                           <h3 id="info_no_speech_2">No speech was detected. You
			                              may need to adjust your microphone settings.
			                           </h3>
			                           <h3 id="info_incorrect_answer_2">Say "first" a long 'ur' sound - curl your tongue up and back.
			                           </h3>
			                           <h3 id="info_correct_answer_2">Hey you already right,
			                              you can move on now!
			                           </h3>
			                           <h3 id="info_upgrade_2">
			                              Web Speech API is not supported by this browser. Upgrade to
			                              <a href="//www.google.com/chrome">Chrome</a> version 25 or
			                              later.
			                           </h3>
			                           <h3 id="info_allow_2">Click the "Allow" button above to
			                              enable your microphone.
			                           </h3>
			                           <h3 id="info_no_microphone_2" style="display: none">
			                              No microphone was found. Ensure that a microphone is
			                              installed and that <a
			                                 href="//support.google.com/chrome/bin/answer.py?hl=en&amp;answer=1407892">
			                              microphone settings</a> are configured correctly.
			                           </h3>
			                           <h3 id="info_denied_2">Permission to use microphone was
			                              denied.
			                           </h3>
			                           <h3 id="info_blocked_2">Permission to use microphone is
			                              blocked. To change, go to
			                              chrome://settings/contentExceptions#media-stream
			                           </h3>
			                        </div>
			                     </div>
			                  </div>
			                  <br>
			                  <div class="row">
			                     <div class="col-md-2"></div>
			                     <div class="col-md-8">
			                        <img src="img/manIcon.png" alt="man" style="width: 4%"><span
			                           id="text3Level1" style="font-size: 125%"> Wow. What are you so nervous about?</span>
			                     </div>
			                  </div>
			                  <div class="row">
			                     <div class="col-md-2"></div>
			                     <div class="col-md-8">
			                        <img src="img/womanIcon.png" alt="woman" style="width: 4%"><span
			                           id="text4Level1" style="font-size: 125%"> I am going on a <u>first</u> date tonight.
			                        </span> <a href="javascript:void(0)" onclick="au4.play();"><span class="glyphicon glyphicon-volume-up"></span></a>
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
			                        <button class="" id="start_button_2"
			                           onclick="startButton_2(event)">
			                        <img id="start_img_2" src="img/mic.gif" alt="record" style="width: 60%">
			                        </button>
			                     </div>
			                     <div class="col-md-2">
			                        <a href="javascript:void(0)" onclick="showScreen('screen_3'); showInfo_3('info_start_3')"> <img
			                           src="img/nextIcon.png" alt="next" style="width: 20%">
			                        </a>
			                     </div>
			                     <div class="col-md-3"></div>
			                  </div>
			                  <br>
			                  <div class="row">
			                     <div class="col-md-12" id="results">
			                        <span id="final_span_2" class="final"></span> <span
			                           id="interim_span_2" class="interim"></span>
			                     </div>
			                  </div>
			               </center>
			            </div>
			         </div>
			      </div>
			   </div>
			</div>
			<!-- end panel 2 -->
			<!-- panel 3 -->
			<div id="screen_3">
			   <div class="row">
			      <div class="col-md-12">
			         <div class="panel panel-default">
			            <div class="panel-heading">
			               <h3 class="panel-title">
			                  Love <span class="pull-right" id="point_3">0</span>
			               </h3>
			            </div>
			            <div class="panel-body" style="position: relative;">
			               <center>
			                  <div class="row">
			                     <div class="col-md-2"></div>
			                     <div class="col-md-8">
			                        <img src="img/brief-logo.png" alt="man" style="width: 4%">
			                        <br>
			                        <div id="info_3">
			                           <h3 id="info_start_3">Now it's your turn to respond.
			                              Read the sentence and receive feedback on the underline
			                              sound...
			                           </h3>
			                           <h3 id="info_listening_3">Listening...</h3>
			                           <h3 id="info_no_speech_3">No speech was detected. You
			                              may need to adjust your microphone settings.
			                           </h3>
			                           <h3 id="info_incorrect_answer_3">Say "first" a long 'ur' sound - curl your tongue up and back.
			                           </h3>
			                           <h3 id="info_correct_answer_3">Hey you already right,
			                              you can move on now!
			                           </h3>
			                           <h3 id="info_upgrade_3">
			                              Web Speech API is not supported by this browser. Upgrade to
			                              <a href="//www.google.com/chrome">Chrome</a> version 25 or
			                              later.
			                           </h3>
			                           <h3 id="info_allow_3">Click the "Allow" button above to
			                              enable your microphone.
			                           </h3>
			                           <h3 id="info_no_microphone_3" style="display: none">
			                              No microphone was found. Ensure that a microphone is
			                              installed and that <a
			                                 href="//support.google.com/chrome/bin/answer.py?hl=en&amp;answer=1407892">
			                              microphone settings</a> are configured correctly.
			                           </h3>
			                           <h3 id="info_denied_3">Permission to use microphone was
			                              denied.
			                           </h3>
			                           <h3 id="info_blocked_3">Permission to use microphone is
			                              blocked. To change, go to
			                              chrome://settings/contentExceptions#media-stream
			                           </h3>
			                        </div>
			                     </div>
			                  </div>
			                  <br>
			                  <div class="row">
			                     <div class="col-md-2"></div>
			                     <div class="col-md-8">
			                        <img src="img/manIcon.png" alt="man" style="width: 4%"><span
			                           id="text5Level1" style="font-size: 125%"> Where did you two meet?</span>
			                     </div>
			                  </div>
			                  <div class="row">
			                     <div class="col-md-2"></div>
			                     <div class="col-md-8">
			                        <img src="img/womanIcon.png" alt="woman" style="width: 4%"><span
			                           id="text6Level1" style="font-size: 125%"> At a party. For me, it was love at <u>first</u> sight.
			                        </span> <a href="javascript:void(0)" onclick="au6.play();"><span class="glyphicon glyphicon-volume-up"></span></a>
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
			                        <button class="" id="start_button_3"
			                           onclick="startButton_3(event)">
			                        <img id="start_img_3" src="img/mic.gif" alt="record" style="width: 60%">
			                        </button>
			                     </div>
			                     <div class="col-md-2">
			                        <a href="javascript:void(0)" onclick="showScreen('screen_4'); showInfo_4('info_start_4')"> <img
			                           src="img/nextIcon.png" alt="next" style="width: 20%">
			                        </a>
			                     </div>
			                     <div class="col-md-3"></div>
			                  </div>
			                  <br>
			                  <div class="row">
			                     <div class="col-md-12" id="results">
			                        <span id="final_span_3" class="final"></span> <span
			                           id="interim_span_3" class="interim"></span>
			                     </div>
			                  </div>
			               </center>
			            </div>
			         </div>
			      </div>
			   </div>
			</div>
			<!-- end panel 3 -->
			<!-- panel 4 -->
			<div id="screen_4">
			   <div class="row">
			      <div class="col-md-12">
			         <div class="panel panel-default">
			            <div class="panel-heading">
			               <h3 class="panel-title">
			                  Love <span class="pull-right" id="point_4">0</span>
			               </h3>
			            </div>
			            <div class="panel-body" style="position: relative;">
			               <center>
			                  <div class="row">
			                     <div class="col-md-2"></div>
			                     <div class="col-md-8">
			                        <img src="img/brief-logo.png" alt="man" style="width: 4%">
			                        <br>
			                        <div id="info_4">
			                           <h3 id="info_start_4">Now it's your turn to respond.
			                              Read the sentence and receive feedback on the underline
			                              sound...
			                           </h3>
			                           <h3 id="info_listening_4">Listening...</h3>
			                           <h3 id="info_no_speech_4">No speech was detected. You
			                              may need to adjust your microphone settings.
			                           </h3>
			                           <h3 id="info_incorrect_answer_4">Both "conCERNED" and "Alone" start with the soft relaxed "uhn" sound. Your lips don't move much.
			                           </h3>
			                           <h3 id="info_correct_answer_4">Hey you already right,
			                              you can move on now!
			                           </h3>
			                           <h3 id="info_upgrade_4">
			                              Web Speech API is not supported by this browser. Upgrade to
			                              <a href="//www.google.com/chrome">Chrome</a> version 25 or
			                              later.
			                           </h3>
			                           <h3 id="info_allow_4">Click the "Allow" button above to
			                              enable your microphone.
			                           </h3>
			                           <h3 id="info_no_microphone_4" style="display: none">
			                              No microphone was found. Ensure that a microphone is
			                              installed and that <a
			                                 href="//support.google.com/chrome/bin/answer.py?hl=en&amp;answer=1407892">
			                              microphone settings</a> are configured correctly.
			                           </h3>
			                           <h3 id="info_denied_4">Permission to use microphone was
			                              denied.
			                           </h3>
			                           <h3 id="info_blocked_4">Permission to use microphone is
			                              blocked. To change, go to
			                              chrome://settings/contentExceptions#media-stream
			                           </h3>
			                        </div>
			                     </div>
			                  </div>
			                  <br>
			                  <div class="row">
			                     <div class="col-md-2"></div>
			                     <div class="col-md-8">
			                        <img src="img/manIcon.png" alt="man" style="width: 4%"><span
			                           id="text7Level1" style="font-size: 125%"> Amazing. Pick a quiet and romantic restaurant so you two can really talk.</span>
			                     </div>
			                  </div>
			                  <div class="row">
			                     <div class="col-md-2"></div>
			                     <div class="col-md-8">
			                        <img src="img/womanIcon.png" alt="woman" style="width: 4%"><span
			                           id="text8Level1" style="font-size: 125%"> But I'm <u>concerned</u> about knowing what to say when we are <u>alone</u>.
			                        </span> <a href="javascript:void(0)" onclick="au8.play();"><span class="glyphicon glyphicon-volume-up"></span></a>
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
			                        <button class="" id="start_button_4"
			                           onclick="startButton_4(event)">
			                        <img id="start_img_4" src="img/mic.gif" alt="record" style="width: 60%">
			                        </button>
			                     </div>
			                     <div class="col-md-2">
			                        <a href="javascript:void(0)" onclick="showScreen('screen_5'); showInfo_5('info_start_5')"> <img
			                           src="img/nextIcon.png" alt="next" style="width: 20%">
			                        </a>
			                     </div>
			                     <div class="col-md-3"></div>
			                  </div>
			                  <br>
			                  <div class="row">
			                     <div class="col-md-12" id="results">
			                        <span id="final_span_4" class="final"></span> <span
			                           id="interim_span_4" class="interim"></span>
			                     </div>
			                  </div>
			               </center>
			            </div>
			         </div>
			      </div>
			   </div>
			</div>
			<!-- end panel 4 -->
			<!-- panel 5 -->
			<div id="screen_5">
			   <div class="row">
			      <div class="col-md-12">
			         <div class="panel panel-default">
			            <div class="panel-heading">
			               <h3 class="panel-title">
			                  Love <span class="pull-right" id="point_5">0</span>
			               </h3>
			            </div>
			            <div class="panel-body" style="position: relative;">
			               <center>
			                  <div class="row">
			                     <div class="col-md-2"></div>
			                     <div class="col-md-8">
			                        <img src="img/brief-logo.png" alt="man" style="width: 4%">
			                        <br>
			                        <div id="info_5">
			                           <h3 id="info_start_5">Now it's your turn to respond.
			                              Read the sentence and receive feedback on the underline
			                              sound...
			                           </h3>
			                           <h3 id="info_listening_5">Listening...</h3>
			                           <h3 id="info_no_speech_5">No speech was detected. You
			                              may need to adjust your microphone settings.
			                           </h3>
			                           <h3 id="info_incorrect_answer_5">Say "purrrrr" longer. Round your lips and curl your tongue up to make the vowel 'urr' long.
			                           </h3>
			                           <h3 id="info_correct_answer_5">Hey you already right,
			                              you can move on now!
			                           </h3>
			                           <h3 id="info_upgrade_5">
			                              Web Speech API is not supported by this browser. Upgrade to
			                              <a href="//www.google.com/chrome">Chrome</a> version 25 or
			                              later.
			                           </h3>
			                           <h3 id="info_allow_5">Click the "Allow" button above to
			                              enable your microphone.
			                           </h3>
			                           <h3 id="info_no_microphone_5" style="display: none">
			                              No microphone was found. Ensure that a microphone is
			                              installed and that <a
			                                 href="//support.google.com/chrome/bin/answer.py?hl=en&amp;answer=1407892">
			                              microphone settings</a> are configured correctly.
			                           </h3>
			                           <h3 id="info_denied_5">Permission to use microphone was
			                              denied.
			                           </h3>
			                           <h3 id="info_blocked_5">Permission to use microphone is
			                              blocked. To change, go to
			                              chrome://settings/contentExceptions#media-stream
			                           </h3>
			                        </div>
			                     </div>
			                  </div>
			                  <br>
			                  <div class="row">
			                     <div class="col-md-2"></div>
			                     <div class="col-md-8">
			                        <img src="img/manIcon.png" alt="man" style="width: 4%"><span
			                           id="text9Level1" style="font-size: 125%"> I've listened to you, I am sure you will have plenty to say.</span>
			                     </div>
			                  </div>
			                  <div class="row">
			                     <div class="col-md-2"></div>
			                     <div class="col-md-8">
			                        <img src="img/womanIcon.png" alt="woman" style="width: 4%"><span
			                           id="text10Level1" style="font-size: 125%"> I hope so, I want us to be <u>perfect</u> for each other.
			                        </span> <a href="javascript:void(0)" onclick="au10.play();"><span class="glyphicon glyphicon-volume-up"></span></a>
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
			                        <button class="" id="start_button_5"
			                           onclick="startButton_5(event)">
			                        <img id="start_img_5" src="img/mic.gif" alt="record" style="width: 60%">
			                        </button>
			                     </div>
			                     <div class="col-md-2">
			                        <a href="javascript:void(0)" onclick="showScreen('screen_6');"> <img
			                           src="img/nextIcon.png" alt="next" style="width: 20%">
			                        </a>
			                     </div>
			                     <div class="col-md-3"></div>
			                  </div>
			                  <br>
			                  <div class="row">
			                     <div class="col-md-12" id="results">
			                        <span id="final_span_5" class="final"></span> <span
			                           id="interim_span_5" class="interim"></span>
			                     </div>
			                  </div>
			               </center>
			            </div>
			         </div>
			      </div>
			   </div>
			</div>
			<!-- end panel 5 -->
			<!-- panel 6 -->
			<div id="screen_6">
			   <div class="row">
			      <div class="col-md-12">
			         <div class="panel panel-default">
			            <div class="panel-heading">
			               <h3 class="panel-title">
			                  Love <span class="pull-right" id="point_6">0</span>
			               </h3>
			            </div>
			            <div class="panel-body" style="position: relative;">
			               <center>
			                  <div class="row">
			                     <div class="col-md-2"></div>
			                     <div class="col-md-8">
			                        <img src="img/brief-logo.png" alt="man" style="width: 4%">
			                        <br>
			                        
			                  <div class="row">
			                     <div class="col-md-2"></div>
			                     <div class="col-md-8">
			                        <img src="img/manIcon.png" alt="man" style="width: 4%"><span
			                           id="text11Level1" style="font-size: 125%"> Dating is a journey, so just relax and be yourself.</span>
			                     </div>
			                  </div>
			                  <br> <br>
			                  <div class="row">
			                     <div class="col-md-3"></div>
			                     <div class="col-md-2">
			                     </div>
			                     <div class="col-md-2">
			                        <button class="btn btn-primary" id="btnSeeYourResults" data-toggle="modal" data-target="" onclick="sendResults();">See your results</button>
			                     </div>
			                     <div class="col-md-2">
			                     </div>
			                     <div class="col-md-3"></div>
			                  </div>
			                  <br>
			                  <div class="row">
			                     <div class="col-md-12" id="results">
			                        <span id="final_span_6" class="final"></span> <span
			                           id="interim_span_6" class="interim"></span>
			                     </div>
			                  </div>
			               </center>
			            </div>
			         </div>
			      </div>
			   </div>
			</div>
			<!-- end panel 6 -->
			<!-- Results modal -->
			<div class="modal fade" id="resultsModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Your results</h4>
					</div>
					<div class="modal-body">
					<center>
						<img alt="logo" src="img/brief-logo.png">
						<h3>Level points: <b id="levelPoints">60</b>/ 70</h3>
						<h3>Total points: <b id="totalPoints">60</b>/ 730</h3>
						</center>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="location.reload();">Play again</button>
						<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="window.location = '${pageContext.request.contextPath}/love';">Return level 1</button>
					</div>
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
	<audio id="correctAnswerAudio" src="voices/correctAnswer.mp3"></audio>

	<script type="text/javascript">
		var point = 0, interimPoint = 0;
		var screenLevel = 1;
		var screen = document.getElementById('screen');
		var info_1 = document.getElementById('info_1');
		var info_2 = document.getElementById('info_2');
		var info_3 = document.getElementById('info_3');
		var info_4 = document.getElementById('info_4');
		var info_5 = document.getElementById('info_5');
		var correctAnswerAu = document.getElementById('correctAnswerAudio');
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

		showScreen('screen_1');
		showInfo_1('info_start_1');

		var create_email = false;
		var final_transcript = '';
		var recognizing = false;
		var ignore_onend;
		var start_timestamp;
		if (!('webkitSpeechRecognition' in window)) {
			upgrade();
		} else {

			var recognition = new webkitSpeechRecognition();
			recognition.continuous = true;
			recognition.interimResults = true;

			recognition.onstart = function() {
				recognizing = true;
				switch (screenLevel) {
				case 1:
					showInfo_1('info_listening_1');
					start_img_1.src = 'img/mic-animate.gif';
					break;
				case 2:
					showInfo_2('info_listening_2');
					start_img_2.src = 'img/mic-animate.gif';
					break;
				case 3:
					showInfo_3('info_listening_3');
					start_img_3.src = 'img/mic-animate.gif';
					break;
				case 4:
					showInfo_4('info_listening_4');
					start_img_4.src = 'img/mic-animate.gif';
					break;
				case 5:
					showInfo_5('info_listening_5');
					start_img_5.src = 'img/mic-animate.gif';
					break;
				}
			};

			recognition.onerror = function(event) {
				if (event.error == 'no-speech') {
					switch (screenLevel) {
					case 1:
						start_img_1.src = 'img/mic.gif';
						showInfo_1('info_no_speech_1');
						break;
					case 2:
						start_img_2.src = 'img/mic.gif';
						showInfo_2('info_no_speech_2');
						break;
					case 3:
						start_img_3.src = 'img/mic.gif';
						showInfo_3('info_no_speech_3');
						break;
					case 4:
						start_img_4.src = 'img/mic.gif';
						showInfo_4('info_no_speech_4');
						break;
					case 5:
						start_img_5.src = 'img/mic.gif';
						showInfo_5('info_no_speech_5');
						break;
					}
					
					ignore_onend = true;
				}
				if (event.error == 'audio-capture') {
					switch (screenLevel) {
					case 1:
						start_img_1.src = 'img/mic.gif';
						showInfo_1('info_no_microphone_1');
						break;
					case 2:
						start_img_2.src = 'img/mic.gif';
						showInfo_2('info_no_microphone_2');
						break;
					case 3:
						start_img_3.src = 'img/mic.gif';
						showInfo_3('info_no_microphone_3');
						break;
					case 4:
						start_img_4.src = 'img/mic.gif';
						showInfo_4('info_no_microphone_4');
						break;
					case 5:
						start_img_5.src = 'img/mic.gif';
						showInfo_5('info_no_microphone_5');
						break;
					}
										
					ignore_onend = true;
				}
				if (event.error == 'not-allowed') {
					if (event.timeStamp - start_timestamp < 100) {
						switch (screenLevel) {
						case 1:
							showInfo_1('info_blocked_1');
							break;
						case 2:
							showInfo_2('info_blocked_2');
							break;
						case 3:
							showInfo_3('info_blocked_3');
							break;
						case 4:
							showInfo_4('info_blocked_4');
							break;
						case 5:
							showInfo_5('info_blocked_5');
							break;
						}
					} else {
						switch (screenLevel) {
						case 1:
							showInfo_1('info_denied_1');
							break;
						case 2:
							showInfo_2('info_denied_2');
							break;
						case 3:
							showInfo_3('info_denied_3');
							break;
						case 4:
							showInfo_4('info_denied_4');
							break;
						case 5:
							showInfo_5('info_denied_5');
							break;
						}
					}
					ignore_onend = true;
				}
			};

			recognition.onend = function() {
				recognizing = false;
				if (ignore_onend) {
					return;
				}
				switch (screenLevel) {
				case 1:
					start_img_1.src = 'img/mic.gif';
					showInfo_1('');
					break;
				case 2:
					start_img_2.src = 'img/mic.gif';
					showInfo_2('');
					break;
				case 3:
					start_img_3.src = 'img/mic.gif';
					showInfo_3('');
					break;
				case 4:
					start_img_4.src = 'img/mic.gif';
					showInfo_4('');
					break;
				case 5:
					start_img_5.src = 'img/mic.gif';
					showInfo_5('');
					break;
				}
				
				if (!final_transcript) {
					switch (screenLevel) {
					case 1:
						showInfo_1('info_start_1');
						break;
					case 2:
						showInfo_2('info_start_2');
						break;
					case 3:
						showInfo_3('info_start_3');
						break;
					case 4:
						showInfo_4('info_start_4');
						break;
					case 5:
						showInfo_5('info_start_5');
						break;
					}
					return;
				} else {
					switch (screenLevel) {
					case 1: 
						if (final_transcript.includes('nervous') && final_transcript.includes('hurts')) {
							interimPoint = 20;
							point += interimPoint;
							document.getElementById('point_1').innerHTML = point;
							showInfo_1('info_correct_answer_1');
							correctAnswerAu.play();
						} else if (final_transcript.includes('nervous') || final_transcript.includes('hurts')) {
							interimPoint = 10;
							point += interimPoint;
							document.getElementById('point_1').innerHTML = point;
							showInfo_1('info_incorrect_answer_1');
						} else if (!final_transcript.includes('nervous') && !final_transcript.includes('hurts')) {
							showInfo_1('info_incorrect_answer_1');
						}
						break;
					case 2:
						if (final_transcript.includes('first')) {
							interimPoint = 10;
							point += interimPoint;
							document.getElementById('point_2').innerHTML = point;
							showInfo_2('info_correct_answer_2');
							correctAnswerAu.play();
						} else {
							showInfo_2('info_incorrect_answer_2');
						}
						break;
					case 3:
						if (final_transcript.includes('first')) {
							interimPoint = 10;
							point += interimPoint;
							document.getElementById('point_3').innerHTML = point;
							showInfo_3('info_correct_answer_3');
							correctAnswerAu.play();
						} else {
							showInfo_3('info_incorrect_answer_3');
						}
						break;
					case 4: 
						if (final_transcript.includes('concerned') && final_transcript.includes('alone')) {
							interimPoint = 20;
							point += interimPoint;
							document.getElementById('point_4').innerHTML = point;
							showInfo_4('info_correct_answer_4');
							correctAnswerAu.play();
						} else if (final_transcript.includes('concerned') || final_transcript.includes('alone')) {
							interimPoint = 10;
							point += interimPoint;
							document.getElementById('point_4').innerHTML = point;
							showInfo_4('info_incorrect_answer_4');
						} else if (!final_transcript.includes('concerned') && !final_transcript.includes('alone')) {
							showInfo_4('info_incorrect_answer_4');
						}
						break;
					case 5:
						if (final_transcript.includes('perfect')) {
							interimPoint = 10;
							point += interimPoint;
							document.getElementById('point_5').innerHTML = point;
							showInfo_5('info_correct_answer_5');
							correctAnswerAu.play();
						} else {
							showInfo_5('info_incorrect_answer_5');
						}
						break;
					}
				}

				if (window.getSelection) {
					window.getSelection().removeAllRanges();
					var range = document.createRange();
					switch (screenLevel) {
					case 1:
						range.selectNode(document.getElementById('final_span_1'));
						break;
					case 2:
						range.selectNode(document.getElementById('final_span_2'));
						break;
					case 3:
						range.selectNode(document.getElementById('final_span_3'));
						break;
					case 4:
						range.selectNode(document.getElementById('final_span_4'));
						break;
					case 5:
						range.selectNode(document.getElementById('final_span_5'));
						break;
					} 
					window.getSelection().addRange(range);
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
				switch (screenLevel) {
				case 1: 
					final_span_1.innerHTML = linebreak(final_transcript);
					interim_span_1.innerHTML = linebreak(interim_transcript);
					break;
				case 2: 
					final_span_2.innerHTML = linebreak(final_transcript);
					interim_span_2.innerHTML = linebreak(interim_transcript);
					break;
				case 3: 
					final_span_3.innerHTML = linebreak(final_transcript);
					interim_span_3.innerHTML = linebreak(interim_transcript);
					break;
				case 4: 
					final_span_4.innerHTML = linebreak(final_transcript);
					interim_span_4.innerHTML = linebreak(interim_transcript);
					break;
				case 5: 
					final_span_5.innerHTML = linebreak(final_transcript);
					interim_span_5.innerHTML = linebreak(interim_transcript);
					break;
				}
			};
		}

		function upgrade() {
			switch (screenLevel) {
			case 1: 
				start_button_1.style.visibility = 'hidden';
				showInfo_1('info_upgrade_1');
				break;
			case 2: 
				start_button_2.style.visibility = 'hidden';
				showInfo_2('info_upgrade_2');
				break;
			case 3: 
				start_button_3.style.visibility = 'hidden';
				showInfo_3('info_upgrade_3');
				break;
			case 4: 
				start_button_4.style.visibility = 'hidden';
				showInfo_4('info_upgrade_4');
				break;
			case 5: 
				start_button_5.style.visibility = 'hidden';
				showInfo_5('info_upgrade_5');
				break;
			}
		}

		var two_line = /\n\n/g;
		var one_line = /\n/g;
		function linebreak(s) {
			return s.replace(two_line, '<p></p>').replace(one_line, '<br>');
		}

		var first_char = /\S/;
		function capitalize(s) {
			return s.replace(first_char, function(m) {
				return m.toUpperCase();
			});
		}

		function startButton_1(event) {
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
			start_img_1.src = 'img/mic-slash.gif';
			showInfo_1('info_allow_1');
			start_timestamp = event.timeStamp;
			resetInterimPoint(interimPoint);
			document.getElementById('point_1').innerHTML = point;
		}
		
		function startButton_2(event) {
			if (recognizing) {
				recognition.stop();
				return;
			}
			final_transcript = '';
			recognition.lang = 'en-US';
			recognition.start();
			ignore_onend = false;
			final_span_2.innerHTML = '';
			interim_span_2.innerHTML = '';
			start_img_2.src = 'img/mic-slash.gif';
			showInfo_2('info_allow_2');
			start_timestamp = event.timeStamp;
			resetInterimPoint(interimPoint);
			document.getElementById('point_2').innerHTML = point;
		}
		
		function startButton_3(event) {
			if (recognizing) {
				recognition.stop();
				return;
			}
			final_transcript = '';
			recognition.lang = 'en-US';
			recognition.start();
			ignore_onend = false;
			final_span_3.innerHTML = '';
			interim_span_3.innerHTML = '';
			start_img_3.src = 'img/mic-slash.gif';
			showInfo_3('info_allow_3');
			start_timestamp = event.timeStamp;
			resetInterimPoint(interimPoint);
			document.getElementById('point_3').innerHTML = point;
		}
		
		function startButton_4(event) {
			if (recognizing) {
				recognition.stop();
				return;
			}
			final_transcript = '';
			recognition.lang = 'en-US';
			recognition.start();
			ignore_onend = false;
			final_span_4.innerHTML = '';
			interim_span_4.innerHTML = '';
			start_img_4.src = 'img/mic-slash.gif';
			showInfo_4('info_allow_4');
			start_timestamp = event.timeStamp;
			resetInterimPoint(interimPoint);
			document.getElementById('point_4').innerHTML = point;
		}
		
		function startButton_5(event) {
			if (recognizing) {
				recognition.stop();
				return;
			}
			final_transcript = '';
			recognition.lang = 'en-US';
			recognition.start();
			ignore_onend = false;
			final_span_5.innerHTML = '';
			interim_span_5.innerHTML = '';
			start_img_5.src = 'img/mic-slash.gif';
			showInfo_5('info_allow_5');
			start_timestamp = event.timeStamp;
			resetInterimPoint(interimPoint);
			document.getElementById('point_5').innerHTML = point;
		}

		// Screen controller
		function showScreen(s) {
			interimPoint = 0;
			screenLevel = s != 'screen_1' ? (screenLevel + 1) : screenLevel;
			switch (screenLevel) {
			case 1:
				setTimeout(function() {
					document.getElementById('text1Level1').style.color = "red";
					au1.play();
					
				}, 1 * 1000);
				setTimeout(function() {
					document.getElementById('text1Level1').style.color = "black";
					document.getElementById('text2Level1').style.color = "red";
					au2.play();
				}, 4 * 1000);
				break;
			case 2: 
				au1.muted = true; au2.muted = true; 
				document.getElementById('point_2').innerHTML = point;
				setTimeout(function() {
					document.getElementById('text3Level1').style.color = "red";
					au3.play();
					
				}, 1 * 1000);
				setTimeout(function() {
					document.getElementById('text3Level1').style.color = "black";
					document.getElementById('text4Level1').style.color = "red";
					au4.play();
				}, 6 * 1000);
				break;
			case 3: 
				au3.muted = true; au4.muted = true; 
				document.getElementById('point_3').innerHTML = point;
				setTimeout(function() {
					document.getElementById('text5Level1').style.color = "red";
					au5.play();
					
				}, 1 * 1000);
				setTimeout(function() {
					document.getElementById('text5Level1').style.color = "black";
					document.getElementById('text6Level1').style.color = "red";
					au6.play();
				}, 4 * 1000);
				break;
			case 4: 
				au5.muted = true; au6.muted = true; 
				document.getElementById('point_4').innerHTML = point;
				setTimeout(function() {
					document.getElementById('text7Level1').style.color = "red";
					au7.play();
					
				}, 1 * 1000);
				setTimeout(function() {
					document.getElementById('text7Level1').style.color = "black";
					document.getElementById('text8Level1').style.color = "red";
					au8.play();
				}, 10 * 1000);
				break;
			case 5: 
				au7.muted = true; au8.muted = true; 
				document.getElementById('point_5').innerHTML = point;
				setTimeout(function() {
					document.getElementById('text9Level1').style.color = "red";
					au9.play();
					
				}, 1 * 1000);
				setTimeout(function() {
					document.getElementById('text9Level1').style.color = "black";
					document.getElementById('text10Level1').style.color = "red";
					au10.play();
				}, 8 * 1000);
				break;
			case 6: 
				au9.muted = true; au10.muted = true; 
				document.getElementById('point_6').innerHTML = point;
				setTimeout(function() {
					document.getElementById('text11Level1').style.color = "red";
					au11.play();
				}, 1 * 1000);
				break;
			}
			if (s) {
				for (var child = screen.firstChild; child; child = child.nextSibling) {
					if (child.style) {
						child.style.display = child.id == s ? 'inline' : 'none';
					}
				}
				screen.style.visibility = 'visible';
			} else {
				screen.style.visibility = 'hidden';
			}
		}
		
		function showInfo_1(s) {
			if (s) {
				for (var child = info_1.firstChild; child; child = child.nextSibling) {
					if (child.style) {
						child.style.display = child.id == s ? 'inline' : 'none';
					}
				}
				info_1.style.visibility = 'visible';
			} else {
				info_1.style.visibility = 'hidden';
			}
		}
		
		function showInfo_2(s) {
			if (s) {
				for (var child = info_2.firstChild; child; child = child.nextSibling) {
					if (child.style) {
						child.style.display = child.id == s ? 'inline' : 'none';
					}
				}
				info_2.style.visibility = 'visible';
			} else {
				info_2.style.visibility = 'hidden';
			}
		}
		
		function showInfo_3(s) {
			if (s) {
				for (var child = info_3.firstChild; child; child = child.nextSibling) {
					if (child.style) {
						child.style.display = child.id == s ? 'inline' : 'none';
					}
				}
				info_3.style.visibility = 'visible';
			} else {
				info_3.style.visibility = 'hidden';
			}
		}
		
		function showInfo_4(s) {
			if (s) {
				for (var child = info_4.firstChild; child; child = child.nextSibling) {
					if (child.style) {
						child.style.display = child.id == s ? 'inline' : 'none';
					}
				}
				info_4.style.visibility = 'visible';
			} else {
				info_4.style.visibility = 'hidden';
			}
		}
		
		function showInfo_5(s) {
			if (s) {
				for (var child = info_5.firstChild; child; child = child.nextSibling) {
					if (child.style) {
						child.style.display = child.id == s ? 'inline' : 'none';
					}
				}
				info_5.style.visibility = 'visible';
			} else {
				info_5.style.visibility = 'hidden';
			}
		}
		
		// point controller
		function resetInterimPoint(p) {
			if (p != 0) {
				if (point > 0){
					point -= p;
				}
				p = 0;
			}
		}
		
		function sendResults() {
			var username = '${username}';
			var levelId = 1;
			alert(username);
			$.post("/wespeak/updateLevelPoints", {
				username_c : username,
				levelId_c : levelId,
				point_c : point
			})
			.done(
					function(data) {
						alert("true");
						window.location.href = "/wespeak/seeMyResults";
					})
			.fail(
					function() {
						alert("false");
						
					});
		}
		
	</script>

</body>
</html>