<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
   <head>
      <title>WeSpeak | Lớp đang học</title>
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
               <li><a href="home.html">Trang chủ</a></li>
               <li><a href="#">Lớp đang học</a></li>
               <li class="active"><a href="#">Luyện phát âm</a></li>
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
      <div class="container">
         <div class="row">
            <div class="col-md-12">
               <div class="panel panel-default">
                  <div class="panel-heading">
                     <h3 class="panel-title">Love</h3>
                  </div>
                  <div class="panel-body">
                     <div class="row">
                        <a href="#">
                           <div class="col-md-6">
                              <button type="button" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-lock pull-left"></span> Level 1: First date</button>
                           </div>
                        </a>
                        <a href="#">
                           <div class="col-md-6">
                              <button type="button" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-lock pull-left"></span> Level 7: The One</button>
                           </div>
                        </a>
                     </div>
                     <br>
                     <div class="row">
                        <a href="#">
                           <div class="col-md-6">
                              <button type="button" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-lock pull-left"></span> Level 2: Word stress</button>
                           </div>
                        </a>
                        <a href="#">
                           <div class="col-md-6">
                              <button type="button" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-lock pull-left"></span> Level 8: Word stress</button>
                           </div>
                        </a>
                     </div>
                     <br>
                     <div class="row">
                        <a href="#">
                           <div class="col-md-6">
                              <button type="button" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-lock pull-left"></span> Level 3: Early gets the girl</button>
                           </div>
                        </a>
                        <a href="#">
                           <div class="col-md-6">
                              <button type="button" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-lock pull-left"></span> Level 9: Ocean eleven</button>
                           </div>
                        </a>
                     </div>
                     <br>
                     <div class="row">
                        <a href="#">
                           <div class="col-md-6">
                              <button type="button" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-lock pull-left"></span> Level 4: Sentence stress</button>
                           </div>
                        </a>
                        <a href="#">
                           <div class="col-md-6">
                              <button type="button" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-lock pull-left"></span> Level 10: Sentence stress</button>
                           </div>
                        </a>
                     </div>
                     <br>
                     <div class="row">
                        <a href="#">
                           <div class="col-md-6">
                              <button type="button" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-lock pull-left"></span> Level 5: Journey for two</button>
                           </div>
                        </a>
                        <a href="#">
                           <div class="col-md-6">
                              <button type="button" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-lock pull-left"></span> Level 11: I promis you</button>
                           </div>
                        </a>
                     </div>
                     <br>
                     <div class="row">
                        <a href="#">
                           <div class="col-md-6">
                              <button type="button" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-lock pull-left"></span> Level 6: You're not alone</button>
                           </div>
                        </a>
                        <a href="#">
                           <div class="col-md-6">
                              <button type="button" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-lock pull-left"></span> Level 12: Love hurts</button>
                           </div>
                        </a>
                     </div>
                     <br>
                     <div class="row">
                        <div class="col-md-6">
                           <center><strong>Half way there!</strong></center> 
                        </div>
                        <a href="#">
                           <div class="col-md-6">
                              <button type="button" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-lock pull-left"></span> Level 13: FA forever alone</button>
                           </div>
                        </a>
                     </div>
                     <br>
                     <div class="row">
                        <a href="#">
                           <div class="col-md-6">
                              
                           </div>
                        </a>
                        <a href="#">
                           <div class="col-md-6">
                              <button type="button" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-lock pull-left"></span> Level 14: Purpose purpose purpose</button>
                           </div>
                        </a>
                     </div>                                          
                     <br>
                     <div class="row">
                        <a href="#">
                           <div class="col-md-6">
                              
                           </div>
                        </a>
                        <a href="#">
                           <div class="col-md-6">
                              <button type="button" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-lock pull-left"></span> Level 15: Sorry, I am taken</button>
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