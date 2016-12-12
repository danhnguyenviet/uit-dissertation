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
            <ul class="nav navbar-nav navbar-right">
               <li><a href="register"><span class="glyphicon glyphicon-user"></span> Đăng ký</a></li>
               <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
            </ul>
         </div>
      </nav>
   </body>
</html>