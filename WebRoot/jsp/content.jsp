<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">

<head>
<base href="<%=basePath%>">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Responsive viewport 
==================================================-->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>${content.title}</title>

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

<style type="text/css">
	.warp{width: 1200px;margin: 0px auto;}
	.warp .title h4{text-align: center;color: #000;font-size: 28px;font-weight: bold;padding-top: 60px;}
	.con{line-height: 28px;font-size: 15px;width: 95%;margin: 30px auto;padding-bottom: 30px;color: #666;}
</style>
</head>

<body class="gr-body">
<!-- HEADER AREA START -->
<jsp:include page="header.jsp"></jsp:include>
<!-- HEADER AREA END -->

<!-- 中间内容开始 -->
<div class="warp">
	<div class="title">
		<h4>${content.title}</h4>		
		<div style="margin-bottom: 50px;">
			<span style="float: left;padding-left: 20%;color: #666">作者： ${content.name}</span>
			<span style="float: right;padding-right: 20%;color: #666">发布日期： ${content.date}</span>	
		</div>
	</div>
	<div style="height: 1px;background-color: #999;width: 80%;margin: 0px auto;"></div>
	<div class="con">
		${content.editor1}
	</div>
</div>
<!-- 中间内容结束 -->

<!--  FOOTER AREA START-->
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
		/* 关于我们的ajax */
		var url = '${pageContext.request.contextPath}/article/findArticleByAboutUs.action';
		$.post(url,function(data){
			$(data).each(function(index){
				$("#li"+index+" img").attr("src","${pageContext.request.contextPath}/images/gallery/"+this.img);
				$("#li"+index+" h4").html(this.title);
				$("#li"+index+" p").html(this.editor1);
			});
		});
		
		var url = '${pageContext.request.contextPath}/article/findArticleByNews.action';
		$.post(url,function(data){
			$(data).each(function(index){
				$("#zx"+index+" img").attr("src","${pageContext.request.contextPath}/images/gallery/"+this.img);
				$("#zx"+index+" h4").html(this.title);
				$("#zx"+index+" p").html(this.editor1);
				$("#zx"+index+" a").attr("href","${pageContext.request.contextPath}/article/findArticleByIndex.action?id="+this.id);
			});
		});
	})
</script>

</body>

</html>
