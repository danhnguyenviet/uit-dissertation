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
   </body>
</html>