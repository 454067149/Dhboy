<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<!-- 判断是否有数据 -->
<c:if test="${empty banners || empty aboutUs || empty news || empty admins}">
	<jsp:forward page="../index/connet.action"></jsp:forward>
</c:if>
<!-- HEADER AREA START -->
<jsp:include page="header.jsp"></jsp:include>
<!-- HEADER AREA END -->

<!-- SLIDER AREA START -->
<c:if test="${!empty banners }">
	<div id="slider-area" class="owl-carousel owl-theme gr-slider-area">	
		<c:forEach items="${banners }" var="b">
			<!-- Single Slide Start -->
			<div class="single-slide overly">
				<img src="${pageContext.request.contextPath}/images/slider/${b.img}" alt="">
				<div class="slide-txt">
					<h2>${b.title}</h2>
					<p>${b.p}</p>
					<a href="${b.url}" class="gr-btn">了解更多</a>
				</div>
			</div>
		</c:forEach>
	</div>
</c:if>
<!-- SLIDER AREA END -->

<!--  ABOUT AREA START -->
<c:if test="${!empty aboutUs }">
	<section class="gr-about-area" id="about">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="sectino-intro">
						<h2 class="section-heading gr-heading">关于我们</h2>
						<p>我们以坚持优质服务的理念赢得客户的信赖，顾问培训，实施方法论，客户关怀中心，我们坚持着“打造国际品牌，成就百年捷瑞”的经营理念。</p>
					</div>
				</div>
				<div class="col-md-12">
					<div class="about-wrap">
						<ul>
							<c:forEach items="${aboutUs }" var="a" varStatus="status"> 
								<c:if test="${status.count %2 != 0}">
									<li class="ab-single clearfix">							
										<div class="col-md-6 col-sm-6">
											<img src="${pageContext.request.contextPath}/images/gallery/${a.img }"/>
										</div>
										<div class="col-md-6 col-sm-6">
											<div class="ab-content">
											<a href="${pageContext.request.contextPath}/article/findArticleByIndex.action?id=${a.id}"><h4 style="white-space:nowrap;overflow:hidden;text-overflow:ellipsis; display:block;">${a.title }</h4></a>
											    <p style="overflow: hidden;width: 360px;height: 210px;text-overflow:ellipsis;text-overflow:ellipsis; display:block;">${a.paper }</p>										
											</div>
										</div>							
									</li>	
								</c:if>
								<c:if test="${status.count %2 == 0}">
									<li class="ab-single clearfix">								
										<div class="col-md-6 col-sm-6">
											<div class="ab-content">
											<a href="${pageContext.request.contextPath}/article/findArticleByIndex.action?id=${a.id}"><h4 style="white-space:nowrap;overflow:hidden;text-overflow:ellipsis; display:block;">${a.title }</h4></a>
											    <p style="overflow: hidden;width: 360px;height: 210px;text-overflow:ellipsis;text-overflow:ellipsis; display:block;">${a.paper }</p>										
											</div>
										</div>	
										<div class="col-md-6 col-sm-6">
											<img src="${pageContext.request.contextPath}/images/gallery/${a.img }"/>
										</div>						
									</li>	
								</c:if>
							</c:forEach>					
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
</c:if>
<!--  ABOUT AREA END -->

<!--  OUR CAUSES AREA START -->
<c:if test="${!empty news }">
	<div class="our-causes-area grey-bg section-padding" id="causes">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="sectino-intro">
						<h2 class="section-heading gr-heading">新闻资讯</h2>
						<p>如果你想给我们一些关于市场行业的反馈信息，请发送电子邮件至454067149@qq.com</p>
					</div>
				</div>
				<!-- Single Cause -->
				<c:forEach items="${news }" var="n">
					<div class="col-md-3 col-sm-6">
						<div class="cause-single">
							<img src="${pageContext.request.contextPath}/images/gallery/${n.img }"/>
							<div class="cause-details">
								<h4 style="white-space:nowrap;overflow:hidden;text-overflow:ellipsis; display:block;">${n.title }</h4>
								<div style="margin-bottom: 20px;width: 100%;height: 45px;overflow:hidden;text-overflow: ellipsis">
									<p>${n.paper }</p>
								</div>	
								<a href="${pageContext.request.contextPath}/article/findArticleByIndex.action?id=${n.id}" class="gr-btn">了解详情</a>						
							</div>
						</div>
					</div>
				</c:forEach>	
			</div>
		</div>
	</div>
</c:if>
<!--  OUR CAUSES AREA END -->

