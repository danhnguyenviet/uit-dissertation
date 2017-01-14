<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="com.wespeak.model.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>${title}</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="css/bootstrap.min.css">
<script
	src="js/bootstrap.js"></script>
<script
	src="js/jquery-3.1.1.min.js"></script>
<script
	src="js/bootstrap.min.js"></script>
</head>
<style>
body {
	background: url('img/train-no-text.png') no-repeat center fixed;
	background-size: cover;
}
</style>
<body>
	<%@ include file="../pages/templates/nav.jsp"%>
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">Thông tin cơ bản</div>
			<div class="panel-body">
				<ul class="nav nav-tabs" data-tabs="tabs">
					<li class="active"><a data-toggle="tab" href="#personalInfo">Thông tin cá nhân</a></li>
					<li><a data-toggle="tab" href="#postManagement">Quản lý bài viết</a></li>
					<li><a data-toggle="tab" href="#coursewareManagement">Quản lý học liệu</a></li>
				</ul>

				<div class="tab-content">
					<div id="personalInfo" class="tab-pane fade in active">
						<form class="form-horizontal">
							<fieldset>
							<br>
							<!-- Text input: fullname-->
							<div class="form-group">
							  <label class="col-md-4 control-label" for="fullname">Họ và tên</label>  
							  <div class="col-md-4">
							  <input id="fullname" name="fullname" type="text" placeholder="" class="form-control input-md" disabled value="${userInfo.getFullname()}">
							    
							  </div>
							</div>
							
							<!-- Multiple Radios (inline): gender -->
							<div class="form-group">
							  <label class="col-md-4 control-label" for="radios">Giới tính</label>
							  <div class="col-md-4"> 
							    <span id="gender" name="gender">${userInfo.getGender()}</span>
							  </div>
							</div>
							
							<!-- Select Basic: dateOfBirth -->
							<div class="form-group">
							    <label class="control-label col-md-4" for="dateOfBirth">Ngày sinh:</label>
							    <div class="col-md-4">
							        <div class="input-group registration-date-time">
							        	<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span></span>
									    <input class="form-control" name="dateOfBirth" id="dateOfBirth" type="date" disabled value="${userInfo.getDateOfBirth()}">
							        </div>
							    </div>    
							</div>
							
							<!-- Text input: email-->
							<div class="form-group">
							  <label class="col-md-4 control-label" for="email">Email</label>  
							  <div class="col-md-4">
							  <input id="email" name="email" type="text" placeholder="" class="form-control input-md" disabled value="${userInfo.getEmail()}">
							    
							  </div>
							</div>
							
							<!-- Textarea: address -->
							<div class="form-group">
							  <label class="col-md-4 control-label" for="textarea">Địa chỉ</label>
							  <div class="col-md-4">                     
							    <textarea class="form-control" id="address" name="address" disabled value="${userInfo.getAddress()}">${userInfo.getAddress()}</textarea>
							  </div>
							</div>
							
							<!-- Text input: phone-->
							<div class="form-group">
							  <label class="col-md-4 control-label" for="phone">Số điện thoại</label>  
							  <div class="col-md-4">
							  <input id="phone" name="phone" type="text" placeholder="" class="form-control input-md" disabled value="${userInfo.getPhone()}">
							    
							  </div>
							</div>
							
							<!-- Button -->
							<!-- 
							<div class="form-group">
							  <label class="col-md-4 control-label" for="singlebutton"></label>
							  <div class="col-md-4">
							    <button id="singlebutton" name="singlebutton" class="btn btn-primary">Save</button>
							  </div>
							</div> -->
							
							</fieldset>
							</form>
					</div>
					<%List<Post> postList = (List<Post>) request.getAttribute("postList"); %>
					<div id="postManagement" class="tab-pane fade">
						<br>
						<!-- <button class="btn btn-success" onclick="window.location='${pageContext.request.contextPath}/addPost'">Thêm bài viết</button>  -->
						<br>
						<table class="table table-hover">
						    <thead>
						      <tr>
						        <th>Tên bài viết</th>
						        <th>Ngày đăng</th>
						        <th></th>
						        <th></th>
						      </tr>
						    </thead>
						    <tbody>
						    <%
							    if (!postList.equals(null)) {
							    	for (int i = 0; i < postList.size(); i++) { %>
							      <tr>
							        <td><%=postList.get(i).getTitle() %></td>
							        <td><%=postList.get(i).getModified() %></td>
							        <td><a
										href="postDetail?id=<%=postList.get(i).getPostId() %>" target="blank"
										title="edit"><i class="glyphicon glyphicon-eye-open"></i></a>&nbsp;&nbsp;
									<a href="" data-toggle="modal"
										title="delete"
										onclick="deletePostById(<%=postList.get(i).getPostId()%>)"><i
											class="glyphicon glyphicon-trash"></i></a></td>
									<%if (postList.get(i).getActive()==0) { %>
									<td><span class="badge">Đang duyệt</span></td>
									<%} else { %>
									<td><span class="badge"></span></td>
									<%} %>
							      </tr>
							      <%}
							    }%>
						    </tbody>
						    
						  </table>
					</div>
					<%List<CoursewareModel> coursewareList = (List<CoursewareModel>) request.getAttribute("coursewareList"); %>
					<div id="coursewareManagement" class="tab-pane fade">
						<br>
						<!-- <button class="btn btn-success" onclick="window.location='${pageContext.request.contextPath}/addPost'">Thêm bài viết</button>  -->
						<br>
						<table class="table table-hover">
						    <thead>
						      <tr>
						        <th>Tên học liệu</th>
						        <th>Tên tác giả</th>
						        <th></th>
						        <th></th>
						      </tr>
						    </thead>
						    <tbody>
						    <%
							    if (!coursewareList.equals(null)) {
							    	for (int i = 0; i < coursewareList.size(); i++) { %>
							      <tr>
							        <td><%=coursewareList.get(i).getCoursewareName() %></td>
							        <td><%=coursewareList.get(i).getAuthor() %></td>
							        <td><a
										href="coursewareDetail?id=<%=coursewareList.get(i).getCoursewareId() %>" target="blank"
										title="edit"><i class="glyphicon glyphicon-eye-open"></i></a>&nbsp;&nbsp;
									<a href="" data-toggle="modal"
										title="delete"
										onclick="deleteCoursewareById(<%=coursewareList.get(i).getCoursewareId()%>)"><i
											class="glyphicon glyphicon-trash"></i></a></td>
									<%if (coursewareList.get(i).getActive()==0) { %>
									<td><span class="badge">Đang duyệt</span></td>
									<%} else { %>
									<td><span class="badge"></span></td>
									<%} %>
							      </tr>
							      <%}
							    }%>
						    </tbody>
						    
						  </table>
					</div>
				</div>
				
			</div>
		</div>
		
		<!-- Delete confirm modal -->
		
	</div>
	<!-- End of container -->
	<script>
		$(document).ready(function(){
		    $(".nav-tabs a").click(function(){
		        $(this).tab('show');
		    });
		});
		
		function deletePostById (id) {
			if (confirm('Bạn muốn xóa bài viết này?')) {
				window.location.href = "deletePost?postId=" + id;
			} else {
			    // Do nothing!
			}
		}
		
		function deleteCoursewareById(id) {
			if (confirm('Bạn muốn xóa học liệu này?')) {
				window.location.href = "deleteCourseware?coursewareId=" + id;
			} else {
			    // Do nothing!
			}
		}
	</script>
</body>
</html>