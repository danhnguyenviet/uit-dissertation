<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>${title}</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<style>
body {
	background: url('img/train.png') no-repeat center fixed;
	background-size: cover;
}
</style>
</head>
<body>
	<%@ include file="../pages/templates/nav.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							<span class="glyphicon glyphicon-list"></span> Danh sách học liệu
						</h3>
					</div>
					<div class="panel-body">
						<c:forEach var="dept" items="${coursewareModel}">
							<div class="col-md-3">
								<div class="thumbnail">
									<a href="coursewareDetail?id=${dept.coursewareId}"><img
										src="img/hoc-tieng-anh-giao-tiep.png"></a>
									<div class="caption">
										<a href="coursewareDetail?id=${dept.coursewareId}">
											<h4>${dept.coursewareName}</h4>
										</a>
										<p>
											<span class="glyphicon glyphicon-user"></span> 
											${dept.author}
										</p>
										<p>
											<span class="glyphicon glyphicon-upload"></span>
											${dept.userName}
										</p>
										<p>
											<span class="glyphicon glyphicon-eye-open"></span>
											${dept.numOfView}
										</p>
									</div>
								</div>
							</div>
						</c:forEach>
						<!-- 	            <div class="row"> -->
						<!-- 	                  <div class="col-md-3"> -->
						<!-- 	                     <div class="thumbnail"> -->
						<!-- 	                        <a href="coursewareDetail"><img src="img/hoc-tieng-anh-giao-tiep.png"></a> -->
						<!-- 	                        <div class="caption"> -->
						<!-- 	                           <a href="coursewareDetail"> -->
						<!-- 	                              <h4>Do you speak English?</h4> -->
						<!-- 	                           </a> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-user"></span> Guy Dickson</p> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-upload"></span> Nguyễn Viết Danh</p> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-eye-open"></span> 28 lượt đọc</p> -->
						<!-- 	                        </div> -->
						<!-- 	                     </div> -->
						<!-- 	                  </div> -->
						<!-- 	                  <div class="col-md-3"> -->
						<!-- 	                     <div class="thumbnail"> -->
						<!-- 	                        <a href="coursewareDetail"><img src="img/hoc-tieng-anh-giao-tiep.png"></a> -->
						<!-- 	                        <div class="caption"> -->
						<!-- 	                           <a href="coursewareDetail"> -->
						<!-- 	                              <h4>Do you speak English?</h4> -->
						<!-- 	                           </a> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-user"></span> Guy Dickson</p> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-upload"></span> Nguyễn Viết Danh</p> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-eye-open"></span> 28 lượt đọc</p> -->
						<!-- 	                        </div> -->
						<!-- 	                     </div> -->
						<!-- 	                  </div> -->
						<!-- 	                  <div class="col-md-3"> -->
						<!-- 	                     <div class="thumbnail"> -->
						<!-- 	                        <a href="coursewareDetail"><img src="img/hoc-tieng-anh-giao-tiep.png"></a> -->
						<!-- 	                        <div class="caption"> -->
						<!-- 	                           <a href="read-courseware.html"> -->
						<!-- 	                              <h4>Do you speak English?</h4> -->
						<!-- 	                           </a> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-user"></span> Guy Dickson</p> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-upload"></span> Nguyễn Viết Danh</p> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-eye-open"></span> 28 lượt đọc</p> -->
						<!-- 	                        </div> -->
						<!-- 	                     </div> -->
						<!-- 	                  </div> -->
						<!-- 	                  <div class="col-md-3"> -->
						<!-- 	                     <div class="thumbnail"> -->
						<!-- 	                        <a href="coursewareDetail"><img src="img/hoc-tieng-anh-giao-tiep.png"></a> -->
						<!-- 	                        <div class="caption"> -->
						<!-- 	                           <a href="read-courseware.html"> -->
						<!-- 	                              <h4>Do you speak English?</h4> -->
						<!-- 	                           </a> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-user"></span> Guy Dickson</p> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-upload"></span> Nguyễn Viết Danh</p> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-eye-open"></span> 28 lượt đọc</p> -->
						<!-- 	                        </div> -->
						<!-- 	                     </div> -->
						<!-- 	                  </div> -->
						<!-- 	               </div> -->
						<!-- 	               row -->
						<!-- 	               <div class="row"> -->
						<!-- 	                  <div class="col-md-3"> -->
						<!-- 	                     <div class="thumbnail"> -->
						<!-- 	                        <a href=""><img src="img/hoc-tieng-anh-giao-tiep.png"></a> -->
						<!-- 	                        <div class="caption"> -->
						<!-- 	                           <a href="read-courseware.html"> -->
						<!-- 	                              <h4>Do you speak English?</h4> -->
						<!-- 	                           </a> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-user"></span> Guy Dickson</p> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-upload"></span> Nguyễn Viết Danh</p> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-eye-open"></span> 28 lượt đọc</p> -->
						<!-- 	                        </div> -->
						<!-- 	                     </div> -->
						<!-- 	                  </div> -->
						<!-- 	                  <div class="col-md-3"> -->
						<!-- 	                     <div class="thumbnail"> -->
						<!-- 	                        <a href=""><img src="img/hoc-tieng-anh-giao-tiep.png"></a> -->
						<!-- 	                        <div class="caption"> -->
						<!-- 	                           <a href="read-courseware.html"> -->
						<!-- 	                              <h4>Do you speak English?</h4> -->
						<!-- 	                           </a> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-user"></span> Guy Dickson</p> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-upload"></span> Nguyễn Viết Danh</p> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-eye-open"></span> 28 lượt đọc</p> -->
						<!-- 	                        </div> -->
						<!-- 	                     </div> -->
						<!-- 	                  </div> -->
						<!-- 	                  <div class="col-md-3"> -->
						<!-- 	                     <div class="thumbnail"> -->
						<!-- 	                        <a href=""><img src="img/hoc-tieng-anh-giao-tiep.png"></a> -->
						<!-- 	                        <div class="caption"> -->
						<!-- 	                           <a href="read-courseware.html"> -->
						<!-- 	                              <h4>Do you speak English?</h4> -->
						<!-- 	                           </a> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-user"></span> Guy Dickson</p> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-upload"></span> Nguyễn Viết Danh</p> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-eye-open"></span> 28 lượt đọc</p> -->
						<!-- 	                        </div> -->
						<!-- 	                     </div> -->
						<!-- 	                  </div> -->
						<!-- 	                  <div class="col-md-3"> -->
						<!-- 	                     <div class="thumbnail"> -->
						<!-- 	                        <a href=""><img src="img/hoc-tieng-anh-giao-tiep.png"></a> -->
						<!-- 	                        <div class="caption"> -->
						<!-- 	                           <a href="read-courseware.html"> -->
						<!-- 	                              <h4>Do you speak English?</h4> -->
						<!-- 	                           </a> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-user"></span> Guy Dickson</p> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-upload"></span> Nguyễn Viết Danh</p> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-eye-open"></span> 28 lượt đọc</p> -->
						<!-- 	                        </div> -->
						<!-- 	                     </div> -->
						<!-- 	                  </div> -->
						<!-- 	               </div> -->
						<!-- 	               row -->
						<!-- 	               <div class="row"> -->
						<!-- 	                  <div class="col-md-3"> -->
						<!-- 	                     <div class="thumbnail"> -->
						<!-- 	                        <a href=""><img src="img/hoc-tieng-anh-giao-tiep.png"></a> -->
						<!-- 	                        <div class="caption"> -->
						<!-- 	                           <a href="read-courseware.html"> -->
						<!-- 	                              <h4>Do you speak English?</h4> -->
						<!-- 	                           </a> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-user"></span> Guy Dickson</p> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-upload"></span> Nguyễn Viết Danh</p> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-eye-open"></span> 28 lượt đọc</p> -->
						<!-- 	                        </div> -->
						<!-- 	                     </div> -->
						<!-- 	                  </div> -->
						<!-- 	                  <div class="col-md-3"> -->
						<!-- 	                     <div class="thumbnail"> -->
						<!-- 	                        <a href=""><img src="img/hoc-tieng-anh-giao-tiep.png"></a> -->
						<!-- 	                        <div class="caption"> -->
						<!-- 	                           <a href="read-courseware.html"> -->
						<!-- 	                              <h4>Do you speak English?</h4> -->
						<!-- 	                           </a> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-user"></span> Guy Dickson</p> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-upload"></span> Nguyễn Viết Danh</p> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-eye-open"></span> 28 lượt đọc</p> -->
						<!-- 	                        </div> -->
						<!-- 	                     </div> -->
						<!-- 	                  </div> -->
						<!-- 	                  <div class="col-md-3"> -->
						<!-- 	                     <div class="thumbnail"> -->
						<!-- 	                        <a href=""><img src="img/hoc-tieng-anh-giao-tiep.png"></a> -->
						<!-- 	                        <div class="caption"> -->
						<!-- 	                           <a href="read-courseware.html"> -->
						<!-- 	                              <h4>Do you speak English?</h4> -->
						<!-- 	                           </a> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-user"></span> Guy Dickson</p> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-upload"></span> Nguyễn Viết Danh</p> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-eye-open"></span> 28 lượt đọc</p> -->
						<!-- 	                        </div> -->
						<!-- 	                     </div> -->
						<!-- 	                  </div> -->
						<!-- 	                  <div class="col-md-3"> -->
						<!-- 	                     <div class="thumbnail"> -->
						<!-- 	                        <a href=""><img src="img/hoc-tieng-anh-giao-tiep.png"></a> -->
						<!-- 	                        <div class="caption"> -->
						<!-- 	                           <a href="read-courseware.html"> -->
						<!-- 	                              <h4>Do you speak English?</h4> -->
						<!-- 	                           </a> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-user"></span> Guy Dickson</p> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-upload"></span> Nguyễn Viết Danh</p> -->
						<!-- 	                           <p><span class="glyphicon glyphicon-eye-open"></span> 28 lượt đọc</p> -->
						<!-- 	                        </div> -->
						<!-- 	                     </div> -->
						<!-- 	                  </div> -->
						<!-- 	               </div> -->
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>