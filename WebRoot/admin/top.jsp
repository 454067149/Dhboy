<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${empty user }">
	<jsp:forward page="index.jsp"></jsp:forward>
</c:if>
<header class="main-header">
  <!-- Logo -->
  <a href="${pageContext.request.contextPath}/admin/home.jsp" class="logo">
    <!-- mini logo for sidebar mini 50x50 pixels -->
    <span class="logo-mini">管理</span>
    <!-- logo for regular state and mobile devices -->
    <span class="logo-lg">后台管理系统</span>
  </a>
  <!-- Header Navbar: style can be found in header.less -->
  <nav class="navbar navbar-static-top">
    <!-- Sidebar toggle button-->
    <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
      <span class="sr-only">隐藏</span>
    </a>
 	  <div class="navbar-custom-menu">
      <ul class="nav navbar-nav">
        <!-- User Account: style can be found in dropdown.less -->
        <li class="dropdown user user-menu">
          <a href="${pageContext.request.contextPath}/user/edit.action" title="注销">
            <img src="${pageContext.request.contextPath}/images/user/${user.img}" class="user-image" alt="User Image">
            <span class="hidden-xs">${user.nickname }</span>
          </a>    
        </li>
      </ul>
    </div>
   </nav>
</header>
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">
    <!-- search form -->
    <form action="#" method="get" class="sidebar-form">
      <div class="input-group">
        <input type="text" name="q" class="form-control" placeholder="搜索...">
        <span class="input-group-btn">
           	<button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
        </span>
      </div>
    </form>
    <!-- /.search form -->
    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu" data-widget="tree">
      <li class="header">导航列表</li>
      <li>
        <a href="${pageContext.request.contextPath}/admin/pages/nrgl/nrfb.jsp">
          <i class="fa fa-edit"></i> <span>发布内容</span>
        </a>
      </li>
      <li>
        <a href="${pageContext.request.contextPath}/admin/pages/ly/lylb.jsp">
          <i class="fa fa-list-alt"></i> <span>留言列表</span>
        </a>
      </li>
      <li>
        <a href="${pageContext.request.contextPath}/admin/pages/other/banner.jsp">
          <i class="fa fa-list"></i> <span>幻灯管理</span>
        </a>
      </li>  
      <li class="treeview">
        <a href="#">
          <i class="fa  fa-user"></i> <span>用户管理</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
       	<li><a href="${pageContext.request.contextPath}/admin/pages/user/tjyh.jsp"><i class="fa fa-circle-o"></i> 添加用户</a></li>
          <li class="active"><a href="${pageContext.request.contextPath}/admin/pages/user/yhlb.jsp"><i class="fa fa-circle-o"></i>用户列表</a></li>           
        </ul>
      </li>   
      <li class="treeview">
        <a href="#">
          <i class="fa fa-indent"></i> <span>内容维护</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li><a href="${pageContext.request.contextPath}/admin/pages/nrgl/nrfb.jsp"><i class="fa fa-circle-o"></i> 内容发布</a></li>
          <li><a href="${pageContext.request.contextPath}/admin/pages/nrgl/nrlb.jsp"><i class="fa fa-circle-o"></i> 内容管理</a></li>
        </ul>
      </li> 
      <li class="header">快捷功能</li>
      <li><a href="${pageContext.request.contextPath}/" target="_Blank"><i class="fa fa-circle-o text-red"></i> <span>网站预览</span></a></li>
      <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>警告</span></a></li>
      <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>消息</span></a></li>
    </ul>
  </section>
  <!-- /.sidebar -->
</aside>