<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
   <head>
      <title>${title}</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <style>
        body {
          background: url('img/train.png') no-repeat center fixed; 
          background-size: cover;
        }
      </style>
   </head>
   <body>
      <nav class="navbar navbar-inverse">
         <div class="container-fluid">
            <div class="navbar-header">
               <a class="navbar-brand" href="#">WeSpeak</a>
            </div>
            <ul class="nav navbar-nav">
               <li class="active"><a href="home.html">Trang chủ</a></li>
               <li><a href="#">Lớp đang học</a></li>
               <li><a href="#">Luyện phát âm</a></li>
               <li><a href="#">Học liệu</a></li>
               <li><a href="#">Bài viết</a></li>
            </ul>
            <form class="navbar-form navbar-left">
               <div class="input-group">
                  <input type="text" class="form-control" placeholder="Search">
                  <div class="input-group-btn">
                     <button class="btn btn-default" type="submit">
                     <i class="glyphicon glyphicon-search"></i>
                     </button>
                  </div>
               </div>
            </form>
            <ul class="nav navbar-nav navbar-right">
               <li><a href="#"><span class="glyphicon glyphicon-user"></span> Danh Nguyễn Viết</a></li>
               <li>
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                     <span class="glyphicon glyphicon-cog"></span>
                     <ul class="dropdown-menu">
                        <li><a href="#">Thông tin cơ bản</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Thoát</a></li>
                     </ul>
                  </a>
               </li>
            </ul>
         </div>
      </nav>
   </body>
</html>