<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
   <head>
      <title>${title}</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
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
		               <h3 class="panel-title"><span class="glyphicon glyphicon-asterisk"></span> Chi tiết học liệu</h3>
		            </div>
		            <div class="panel-body">
		               <div class="row">
		                  <div class="col-md-2">
		                     <br>
		                     <img src="img/hoc-tieng-anh-giao-tiep.png" class="pull-right">
		                  </div>
		                  <div class="col-md-10">
		                     <h4>Do you speak English?</h4>
		                     <p><span class="glyphicon glyphicon-user"></span> Guy Dickson</p>
		                     <p><span class="glyphicon glyphicon-upload"></span> Nguyễn Viết Danh</p>
		                     <p><span class="glyphicon glyphicon-eye-open"></span> 28 lượt đọc</p>
		                     <p><button type="button" class="btn btn-success">Vào đọc</button></p>
		                  </div>
		               </div>
		               <hr>
		               <div class="row">
		                  <div class="col-md-12">
		                     <label>Giới thiệu</label>
		                     <p>Tài liệu này sẽ hữu ích cho bạn</p>
		                  </div>
		               </div>
		            </div>
		         </div>
		      </div>
		   </div>
		</div>
   </body>
</html>