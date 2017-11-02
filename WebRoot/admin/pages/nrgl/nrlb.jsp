<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
  <base href="<%=basePath%>">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>内容列表</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="admin/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="admin/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="admin/bower_components/Ionicons/css/ionicons.min.css">
  <!-- mDataTables -->
  <link rel="stylesheet" href="admin/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="admin/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="admin/dist/css/skins/_all-skins.min.css">
  
  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  <style type="text/css">
  	td.highlight {background-color: whitesmoke !important;}
  </style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <!-- header以及右侧导航 -->
  <jsp:include page="../../top.jsp"></jsp:include>
  <!-- ./header以及右侧导航 -->
  
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
                            内容管理
        <small>更方便的管理您的列表</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> 导航列表</a></li>
        <li><a href="#">内容维护</a></li>
        <li class="active">内容管理</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
         	<div class="box">
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
	                <tr>
	                  <th>序号</th>
	                  <th>缩略图</th>
	                  <th>标题</th>
	                  <th>描述</th>
	                  <th>作者</th>
	                  <th>归属栏目</th>
	                  <th>发布日期</th>    	 
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
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs" >
      <b>版本</b> 2.4.0
    </div>
    <strong>Copyright &copy; 2014-2016 <a href="http://www.dhboy.top">Dhboy工作室</a>.</strong>版权所有
  </footer>

</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="admin/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="admin/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- mDataTables -->
<script src="admin/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="admin/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="admin/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="admin/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="admin/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="admin/dist/js/demo.js"></script>
<!-- page script -->
<script>
  $(function () {
    var table = $('#example1').DataTable({
      'paging'      : true,
      'lengthChange': true,
      'searching'   : true,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false,
      "ajax":'${pageContext.request.contextPath}/article/getArticleList.action',
      'pageLength': 4,
      'columns': [{
	        "data": null,
	        "width":"7%"
	    },
	    {
	        "data": "img",
	        "width":"10%",
	        "render": function(data, type, row, meta) {
            //显示图片
            return '<img width="100px" height="80px" src="${pageContext.request.contextPath}/images/gallery/'+row.img+'"/>';
        }
	    },
	    {
	        "data": "title",
	        "width":"15%"
	    },
	    {
	        "data": "paper",
	        "width":"30%",
	    },
	    {
	        "data": "name",
	        "width":"8%"
	    },
	    {
	        "data": "c_id",
	        "width":"10%",
	        "render": function(data, type, row, meta) {
            	//判断栏目名
				if(row.c_id==1){return '企业文化'}else if(row.c_id==2){return '行业动态'}else if(row.c_id==3){return '市场活动'}
	        	else if(row.c_id==4){return 'SBO'}else if(row.c_id==5){return 'SAO'}else if(row.c_id==6){return 'SAP BI'}
	        	else if(row.c_id==7){return 'SAP WEB+'}else if(row.c_id==8){return '技术支持'}else{return '资料下载'}
	        }
	    },
	    {
	        "data": "date",
	        "width":"10%"
	    },{	        
	    	"data": "id",
	        "width":"10%",
	        "render": function(data, type, row, meta) {
            	//添加按钮
	            return '<a href="${pageContext.request.contextPath}/article/getArticle.action?id='+row.id+'" style="margin-right: 10px;line-height: 100px">修改</a><a>'
	            +'<a href="${pageContext.request.contextPath}/article/deleteArticle.action?id='+row.id+'" >删除</a>';
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
  })
  
</script>

</body>
</html>