<!--  OUR SERVICE AREA START -->
<div class="service-area" id="service">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="sectino-intro">
					<h2 class="section-heading gr-heading">我们的服务</h2>
					<p>奋斗者是企业最宝贵的财富。企业核心竞争力的载体是团队，企业文化越健康，团队成员对健康文化的践行度越高，企业的核心竞争力就越强。</p>
				</div>
			</div>
			<!-- Single Service -->
			<div class="col-md-4 col-sm-6">
				<div class="service-single">
					<span class="service-icon gr-icon"><i class="fa fa-connectdevelop"></i></span>
					<div class="service-details">
						<h4>Mediation</h4>
						<p>Laculis ullamcorper at est. Curabitur sagittis dignissim espam nibh quis dictum. vehicula sit amet vestibulum congue. Morbi non.</p>
					</div>

				</div>
			</div>
			<!-- Single Service -->
			<div class="col-md-4 col-sm-6">
				<div class="service-single">
					<span class="service-icon gr-icon"><i class="fa fa-building-o"></i></span>
					<div class="service-details">
						<h4>Building Schools</h4>
						<p>Laculis ullamcorper at est. Curabitur sagittis dignissim espam nibh quis dictum. vehicula sit amet vestibulum congue. Morbi non.</p>
					</div>
				</div>
			</div>
			<!-- Single Service -->
			<div class="col-md-4 col-sm-6">
				<div class="service-single">
					<span class="service-icon gr-icon"><i class="fa fa-hand-pointer-o"></i></span>
					<div class="service-details">
						<h4>Volunteering</h4>
						<p>Laculis ullamcorper at est. Curabitur sagittis dignissim espam nibh quis dictum. vehicula sit amet vestibulum congue. Morbi non.</p>
					</div>
				</div>
			</div>
			<!-- Single Service -->
			<div class="col-md-4 col-sm-6">
				<div class="service-single">
					<span class="service-icon gr-icon"><i class="fa fa-align-justify"></i></span>
					<div class="service-details">
						<h4>Relief</h4>
						<p>Laculis ullamcorper at est. Curabitur sagittis dignissim espam nibh quis dictum. vehicula sit amet vestibulum congue. Morbi non.</p>
					</div>
				</div>
			</div>
			<!-- Single Service -->
			<div class="col-md-4 col-sm-6">
				<div class="service-single">
					<span class="service-icon gr-icon"><i class="fa fa-home"></i></span>
					<div class="service-details">
						<h4>Building Home</h4>
						<p>Laculis ullamcorper at est. Curabitur sagittis dignissim espam nibh quis dictum. vehicula sit amet vestibulum congue. Morbi non.</p>
					</div>
				</div>
			</div>
			<!-- Single Service -->
			<div class="col-md-4 col-sm-6">
				<div class="service-single">
					<span class="service-icon gr-icon"><i class="fa fa-ambulance"></i></span>
					<div class="service-details">
						<h4>Medical Hospital</h4>
						<p>Laculis ullamcorper at est. Curabitur sagittis dignissim espam nibh quis dictum. vehicula sit amet vestibulum congue. Morbi non.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--  OUR SERVICE AREA END -->

<!-- PURE FUN AREA START -->
<section id="gallery" class="pure-fun-area gr-fun section-padding" style="background-image: url(images/funbg.jpg)">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="sectino-intro">
					<h2 class="section-heading">成功案例</h2>
					<p>面对客户，具有敏锐洞察力和感染力的工程商人 ；吃苦耐劳善于赢得客户信赖的交付经理 ；敢立军令状的研发团队 ；到处涌现感动客户的英雄支持团队。</p>
				</div>
			</div>
			<div class="col-md-12">
				<div class="p-fun-wrap">
					<div class="single-fun">
						<i class="fa fa-heart"></i>
						<h5>潜藏用户</h5>
						<span class="counter">6850</span>
					</div>
					<div class="single-fun">
						<i class="fa fa-users"></i>
						<h5>不断增长的客户</h5>
						<span class="counter">6445</span>
					</div>
					<div class="single-fun">
						<i class="fa fa-home"></i>
						<h5>固定用户</h5>
						<span class="counter">1556</span>
					</div>
					<div class="single-fun">
						<i class="fa fa-money"></i>
						<h5>营业额</h5>
						<span class="counter">12000</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- PURE FUN AREA END -->

<!--  OUR TEAM AREA START -->
<c:if test="${!empty teams}">
	<div class="our-team section-padding gr-team" id="team">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="sectino-intro">
						<h2 class="section-heading gr-heading">我们的创新团队</h2>
						<p>永远向前，永不放弃，一切皆有可能。</p>
					</div>
				</div>
				<c:forEach items="${teams }" var="t">
					<!-- Team Member -->
					<div class="col-md-3 col-sm-6">
						<div class="team-member">
							<div class="member-thumb">
								<img src="${pageContext.request.contextPath}/images/gallery/${t.img }"/>
							</div>
							<div class="cause-details">
								<h4 style="white-space:nowrap;overflow:hidden;text-overflow:ellipsis; display:block;">${t.nickname }</h4>
								<div style="margin-bottom: 20px;width: 100%;height: 45px;overflow:hidden;text-overflow: ellipsis">
									<p>${t.dictum }</p>
								</div>
								<ul class="gr-member-social">
									<li><a href="#"><i class="fa fa-facebook"></i></a>
									</li>
									<li><a href="#"><i class="fa fa-twitter"></i></a>
									</li>
									<li><a href="#"><i class="fa fa-google-plus"></i></a>
									</li>
									<li><a href="#"><i class="fa fa-linkedin"></i></a>
									</li>
								</ul>
							</div>
						</div>
					</div>	
				</c:forEach>
			</div>
		</div>
	</div>
</c:if>
<!--  OUR TEAM AREA END -->

<!--  TESTIMONIAL AREA START -->
<c:if test="${!empty admins }">
	<div class="testimonial-area gr-overly" id="testimonial" style="background-image: url(images/testimonialbg.jpg)">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="sectino-intro">
						<h2 class="section-heading">谨言</h2>
					</div>
				</div>
				<div class="col-md-12">
					<div class="testimonial-wrap owl-carousel owl-theme">
						<c:forEach items="${admins }" var="ad">
							<!-- Single Quote -->
							<div class="single-quote">
								<div class="quote-thumb">
									<img src="${pageContext.request.contextPath}/images/gallery/${ad.img }"/>
								</div>
								<p>${ad.dictum }</p>
								<h5>${ad.nickname }</h5>
								<span>${ad.sex }</span>
							</div>		
						</c:forEach>					
					</div>
					<!-- Testimonial Wrap End -->
				</div>
			</div>
		</div>
	</div>
</c:if>
<!--  TESTIMONIAL AREA END -->

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

</body>

</html>
