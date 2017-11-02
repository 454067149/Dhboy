<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>内容发布</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/dist/css/skins/_all-skins.min.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
	
	<!-- header以及右侧导航 -->
    <jsp:include page="../../top.jsp"></jsp:include>
    <!-- ./header以及右侧导航 -->
	
	<div class="wrapper">
	  <!-- Content Wrapper. Contains page content -->
	  <div class="content-wrapper">
	    <!-- Content Header (Page header) -->
	    <section class="content-header">
	      <h1>
	                          用户管理
	        <small>请在这里添加您详细的用户信息</small>
	      </h1>
	      <ol class="breadcrumb">
	        <li><a href="#"><i class="fa fa-dashboard"></i>导航列表</a></li>
	        <li><a href="#"></a>用户管理</li>
	        <li class="active">添加用户</li>
	      </ol>
	    </section>
		
		<!-- Main content -->
		<section class="content">
			<div class="row">
				<!-- left column -->
		        <div class="col-md-12">
		          <!-- general form elements -->
		          <div class="box box-primary">
		            <div class="box-header with-border">
		              <h3 class="box-title">添加详细用户信息</h3>
		            </div>
		            <!-- /.box-header -->
		            <!-- form start -->
		            <form action="${pageContext.request.contextPath}/user/addUser.action" method="post">
		              <div class="box-body" >
		                <div style="height: 100px;">			               	 	                	
			                <div style="width: 48%;float: left;">
			                  <label for="exampleInputFile">头像</label>
			                  <input type="file" id="exampleInputFile" name="img">				                
			                </div>	
			                <div style="width: 48%;float: right;">
			                  <label>权限</label>
			                  <select class="form-control" name="p_id" value="${userXg.p_id }">
			                  	<option value="1">编辑</option>
			                  	<option value="2">管理员</option>
			                  	<option value="3">超级管理员</option>
			                  </select>	                  
			                </div>	
		                </div>
		                <div style="height: 100px;">			                		 
		                	<div style="width: 48%;float: left;">
			                  <label>账号</label><span id="nam" style="color: red;display: none;"> :用户名已存在</span>
			                  <input id="name" type="text" class="form-control" placeholder="请填写登录名" name="name">		                  
			                </div>
			                <div style="width: 48%;float: right;">
			                  <label>格言</label>
			                  <input type="text" class="form-control" placeholder="请填写您喜欢的格言" name="dictum">		                  
			                </div>
		                </div>  
		              	<div style="height: 100px;">			                		 
		                	<div style="width: 48%;float: left;">
			                  <label>密码</label><span id="pwd3" style="color: red;display: none;"> :两次密码不统一</span>
			                  <input id="pwd1" type="password" class="form-control" placeholder="请填写密码">		                  
			                </div>
			                <div style="width: 48%;float: right;">
			                  <label>确认密码</label>
			                  <input id="pwd2" type="password" class="form-control" placeholder="请填写登录密码"name="pwd">
			                </div>
		                </div>  
		                <div style="height: 100px;">			                		 
		                	<div style="width: 48%;float: left;">
			                  <label>性别</label>
			                  <select class="form-control" name="sex">
			                  	<option value="男">男</option>
			                  	<option value="女">女</option>
			                  </select>	                  
			                </div>
			                <div style="width: 48%;float: right;">
			                  <label>昵称</label>
			                  <input type="text" class="form-control" placeholder="请填写您的昵称" name="nickname">
			                </div>
		                </div>            
		              </div>
		              <!-- /.box-body -->
		              <div class="box-footer" style="padding-right: 15%;padding-left: 15%;">
		                <button type="reset" class="btn btn-primary">重新填写</button>
		                <button type="submit" class="btn btn-primary" style="float: right;">确认添加</button>
		              </div>
		            </form>
		          </div>
		          <!-- /.box -->
		    	</div>
			</div>
		</section>
		<!-- /.content -->
			    
	</div>
	<!-- ./wrapper -->
	<footer class="main-footer">
	    <div class="pull-right hidden-xs">
	      <b>版本</b> 2.4.0
	    </div>
	    <strong>Copyright &copy; 2014-2016 <a href="http://www.dhboy.top">Dhboy工作室</a>.</strong>版权所有
	</footer>
</div>
<!-- jQuery 3 -->
<script src="${pageContext.request.contextPath}/admin/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="${pageContext.request.contextPath}/admin/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath}/admin/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/admin/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/admin/dist/js/demo.js"></script>
<!-- CK Editor -->
<script src="${pageContext.request.contextPath}/admin/bower_components/ckeditor/ckeditor.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="${pageContext.request.contextPath}/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script>
  $(function () {
  	/* 判断两次输入的密码是否一样 */
  	$("#pwd1").on("change", function(){
		if($("#pwd1").val()!=$("#pwd2").val()){
			$("#pwd3").css("display","inline-block");	
		}else{
			$("#pwd3").css("display","none");
		} 
	});
	$("#pwd2").on("change", function(){
		if($("#pwd1").val()!=$("#pwd2").val()){
			$("#pwd3").css("display","inline-block");	
		}else{
			$("#pwd3").css("display","none");
		} 
	});
	
	/* 判读账号是否存在 */
  	$("#name").on("change", function(){
  		var url = '${pageContext.request.contextPath}/user/findUser.action';
  		var pamas = {"name":$("#name").val()};
  		$.post(url,pamas,function(data){
  			if(data.user==1){$("#nam").css("display","inline-block");}else{$("#nam").css("display","none");}
  		},"json");
	});
	
	/* 提交表单时进行验证 */
	$("form").on("submit", function(event) {
	  if($("#pwd3").css("display")!="none"){event.preventDefault();} 
	  if($("#nam").css("display")!="none"){event.preventDefault();} 
	  if($("#name").val()==""){event.preventDefault();}
	});
  })
</script>
</body>
</html>
