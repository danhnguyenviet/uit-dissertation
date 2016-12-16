<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
   <head>
      <title>WeSpeak | Luyện phát âm</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <link rel="stylesheet" href="custom/css/digital-clock.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <style>
         body {
            background: url('img/train-no-text.png') no-repeat center fixed; 
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
               <li><a href="classlist.html">Lớp đang học</a></li>
               <li><a href="pronunciation.html">Luyện phát âm</a></li>
               <li><a href="courseware.html">Học liệu</a></li>
               <li><a href="news.html">Bài viết</a></li>
            </ul>
            <form class="navbar-form navbar-left">
               <div class="input-group">
                  <input type="text" class="form-control" placeholder="Tìm kiếm">
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
      <div class="container">
         <div class="row">
            <div class="col-md-12">
               <div class="panel panel-default">
                  <div class="panel-heading">
                     <h3 class="panel-title">Các chủ đề</h3>
                  </div>
                  <div class="panel-body">
                     <div class="row">
                        <a href="euro-cup-2016.html">
                           <div class="col-md-6">
                              <img src="img/euro-cup-2016.png" class="img-rounded">
                           </div>
                        </a>
                        <a href="love.html">
                           <div class="col-md-6">
                              <img src="img/love.png" class="img-rounded">
                           </div>
                        </a>
                     </div>
                     <hr>
                     <div class="row">
                        <a href="business.html">
                           <div class="col-md-6">
                              <img src="img/business.png" class="img-rounded">
                           </div>
                        </a>
                        <a href="travel.html">
                           <div class="col-md-6">
                              <img src="img/travel.png" class="img-rounded">
                           </div>
                        </a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </body>
</html>