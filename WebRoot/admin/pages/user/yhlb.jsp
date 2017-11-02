<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
  <base href="<%=basePath%>">
  <title>用户列表</title>
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
                            用户管理
        <small>更方便的管理您的列表</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> 导航列表</a></li>
        <li><a>用户管理</a></li>
        <li class="active">用户列表</li>
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
	                  <th>头像</th>
	                  <th>账号</th>
	                  <th>密码</th> 
	                  <th>昵称</th> 
	                  <th>性别</th> 
	                  <th>权限</th> 	 
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
      /* "serverSide": true, *///打开后台分页 
      "ajax":'${pageContext.request.contextPath}/user/findUserList.action',
      'pageLength': 7,
      'columns': [{
	        "data": null,
	        "width":"7%"
	    },
	    {
	        "data": "img",
	        "width":"10%",
	        "render": function(data, type, row, meta) {
            //显示图片
            return '<img width="40px" height="40px" src="${pageContext.request.contextPath}/images/user/'+row.img+'"/>';
        }
	    },
	    {
	        "data": "name",
	        "width":"15%"
	    },
	    {
	        "data": "pwd",
	        "width":"30%"
	    },
	    {
	        "data": "nickname",
	        "width":"8%"
	    },
	    {
	        "data": "sex",
	        "width":"10%",        
	    },
	    {
	        "data": "p_id",
	        "width":"10%",
	        "render": function(data, type, row, meta) {
	        	if(row.p_id==1){return '编辑'}else if(row.p_id==2){return '管理员'}else{return '超级管理员'}
	        }
	    },{	        
	    	"data": "id",
	        "width":"10%",
	        "render": function(data, type, row, meta) {
            	//添加按钮
	            return '<a href="${pageContext.request.contextPath}/user/deleteUser.action?id='+row.id+'" style="margin-right: 10px;line-height: 40px">删除</a>'
	                  +'<a href="${pageContext.request.contextPath}/user/findUserById.action?id='+row.id+'">修改</a><a>';
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