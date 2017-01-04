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
	      <div class="col-md-9">
	         <div class="panel panel-default">
	            <div class="panel-heading">
	               <h3 class="panel-title"><span class="glyphicon glyphicon-pencil"></span> Bài viết</h3>
	            </div>
	            <div class="panel-body">
	               <div class="row">
	                  <div class="col-md-12">
	                     <div class="textfull">
	                        <h2>
	                           <span class="font-arial">${postModel.title}</span>
	                        </h2>
	                        <hr>
	                        <p>
	                           <span class="font-arial">${postModel.content}</span>
	                          
	                           <span class="font-arial"></span>
	                        </p>
	                        <p>
	                           <span class="font-arial">10. How come? - Làm thế nào vậy? </span>
	                           <span class="font-arial"></span>
	                        </p>
	                        <p style="text-align: center;">
	                           <img src="http://kenhtuyensinh.vn/images/2014/09/Hoc-tieng-anh.jpg" border="0" alt="50 câu tiếng anh giao tiếp thông dụng hàng ngày" title="50 câu tiếng anh giao tiếp thông dụng hàng ngày" width="450" height="315">
	                        </p>
	                        <p style="text-align: center;">
	                           <em>
	                           <span class="font-arial">Bạn có thể đăng ký tham gia khoá học 
	                           <a href="http://kenhtuyensinh.vn/tieng-anh-giao-tiep" title="tiếng anh giao tiếp">tiếng anh giao tiếp</a> tại Academy.vn để rèn luyện thêm những tình huống giao tiếp thông dụng hàng ngày
	                           </span>
	                           </em>
	                        </p>
	                        <p>
	                           <span class="font-arial">11. Absolutely! - Chắc chắn rồi! </span>
	                           <br>
	                           <br>
	                           <span class="font-arial">12. Definitely! - Quá đúng! </span>
	                           <br>
	                           <br>
	                           <span class="font-arial">13. Of course! - Dĩ nhiên! </span>
	                           <br>
	                           <br>
	                           <span class="font-arial">14. You better believe it! - Chắc chắn mà.</span>
	                           <br>
	                           <br>
	                           <span class="font-arial">15. I guess so. ( hoc tieng anh ) - Tôi đoán vậy.</span>
	                           <br>
	                           <br>
	                           <span class="font-arial">16. There's no way to know. - Làm sao mà biết được.</span>
	                           <br>
	                           <br>
	                           <span class="font-arial">17. I can't say for sure. - Tôi không thể nói chắc.</span>
	                           <br>
	                           <br>
	                           <span class="font-arial">18. This is too good to be true! - Chuyện này khó tin quá!</span>
	                           <br>
	                           <br>
	                           <span class="font-arial">19. No way! (Stop joking!) - Thôi đi (đừng đùa nữa).</span>
	                           <br>
	                           <br>
	                           <span class="font-arial">20. I got it. - Tôi hiểu rồi.</span>
	                           <br>
	                           <br>
	                           <span class="font-arial">21. Right on! (Great!) - Quá đúng!</span>
	                           <br>
	                           <br>
	                           <span class="font-arial">22. I did it! (I made it!) - Tôi thành công rồi!</span>
	                           <br>
	                           <br>
	                           <span class="font-arial">23. Got a minute? - Có rảnh không?</span>
	                           <br>
	                           <br>
	                           <span class="font-arial">24. About when? - Vào khoảng thời gian nào? </span>
	                           <br>
	                           <br>
	                           <span class="font-arial">25. I won't take but a minute. - Sẽ không mất nhiều thời gian đâu.</span>
	                           <br>
	                           <br>
	                           <span class="font-arial">26. Speak up! - Hãy nói lớn lên. </span>
	                           <br>
	                           <br>
	                           <span class="font-arial">27. Seen Melissa? - Có thấy Melissa không? </span>
	                           <br>
	                           <br>
	                           <span class="font-arial">28. So we've met again, eh? - Thế là ta lại gặp nhau phải không? </span>
	                           <br>
	                           <br>
	                           <span class="font-arial">29. Come here. - Đến đây. </span>
	                           <br>
	                           <br>
	                           <span class="font-arial">30. Come over. - Ghé chơi.</span>
	                           <br>
	                           <br>
	                           <span class="font-arial">31. Don't go yet. - Đừng đi vội. </span>
	                           <br>
	                           <br>
	                           <span class="font-arial">32. Please go first. After you. - Xin nhường đi trước. Tôi xin đi sau. </span>
	                           <br>
	                           <br>
	                           <span class="font-arial">33. Thanks for letting me go first. - Cám ơn đã nhường đường. </span>
	                           <br>
	                           <br>
	                           <span class="font-arial">34. What a relief. - Thật là nhẹ nhõm.</span>
	                           <br>
	                           <br>
	                           <span class="font-arial">35. What the hell are you doing? - Anh đang làm cái quái gì thế kia? </span>
	                           <br>
	                           <br>
	                           <span class="font-arial">36. You're a life saver. - Bạn đúng là cứu tinh.</span>
	                           <br>
	                           <br>
	                           <span class="font-arial">37. I know I can count on you. - Tôi biết mình có thể trông cậy vào bạn mà.</span>
	                           <br>
	                           <br>
	                           <span class="font-arial">38. Get your head out of your ass! - Đừng có giả vờ khờ khạo! </span>
	                           <br>
	                           <br>
	                           <span class="font-arial">39. That's a lie! - Xạo quá! </span>
	                           <br>
	                           <br>
	                           <span class="font-arial">40. Do as I say. - Làm theo lời tôi.</span>
	                           <br>
	                           <br>
	                           <span class="font-arial">41. This is the limit! - Đủ rồi đó! </span>
	                           <br>
	                           <br>
	                           <span class="font-arial">42. Explain to me why. - Hãy giải thích cho tôi tại sao.</span>
	                           <br>
	                           <br>
	                           <span class="font-arial">43. Ask for it! - Tự mình làm thì tự mình chịu đi!</span>
	                           <br>
	                           <br>
	                           <span class="font-arial">44. In the nick of time. - Thật là đúng lúc.</span>
	                           <br>
	                           <br>
	                           <span class="font-arial">45. No litter. - Cấm vứt rác.</span>
	                           <br>
	                           <br>
	                           <span class="font-arial">46. Go for it! - Cứ liều thử đi.</span>
	                           <br>
	                           <br>
	                           <span class="font-arial">47. What a jerk! - Thật là đáng ghét.</span>
	                           <br>
	                           <br>
	                           <span class="font-arial">48. How cute! - Ngộ ngĩnh, dễ thương quá!</span>
	                           <br>
	                           <br>
	                           <span class="font-arial">49. None of your business! - Không phải việc của bạn.</span>
	                           <br>
	                           <br>
	                           <span class="font-arial">50. Don't peep! - Đừng nhìn lén!</span>
	                           <br>
	                           <br>
	                           <span class="font-arial"><b>SƯU TẦM</b></span>
	                     </div>
	                  </div>
	                  </p>
	               </div>
	            </div>
	         </div>
	      </div>
	      <div class="col-md-3">
	         <div class="panel panel-default">
	            <div class="panel-heading">
	               <h3 class="panel-title"><span class="glyphicon glyphicon-eye-open"></span> Bài viết nổi bật</h3>
	            </div>
	            <div class="panel-body">
	               <div class="row">
	                  <div class = "col-sm-12 col-md-12">
	                     <div class = "thumbnail">
	                        <a href="#"><img src = "img/50-cau-tieng-anh-giao-tiep-1.png" alt = "50 câu tiếng anh giao tiếp"></a>
	                     </div>
	                     <div class = "caption">
	                        <a href="#">
	                           <h4>50 câu tiếng anh giao tiếp thông dụng hàng ngày bạn nên biết</h4>
	                        </a>
	                     </div>
	                     <div class = "thumbnail">
	                        <a href="#"><img src = "img/50-cau-tieng-anh-giao-tiep-1.png" alt = "50 câu tiếng anh giao tiếp"></a>
	                     </div>
	                     <div class = "caption">
	                        <a href="#">
	                           <h4>50 câu tiếng anh giao tiếp thông dụng hàng ngày bạn nên biết</h4>
	                        </a>
	                     </div>
	                     <div class = "thumbnail">
	                        <a href="#"><img src = "img/50-cau-tieng-anh-giao-tiep-1.png" alt = "50 câu tiếng anh giao tiếp"></a>
	                     </div>
	                     <div class = "caption">
	                        <a href="#">
	                           <h4>50 câu tiếng anh giao tiếp thông dụng hàng ngày bạn nên biết</h4>
	                        </a>
	                     </div>
	                     <div class = "thumbnail">
	                        <a href="#"><img src = "img/50-cau-tieng-anh-giao-tiep-1.png" alt = "50 câu tiếng anh giao tiếp"></a>
	                     </div>
	                     <div class = "caption">
	                        <a href="#">
	                           <h4>50 câu tiếng anh giao tiếp thông dụng hàng ngày bạn nên biết</h4>
	                        </a>
	                     </div>
	                  </div>
	               </div>
	            </div>
	         </div>
	      </div>
	   </div>
	</div>
   </body>
</html>