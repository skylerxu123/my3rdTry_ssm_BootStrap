<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <!-- Twitter meta-->
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:site" content="@pratikborsadiya">
    <meta property="twitter:creator" content="@pratikborsadiya">
    <!-- Open Graph Meta-->
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Vali Admin">
    <meta property="og:title" content="Vali - Free Bootstrap 4 admin theme">
    <meta property="og:url" content="http://pratikborsadiya.in/blog/vali-admin">
    <meta property="og:image" content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png">
    <meta property="og:description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <title>Data Table - Vali Admin</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css">

    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
      .error{
        color: red;
      }
    </style>
  </head>
  <body class="app sidebar-mini rtl">
    <!-- Navbar-->
    <header class="app-header"><a class="app-header__logo" href="index.html">Vali</a>
      <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
      <!-- Navbar Right Menu-->
      <ul class="app-nav">
        <li class="app-search">
          <input class="app-search__input" type="search" placeholder="Search">
          <button class="app-search__button"><i class="fa fa-search"></i></button>
        </li>
        <!--Notification Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Show notifications"><i class="fa fa-bell-o fa-lg"></i></a>
          <ul class="app-notification dropdown-menu dropdown-menu-right">
            <li class="app-notification__title">You have 4 new notifications.</li>
            <div class="app-notification__content">
              <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
                  <div>
                    <p class="app-notification__message">Lisa sent you a mail</p>
                    <p class="app-notification__meta">2 min ago</p>
                  </div></a></li>
              <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-danger"></i><i class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
                  <div>
                    <p class="app-notification__message">Mail server not working</p>
                    <p class="app-notification__meta">5 min ago</p>
                  </div></a></li>
              <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-success"></i><i class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
                  <div>
                    <p class="app-notification__message">Transaction complete</p>
                    <p class="app-notification__meta">2 days ago</p>
                  </div></a></li>
              <div class="app-notification__content">
                <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
                    <div>
                      <p class="app-notification__message">Lisa sent you a mail</p>
                      <p class="app-notification__meta">2 min ago</p>
                    </div></a></li>
                <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-danger"></i><i class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
                    <div>
                      <p class="app-notification__message">Mail server not working</p>
                      <p class="app-notification__meta">5 min ago</p>
                    </div></a></li>
                <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-success"></i><i class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
                    <div>
                      <p class="app-notification__message">Transaction complete</p>
                      <p class="app-notification__meta">2 days ago</p>
                    </div></a></li>
              </div>
            </div>
            <li class="app-notification__footer"><a href="#">See all notifications.</a></li>
          </ul>
        </li>
        <!-- User Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i class="fa fa-user fa-lg"></i></a>
          <ul class="dropdown-menu settings-menu dropdown-menu-right">
            <li><a class="dropdown-item" href="page-user.html"><i class="fa fa-cog fa-lg"></i> Settings</a></li>
            <li><a class="dropdown-item" href="page-user.html"><i class="fa fa-user fa-lg"></i> Profile</a></li>
            <li><a class="dropdown-item" href="page-login.html"><i class="fa fa-sign-out fa-lg"></i> Logout</a></li>
          </ul>
        </li>
      </ul>
    </header>
    <!-- Sidebar menu-->
    <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
    <aside class="app-sidebar">
      <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg" alt="User Image">
        <div>
          <p class="app-sidebar__user-name">John Doe</p>
          <p class="app-sidebar__user-designation">Frontend Developer</p>
        </div>
      </div>
      <ul class="app-menu">
        <li><a class="app-menu__item" href="index.html"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">Dashboard</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">UI Elements</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="bootstrap-components.html"><i class="icon fa fa-circle-o"></i> Bootstrap Elements</a></li>
            <li><a class="treeview-item" href="https://fontawesome.com/v4.7.0/icons/" target="_blank" rel="noopener"><i class="icon fa fa-circle-o"></i> Font Icons</a></li>
            <li><a class="treeview-item" href="ui-cards.html"><i class="icon fa fa-circle-o"></i> Cards</a></li>
            <li><a class="treeview-item" href="widgets.html"><i class="icon fa fa-circle-o"></i> Widgets</a></li>
          </ul>
        </li>
        <li><a class="app-menu__item" href="charts.html"><i class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label">Charts</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">Forms</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="form-components.html"><i class="icon fa fa-circle-o"></i> Form Components</a></li>
            <li><a class="treeview-item" href="form-custom.html"><i class="icon fa fa-circle-o"></i> Custom Components</a></li>
            <li><a class="treeview-item" href="form-samples.html"><i class="icon fa fa-circle-o"></i> Form Samples</a></li>
            <li><a class="treeview-item" href="form-notifications.html"><i class="icon fa fa-circle-o"></i> Form Notifications</a></li>
          </ul>
        </li>
        <li class="treeview is-expanded"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">Tables</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="table-basic.html"><i class="icon fa fa-circle-o"></i> Basic Tables</a></li>
            <li><a class="treeview-item active" href="table-data-table-ref.jsp"><i class="icon fa fa-circle-o"></i> Data Tables</a></li>
          </ul>
        </li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-file-text"></i><span class="app-menu__label">Pages</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="blank-page.html"><i class="icon fa fa-circle-o"></i> Blank Page</a></li>
            <li><a class="treeview-item" href="page-login.html"><i class="icon fa fa-circle-o"></i> Login Page</a></li>
            <li><a class="treeview-item" href="page-lockscreen.html"><i class="icon fa fa-circle-o"></i> Lockscreen Page</a></li>
            <li><a class="treeview-item" href="page-user.html"><i class="icon fa fa-circle-o"></i> User Page</a></li>
            <li><a class="treeview-item" href="page-invoice.html"><i class="icon fa fa-circle-o"></i> Invoice Page</a></li>
            <li><a class="treeview-item" href="page-calendar.html"><i class="icon fa fa-circle-o"></i> Calendar Page</a></li>
            <li><a class="treeview-item" href="page-mailbox.html"><i class="icon fa fa-circle-o"></i> Mailbox</a></li>
            <li><a class="treeview-item" href="page-error.html"><i class="icon fa fa-circle-o"></i> Error Page</a></li>
          </ul>
        </li>
      </ul>
    </aside>
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-th-list"></i> Data Table</h1>
          <p>Table to display analytical data effectively</p>
        </div>
        <ul class="app-breadcrumb breadcrumb side">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item">Tables</li>
          <li class="breadcrumb-item active"><a href="#">Data Table</a></li>
        </ul>
      </div>
      <div class="modal fade " id="userAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title" id="myModalLabel">添加用户</h4>
            </div>
            <div class="modal-body">
              <form class="form-horizontal" id="add_user_form">
                <div class="form-group">
                  <label class="col-sm-2 control-label">姓名:</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="nickname" placeholder="username" id="nickname">
                    <span id="helpBlock" class="help-block"></span>

                  </div>
                </div>
                <div class="form-group">
                  <label  class="col-sm-2 control-label">年龄:</label>
                  <div class="col-sm-10" >
                    <input type="text"  name="age" class="form-control"
                           placeholder="age" id="age">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label">性别</label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <input type="radio" name="sex"  value="0" >
                      男
                    </label>
                    <label class="radio-inline">
                      <input type="radio" name="sex"  value="1"> 女
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label  class="col-sm-2 control-label" >电话:</label>
                  <div class="col-sm-10">
                    <input type="text"  name="phone" class="form-control"
                           placeholder="phone" id="phone">
                  </div>
                </div>
                <div class="form-group">
                  <label  class="col-sm-2 control-label" >地址:</label>
                  <div class="col-sm-10">
                    <input type="text"  name="address" class="form-control"
                           placeholder="address" id="address">
                  </div>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal" id="add_user_form_close">关闭</button>
                  <button type="submit" class="btn btn-primary" id="add_user_form_save">保存</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <div class="tile-body">
              <button type="button" class="btn btn-info" id="user_add_modal">添加用户</button>
              <table id="mytable"></table>
            </div>
          </div>
        </div>
      </div>
    </main>
    <!-- Essential javascripts for application to work-->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="js/plugins/pace.min.js"></script>
    <!-- Page specific javascripts-->
    <!-- Data table plugin-->
    <%--<script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>--%>
    <%--<script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>--%>
    <%--<script type="text/javascript">$('#sampleTable').DataTable();</script>--%>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
    <script type="text/javascript">
      $("#add_user_form").validate({
          rules:{
              nickname:"required",
              age:"required",
              sex:"required",
              phone:"required"
          },
          messages:{
              nickname:"用户名不能为空",
              age:"年龄不能为空",
              sex:"性别不能为空",
              phone:"电话不能为空"
          },
          submitHandler:function () {
              var user_data = $("#add_user_form").serialize();
              var method = $("#myModalLabel").text();
              if(method=="添加用户"){

                  var url = "addUser";
              }else {
                  var url = "modifyUser";
              }
              $.post(url,user_data,function () {
                  alert("操作成功");
                  $("#add_user_form_close").trigger("click");
              });
          }
      });
      $("#user_add_modal").click(function () {
          $("#userAddModal").modal({
              backdrop:"static"
          });
      });
      function delete_user(id) {
          if(confirm("确认删除")){
              var url = "deleteUser?id="+id;
              $.post(url,function () {
                  alert("删除成功");
                  window.location.reload()
              })
          }

      }
      function edit_user(user_json) {
          $("#myModalLabel").text("修改用户");
          $("#nickname").val(user_json.nickname);
          $("#age").val(user_json.age);
          $("#phone").val(user_json.phone);
          $("#address").val(user_json.address);
          $("#add_user_form input[name=sex]").val([user_json.sex]);

          $("#userAddModal").modal({
              backdrop:"static"
          });


      }

        $(function(){

          //初始化表格
          $("#mytable").bootstrapTable({

              //列参数
              columns: [{
                  fileid: 'state', checkbox: true

              },{ field: 'id', title: 'ID' }, { field: 'nickname', title: '用户名' }, { field: 'age', title: '年龄' },

                  { field: 'sex', title: '性别' ,formatter:function (value,row,index) {
                      return (row.sex==0?'男':'女');
                  }},{ field: 'phone', title: '电话' },{ field: 'address', title: '地址' },{title:'操作',formatter:function (value,row,index) {
                      var user_json = JSON.stringify(row);
                      return "<button class='btn btn-info' onclick='edit_user("+user_json+")'>修改</button><button class='btn btn-danger delete_user' onclick='delete_user("+row.id+")'>删除</button>"
                  }} ],
              //要绑定的数据
              //这里绑定的是死数据，如果使用的客户端分页的json格式：[{},{},{}]
              //如果使用的服务端分页,json格式如下：{total:98,rows:[{},{}]}
              //请求地址

              striped:true,
              url: 'users',
              //请求方式
              method: 'post',
//              data: [{ id: 1, name: 'Item 1', price: '$1' }, { id: 2, name: 'Item 2', price: '$2' }, { id: 3, name: 'Item 3', price: '$3' }],
              //打开搜索框
              search: true,
              //按回车键后进行搜索
//              searchOnEnterKey: true,
              //开启分页功能
              pagination: true,
              //第一次加载第一页
              pageNumber: 1,
              //每页显示条数
              pageSize: 5,
              //分页方式：默认客户端分页，修改为服务端分页
              sidePagination: 'server',
              pageList:[3,5,7]
          });
      });
    </script>
    <!-- Google analytics script-->
    <script type="text/javascript">
      if(document.location.hostname == 'pratikborsadiya.in') {
      	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
      	ga('create', 'UA-72504830-1', 'auto');
      	ga('send', 'pageview');
      }
    </script>
  </body>
</html>