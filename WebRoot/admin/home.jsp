<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>后台管理系统</title>
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
  <!-- Morris chart -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/bower_components/morris.js/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/bower_components/jvectormap/jquery-jvectormap.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/bower_components/bootstrap-daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <!-- header以及右侧导航 -->
  <jsp:include page="top.jsp"></jsp:include>
  <!-- ./header以及右侧导航 -->
  
  <div class="content-wrapper">
  	  <!-- Content Header (Page header) -->
	  <section class="content-header"></section>
	  
	  <!-- Main content -->
      <section class="content">
	      <!-- Small boxes (Stat box) -->
	      <div class="row" style="margin-top: 20px;">
	        <div class="col-lg-3 col-xs-6">
	          <!-- small box -->
	          <div class="small-box bg-aqua">
	            <div class="inner">
	              <h3 id="banner"></h3>	
	              <p>幻灯总数</p>
	            </div>
	            <div class="icon">
	              <i class="ion ion-bag"></i>
	            </div>
	            <a href="${pageContext.request.contextPath}/admin/pages/other/banner.jsp" class="small-box-footer">查看详情 <i class="fa fa-arrow-circle-right"></i></a>
	          </div>
	        </div>
	        <!-- ./col -->
	        <div class="col-lg-3 col-xs-6">
	          <!-- small box -->
	          <div class="small-box bg-green">
	            <div class="inner">
	              <h3 id="messageCount"></h3>
	
	              <p>留言总数</p>
	            </div>
	            <div class="icon">
	              <i class="ion ion-stats-bars"></i>
	            </div>
	            <a href="${pageContext.request.contextPath}/admin/pages/ly/lylb.jsp" class="small-box-footer">查看详情<i class="fa fa-arrow-circle-right"></i></a>
	          </div>
	        </div>
	        <!-- ./col -->
	        <div class="col-lg-3 col-xs-6">
	          <!-- small box -->
	          <div class="small-box bg-yellow">
	            <div class="inner">
	              <h3 id="userCount"></h3>
	
	              <p>使用用户</p>
	            </div>
	            <div class="icon">
	              <i class="ion ion-person-add"></i>
	            </div>
	            <a href="${pageContext.request.contextPath}/admin/pages/user/yhlb.jsp" class="small-box-footer">查看详情<i class="fa fa-arrow-circle-right"></i></a>
	          </div>
	        </div>
	        <!-- ./col -->
	        <div class="col-lg-3 col-xs-6">
		          <!-- small box -->
		          <div class="small-box bg-red">
		            <div class="inner">
		              <h3 id="articleCount"></h3>
		
		              <p>文章总数</p>
		            </div>
		            <div class="icon">
		              <i class="ion ion-pie-graph"></i>
		            </div>
		            <a href="${pageContext.request.contextPath}/admin/pages/nrgl/nrlb.jsp" class="small-box-footer">查看详情<i class="fa fa-arrow-circle-right"></i></a>
		          </div>
		        </div>
		     <!-- ./col -->
		     </div>
		     <!-- /.row -->
		     
		     <!-- 幻灯列表 -->
		     <div class="row" style="margin-top: 50px;">
		        <div class="col-xs-12">
		         	<div class="box">
			         	<div class="box-header">
			              <h3 class="box-title">幻灯列表</h3>
			            </div>
			            <!-- /.box-header -->
			            <div class="box-body">
			              <table id="example1" class="table table-bordered table-striped">
			                <thead>
				                <tr>
				                  <th>序号</th>
				                  <th>图片</th>
				                  <th>标题</th>
				                  <th>简介</th>
				                  <th>链接</th>		                                    
				                  <th>操作</th>   
				                </tr>     
			                </thead>
			               <tbody></tbody>           
			              </table>
			            </div>
			            <!-- /.box-body -->
		          </div>
		          <!-- /.box -->
		        </div>
		        <!-- /.col -->
		      </div>
		      <!-- /.row -->
	  </section>
	  
  </div>
  
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>版本</b> 2.4.0
    </div>
    <strong>Copyright &copy; 2014-2016 <a href="https://www.dhboy.top">Dhboy工作室</a>.</strong>版权所有
  </footer>
</div>

<!-- jQuery 3 -->
<script src="${pageContext.request.contextPath}/admin/bower_components/jquery/dist/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="${pageContext.request.contextPath}/admin/bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="${pageContext.request.contextPath}/admin/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="${pageContext.request.contextPath}/admin/bower_components/raphael/raphael.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/bower_components/morris.js/morris.min.js"></script>
<!-- Sparkline -->
<script src="${pageContext.request.contextPath}/admin/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="${pageContext.request.contextPath}/admin/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="${pageContext.request.contextPath}/admin/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="${pageContext.request.contextPath}/admin/bower_components/moment/min/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="${pageContext.request.contextPath}/admin/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="${pageContext.request.contextPath}/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="${pageContext.request.contextPath}/admin/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath}/admin/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/admin/dist/js/adminlte.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="${pageContext.request.contextPath}/admin/dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/admin/dist/js/demo.js"></script>
<!-- mDataTables -->
<script src="${pageContext.request.contextPath}/admin/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>

<script type="text/javascript">
    var url = '${pageContext.request.contextPath}/index/getCount.action';
	$.post(url,function(data){	
		$("#articleCount").html(data.articleCount);
		$("#userCount").html(data.userCount);
		$("#messageCount").html(data.messageCount);
		$("#banner").html(data.banner);
	});
	
	$(function () {
    var table = $('#example1').DataTable({
      'paging'      : false,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : true,
      "ajax":'${pageContext.request.contextPath}/other/findUserList.action',
      'pageLength': 7,
      'columns': [{
	        "data": null,
	    },{
	        "data": "img",  
	        "render": function(data, type, row, meta) {
	           return '<img width="100px" height="40px" src="${pageContext.request.contextPath}/images/slider/'+row.img+'"/>';
	        }	     
	    },{
	        "data": "title"
	    },{
	        "data": "p"
	    },{
	        "data": "url",
	        "render": function(data, type, row, meta) {
            	//添加链接
	            return '<a href="'+row.url+'">'+row.url+'</a>'
	        }	        
	    },{	        
	    	"data": "id",
	        "render": function(data, type, row, meta) {
            	//添加按钮
	            return '<a href="${pageContext.request.contextPath}/other/getBannerById.action?id='+row.id+'" style="margin-right: 10px;">修改</a>'
	        }
	    }]
    });
    	    
    //添加序号
    table.on('order.dt search.dt',
	function() {
	    table.column(0, {
	        "search": 'applied',
	        "order": 'applied'
	    }).nodes().each(function(cell, i) {
	        cell.innerHTML = i + 1;
	    });
	}).draw(); 
  });
</script>
</body>
</html>
