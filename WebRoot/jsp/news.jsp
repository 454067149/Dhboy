<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

<!-- Responsive viewport 
==================================================-->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>新闻资讯</title>

<!-- Bootstrap css
==================================================================-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">

<!-- FontAwesome css
=====================================================================-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">

<!-- Simple Ticker css
=====================================================================-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.simpleTicker.css">

<!-- Owl Carousel css
=====================================================================-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.theme.default.css">

<!-- Animate css
=====================================================================-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">

<!-- PrettyPhoto css
=====================================================================-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/prettyPhoto.css">

<!-- Style css
==================================================================== -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">

<!-- Responsive css
===================================================================== -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">

<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>

<body class="gr-body">
<!-- HEADER AREA START -->
<jsp:include page="header.jsp"></jsp:include>
<!-- HEADER AREA END -->

<!--  OUR CAUSES AREA START -->
<div class="our-causes-area grey-bg section-padding" id="causes">
	<div class="container">
		<div class="row" style="margin-top: -20px">
			<!-- <div class="col-md-12">
				<div class="sectino-intro">
					<h2 class="section-heading gr-heading">新闻资讯</h2>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque.</p>
				</div>
			</div>
			<!-- Single Cause -->
			<input type="hidden" value="${param.column }" id="column"/>
			<input type="hidden" value="${param.page }" id="pageNumber"/>
			<c:forEach items="${articleListByColumn }" var="n">
				<div class="col-md-3 col-sm-6">
					<div class="cause-single" style="margin-bottom: 20px">
						<img src="${pageContext.request.contextPath}/images/gallery/${n.img}" alt="">
						<div class="cause-details">
							<h4 style="white-space:nowrap;overflow:hidden;text-overflow:ellipsis; display:block;">${n.title}</h4>
							<div style="margin-bottom: 20px;width: 100%;height: 45px;overflow:hidden;text-overflow: ellipsis">
								<p>${n.paper}</p>
							</div>	
							<a href="${pageContext.request.contextPath}/article/findArticleByIndex.action?id=${n.id}" class="gr-btn">了解详情</a>						
						</div>
					</div>
				</div>
			</c:forEach>
			<%
		 	int pageNum=(Integer)request.getAttribute("pageNum");
		 	int total=(Integer)request.getAttribute("total");
		 	int pageCount=(Integer)request.getAttribute("pageCount");
		 	int totalPages=(int)Math.ceil(total/pageCount)+1;	
		 			 		
		 	//计算上一页的页码
		 	int front=pageNum-1;
		 	if(front<=0)front=1;
		 	
		 	//计算下一页的页码
		 	int next = pageNum+1;
		 	if(next>totalPages)next=totalPages;		 
		  %>
		  <div id="page" style="text-align: center;margin-top: -50px;">
			<a href="${pageContext.request.contextPath}/article/finArticleByColumn.action?column=<%=(Integer)request.getAttribute("column") %>&pageNum=1" style="margin-right: 30px;">首页</a>
			<a href="${pageContext.request.contextPath}/article/finArticleByColumn.action?column=<%=(Integer)request.getAttribute("column") %>&pageNum=<%=front %>" style="margin-right: 30px;">上一页</a>
			<a href="${pageContext.request.contextPath}/article/finArticleByColumn.action?column=<%=(Integer)request.getAttribute("column") %>&pageNum=<%=next %>" style="margin-right: 30px;">下一页</a>
			<a href="${pageContext.request.contextPath}/article/finArticleByColumn.action?column=<%=(Integer)request.getAttribute("column") %>&pageNum=<%=totalPages %>" style="margin-right: 30px;">末尾</a>
		  </div>								
		</div>			
	</div>
		
</div>
<!--  OUR CAUSES AREA END -->

<div class="footer-bottom">
		<p>Copyright &copy; 2017.版权所有.<a target="_blank" href="http://www.dhboy.top/">Dhony工作室</a></p>
</div>
<!-- jQuery Min
==============================================================-->
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>

<!-- Bootstrap Js 
==============================================================-->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

<!-- Owl Carousel Js 
==============================================================-->
<script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>

<!-- Custom Js 
================================================================-->
<script src="${pageContext.request.contextPath}/js/main.js"></script>

<!-- App Js 
==============================================================-->
<script src="${pageContext.request.contextPath}/js/app.js"></script>

<!-- Isotope Js 
==============================================================-->
<script src="${pageContext.request.contextPath}/js/isotope.pkgd.min.js.js"></script>

<!-- Easing Js 
==============================================================-->
<script src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>

<!-- Waypoints Js 
==============================================================-->
<script src="${pageContext.request.contextPath}/js/jquery.waypoints.min.js"></script>

<!-- Counterup Js 
==============================================================-->
<script src="${pageContext.request.contextPath}/js/jquery.counterup.min.js"></script>

<!-- PrettyPhoto Js 
==============================================================-->
<script src="${pageContext.request.contextPath}/js/jquery.prettyPhoto.js"></script>

<!-- Simple Ticker Js 
==============================================================-->
<script src="${pageContext.request.contextPath}/js/jquery.simpleTicker.js"></script>

<!-- Sticky Js 
==============================================================-->
<script src="${pageContext.request.contextPath}/js/jquery.sticky.js"></script>

<!-- Wow Js 
==============================================================-->
<script src="${pageContext.request.contextPath}/js/wow.js"></script>

<!-- Google Maps API 
==============================================================-->
<!--<script src="http://maps.googleapis.com/maps/api/js"></script>
<script src="js/jquery.goole-map.js"></script>--->

</body>
<!-- <script type="text/javascript">
	$(function(){
		var page=1;
		var page = Number($("#pageNumber").val())+1;
		var url = '${pageContext.request.contextPath}/article/findArticleByIndex.action?id='+$("#column").val()+'&page='+page;	
		$("#page button:eq(0)").on("click",function(){
			 // window.navigate(url); 
		});			
	});
</script> -->
</html>
