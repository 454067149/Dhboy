<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
  <base href="<%=basePath%>">
  <title>用户登录</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="admin/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="admin/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="admin/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="admin/dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="admin/plugins/iCheck/square/blue.css">

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="admin/index.html"><b>后台管理系统</b></a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">欢迎登录后台管理系统</p>

    <form action="${pageContext.request.contextPath}/user/login.action" method="post">
      <div class="form-group has-feedback">
        <input type="text" id="name" class="form-control" placeholder="请输入您的账号" name="name">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
        <span id="nam" style="color: red;display: none;">用户名不存在</span>
      </div>
      <div class="form-group has-feedback" style="margin-top: 30px">
        <input id="pwd" type="password" class="form-control" placeholder="请输入您的密码" name="pwd">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        <span style="color: red;">${pwd }</span>
      </div>
      <div class="row" style="margin-top: 50px">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            <label>
              <input type="checkbox"> 记住密码
            </label>
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" class="btn btn-primary btn-block btn-flat">登 录</button>
        </div>
        <!-- /.col -->
      </div>
    </form>
   </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="admin/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="admin/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="admin/plugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
    
    /* 判读账号是否存在 */
  	$("#name").on("change", function(){
  		var url = '${pageContext.request.contextPath}/user/findUser.action';
  		var pamas = {"name":$("#name").val()};
  		$.post(url,pamas,function(data){
  			if(data.user==0){$("#nam").css("display","inline-block");}else{$("#nam").css("display","none");}
  		},"json");
	});
    
    /* 提交表单时进行验证 */
	$("form").on("submit", function(event) {
	  if($("#pwd").val()==""){event.preventDefault();}
	  if($("#nam").css("display")!="none"){event.preventDefault();} 
	});
    
  });
</script>
</body>
</html>

