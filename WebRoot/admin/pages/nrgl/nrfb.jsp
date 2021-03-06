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
	                         内容发布
	        <small>请在这里发表内容</small>
	      </h1>
	      <ol class="breadcrumb">
	        <li><a href="#"><i class="fa fa-dashboard"></i>导航列表</a></li>
	        <li><a href="#">内容管理</a></li>
	        <li class="active">内容发布</li>
	      </ol>
	    </section>
	
	    <!-- Main content -->
	    <section class="content">
	    	<form action="${pageContext.request.contextPath}/article/addArticle.action" method="post">
	    		<!-- 内容编辑器 -->
	    		<div class="row">
			        <div class="col-md-12">
			          <div class="box box-info">
			            <div class="box-header">
			              <h3 class="box-title">内容发布
			                <small>请填写您要发布内容</small>
			              </h3>		              
			              <!-- tools box -->
			              <div class="pull-right box-tools">
			                <button type="reset" class="btn btn-info btn-sm">
			                  	重新填写</button>
			                <button type="submit" class="btn btn-info btn-sm">
			                  	确认提交</button>
			              </div>
			              <!-- /. tools -->
			            </div>
			            <!-- /.box-header -->
			            <div class="box-body pad">	
			            	<label>栏目</label>
			                <select class="form-control select2" style="width: 100%;" name="c_id">
			                  <option selected="selected" value="1">企业文化</option>
			                  <option value="2">行业动态</option>
			                  <option value="3">市场活动</option>
			                  <option value="4">SBO</option>
			                  <option value="5">SAO</option>
			                  <option value="6">SAP BI</option>
			                  <option value="7">SAP WEB+</option>
			                  <option value="8">技术支持</option>
			                  <option value="9">资料下载</option>
			                </select>
			                <br><label for="exampleInputFile">缩略图</label>
			                <input type="file" style="width: 100%;" name="img"/>	 
			                <br><label>标题</label>
			                <input type="text" class="form-control select2" style="width: 100%;" name="title"/>  
			                <br><label>作者</label>
			                <input type="text" class="form-control select2" style="width: 100%;" name="name"/>  
			                <br><label>描述</label>
			                <input type="text" class="form-control select2" style="width: 100%;" name="paper"/>         		
			           	    <br><label>内容</label>
			                <textarea id="editor1" name="editor1" rows="10" cols="80"></textarea>	
			                <input type="hidden" name="u_id" value="${user.id }"/> 
			            </div>
			          </div>
			          <!-- /.box -->        
			        </div>
			        <!-- /.col-->
			      </div>
			      <!-- ./row -->
	    	</form> 
	
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
    CKEDITOR.replace('editor1')
    $('.textarea').wysihtml5()
  })
</script>
</body>
</html>
