<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">

<head>
<base href="<%=basePath%>">

<!-- Responsive viewport 
==================================================-->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>SAP-我们是专业的</title>

<!-- Bootstrap css
==================================================================-->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- FontAwesome css
=====================================================================-->
<link rel="stylesheet" href="css/font-awesome.min.css">

<!-- Simple Ticker css
=====================================================================-->
<link rel="stylesheet" href="css/jquery.simpleTicker.css">

<!-- Owl Carousel css
=====================================================================-->
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.css">

<!-- Animate css
=====================================================================-->
<link rel="stylesheet" href="css/animate.css">

<!-- PrettyPhoto css
=====================================================================-->
<link rel="stylesheet" href="css/prettyPhoto.css">

<!-- Style css
==================================================================== -->
<link rel="stylesheet" href="style.css">

<!-- Responsive css
===================================================================== -->
<link rel="stylesheet" href="css/responsive.css">

</head>

<body class="gr-body">
<!-- HEADER AREA START -->
<jsp:include page="header.jsp"></jsp:include>
<!-- HEADER AREA END -->

<!--  CONTACT AREA START -->
<div class="contact-area section-padding" id="contact">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="sectino-intro">
					<h2 class="section-heading gr-heading">给我们留言</h2>
					<p>为客户创造价值，为社会创造财富，为员工创造机会，为投资者获取回报，为捷瑞数字赢得发展。</p>
				</div>
			</div>
			<div class="col-md-12">
				<!-- Contact Form Start-->
				<div id="messages" class="contact-form">					
					<form id="ajax-contact" method="post" action="message/addMessage.action">
						<div class="form-group half-form">
							<label for="name"></label>
						   <input type="text" id="name" name="name" placeholder="请填写您的姓名" required>
						</div>
						<div class="form-group half-form">
							<label for="email"></label>
							<input type="text" id="phone" name="phone" placeholder="请填写您的联系方式" required>
						</div>

						<div class="form-group">
							<label for="message"></label>
							<textarea id="message" name="content" placeholder="请填写您要留言的内容" required></textarea>
						</div>
						<div class="form-group">
							<button type="submit" class="gr-btn">确 认 发 送</button>
						</div>
						<div id="form-messages"></div>
					</form>										
				</div>				
				<!-- Contact Form End-->
			</div>
		</div>
	</div>
</div>
<!--  CONTACT AREA END -->

<!--  FOOTER AREA START -->
<jsp:include page="footer.jsp"></jsp:include>
<!--  FOOTER AREA END -->

<!-- jQuery Min
==============================================================-->
<script src="js/jquery.min.js"></script>

<!-- Bootstrap Js 
==============================================================-->
<script src="js/bootstrap.min.js"></script>

<!-- Owl Carousel Js 
==============================================================-->
<script src="js/owl.carousel.min.js"></script>

<!-- Custom Js 
================================================================-->
<script src="js/main.js"></script>

<!-- App Js 
==============================================================-->
<script src="js/app.js"></script>

<!-- Isotope Js 
==============================================================-->
<script src="js/isotope.pkgd.min.js.js"></script>

<!-- Easing Js 
==============================================================-->
<script src="js/jquery.easing.1.3.js"></script>

<!-- Waypoints Js 
==============================================================-->
<script src="js/jquery.waypoints.min.js"></script>

<!-- Counterup Js 
==============================================================-->
<script src="js/jquery.counterup.min.js"></script>

<!-- PrettyPhoto Js 
==============================================================-->
<script src="js/jquery.prettyPhoto.js"></script>

<!-- Simple Ticker Js 
==============================================================-->
<script src="js/jquery.simpleTicker.js"></script>

<!-- Sticky Js 
==============================================================-->
<script src="js/jquery.sticky.js"></script>

<!-- Wow Js 
==============================================================-->
<script src="js/wow.js"></script>

<script type="text/javascript">
	$(function(){
		var url = '${pageContext.request.contextPath}/message/findMessageByAudit.action';
		$.post(url,function(data){
			$(data).each(function(){
				$("#messages").append('<div class="success">'+this.content+'</div>');
			});			
		},"json");	
	});
</script>
</body>

</html>
