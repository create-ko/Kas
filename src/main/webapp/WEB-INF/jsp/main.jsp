<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Raspberry Pi KAS</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link href="<c:url value="/resources/main/bootstrap/css/bootstrap.min.css" />" rel="stylesheet"  >
  <!-- Font Awesome -->
  <link href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" />" rel="stylesheet">
  <!-- Ionicons -->
  <link href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css" />" rel="stylesheet" >
  <!-- Theme style -->
  <link href="<c:url value="/resources/main/css/AdminLTE.min.css" />" rel="stylesheet" >

    <link href="<c:url value="/resources/main/bootstrap/css/AdminLTE.css" />" rel="stylesheet"  >
    <link href="<c:url value="/resources/main/bootstrap/css/bootstrap-theme.css" />" rel="stylesheet"  >
    <link href="<c:url value="/resources/main/bootstrap/css/bootstrap-theme.min.css" />" rel="stylesheet"  >
    
    <link href="<c:url value="/resources/main/bootstrap/css/dist/css/bootstrap.css" />" rel="stylesheet"  >
    <link href="<c:url value="/resources/main/bootstrap/css/less/bootstrap.min.css" />" rel="stylesheet"  >
    
  <link href="<c:url value="/resources/main/bootstrap/css/skins/skin-blue.min.css" />" rel="stylesheet"  >

</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="<c:url value="/main" />" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>K</b>AS</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>K</b>AS</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <li class="dropdown messages-menu">
            <!-- Menu toggle button -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success">4</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">upload</li>
              <li>
                <!-- inner menu: contains the messages -->
                <ul class="menu">
                  <li><!-- start message -->
                    <a href="#">
                      <div class="pull-left">
                        <!-- User Image -->
                        <img src="<c:url value="/resources/main/images/userface.jpg" />" class="img-circle" alt="User Image">
                      </div>
                      <!-- Message title and timestamp -->
                      <h4>
                        Support Team
                        <small><i class="fa fa-clock-o"></i> 5 mins</small>
                      </h4>
                      <!-- The message -->
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <!-- end message -->
                </ul>
                <!-- /.menu -->
              </li>
              <li class="footer"><a href="#">See All Messages</a></li>
            </ul>
          </li>
          <!-- /.messages-menu -->

          <!-- Notifications Menu -->
          <li class="dropdown notifications-menu">
            <!-- Menu toggle button -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning">10</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 10 notifications</li>
              <li>
                <!-- Inner Menu: contains the notifications -->
                <ul class="menu">
                  <li><!-- start notification -->
                    <a href="#">
                      <i class="fa fa-users text-aqua"></i> 5 new members joined today
                    </a>
                  </li>
                  <!-- end notification -->
                </ul>
              </li>
              <li class="footer"><a href="#">View all</a></li>
            </ul>
          </li>
          <!-- Tasks Menu -->
          <li class="dropdown tasks-menu">
            <!-- Menu Toggle Button -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-flag-o"></i>
              <span class="label label-danger">9</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 9 tasks</li>
              <li>
                <!-- Inner menu: contains the tasks -->
                <ul class="menu">
                  <li><!-- Task item -->
                    <a href="#">
                      <!-- Task title and progress text -->
                      <h3>
                        Design some buttons
                        <small class="pull-right">20%</small>
                      </h3>
                      <!-- The progress bar -->
                      <div class="progress xs">
                        <!-- Change the css width attribute to simulate progress -->
                        <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">20% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- end task item -->
                </ul>
              </li>
              <li class="footer">
                <a href="#">View all tasks</a>
              </li>
            </ul>
          </li>
          <!-- User Account Menu -->
          <li class="dropdown user user-menu">
            <!-- Menu Toggle Button -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <!-- The user image in the navbar-->
              <img src="<c:url value="/resources/main/images/userface.jpg" />" class="user-image" alt="User Image">
              <!-- hidden-xs hides the username on small devices so only the image appears. -->
              <span class="hidden-xs">KOSEUNGHEE</span>
            </a>
            <ul class="dropdown-menu">
              <!-- The user image in the menu -->
              <li class="user-header">
                <img src="<c:url value="/resources/main/images/userface.jpg" />" class="img-circle" alt="User Image">

                <p>
                  Alexander Pierce - Web Developer
                  <small>Member since Nov. 2012</small>
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body">
                <div class="row">
                  <div class="col-xs-4 text-center">
                    <a href="#">Followers</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Sales</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Friends</a>
                  </div>
                </div>
                <!-- /.row -->
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="#" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="<c:url value="/resources/main/images/userface.jpg" />" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>KOSEUNGHEE</p>
          <!-- Status -->
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>

      <!-- search form (Optional) -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu">
        <li class="header">목록</li>
        <!-- Optionally, you can add icons to the links -->
        <li class="active"><a href="#"><i class="fa fa-link"></i> <span>파일</span></a></li>
        <li><a href="#"><i class="fa fa-link"></i> <span>사진</span></a></li>
        <li class="treeview">
          <a href="#"><i class="fa fa-link"></i> <span>동영상</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="#">기본 동영상</a></li>
            <li><a href="#">토렌트</a></li>
          </ul>
        </li>
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        KAS
        <small>Spring Framework Project</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <!-- 상단으로이동, 하단으로이동 -->
    
    <div class="content" >
				<div class="btn_go_control">
					<form action="/main" method="post" enctype="multipart/form-data">
						<input type="file" name="uploadfile"> <input type="submit"
							value="upload">
					</form>
				</div>
				<form action="/file_down" method="get">
					<button type="submit" >Download</button>

      <!-- Your Page Content Here -->
		<div>
			<c:if test="${ !empty list }"> 
				<c:forEach items="${list}" var="list">

				 <div class="row" style="border:1px solid #d2cbcb; float:left; display:inline-block ; width:156px ; height:156px; display:block ; margin:5px; padding-bottom:30px; padding-left:28px"> <!--데스크탑, 모바일 -->
					<c:set var="filename" value="${ list.fileName }" /> <!-- filename 변수 저장 -->
					<c:set var="fileNm" value="${fn:toLowerCase(filename)}" /> <!-- 확장자명이 대문자일 경우 소문자로 파일을 변경한다. -->
					
					<c:forTokens var="token" items="${fileNm }" delims="." varStatus="status">
					<c:if test="${status.last }"> <!-- 확장자 명을 가지고 if문 시행 -->
					<c:choose>
					
					<c:when test="${token eq 'word' }">
					<img src="/resources/main/images/word.png" alt="${filename }" />
					</c:when>
					
					<c:when test="${token eq 'html' }">
					<img src="/resources/main/images/html.png" alt="${filename }" />
					</c:when>
					
					<c:when test="${token eq 'zip' }">
					<img src="/resources/main/images/zip.png" alt="${filename }" />
					</c:when>
					
					<c:when test="${token eq 'tar' }">
					<img src="/resources/main/images/tar.png" alt="${filename }" />
					</c:when>
					
					<c:when test="${token eq 'mp3' }">
					<img src="/resources/main/images/music.png" alt="${filename }" />
					</c:when>
					
					<c:when test="${token eq 'torrent' }">
					<img src="/resources/main/images/torrent.png" alt="${filename }" />
					</c:when>
					
					<c:when test="${token eq 'txt' }">
					<img src="/resources/main/images/txt.png" alt="${filename }" />
					</c:when>
					
					<c:when test="${token eq 'jpg' }">
					<img src="/resources/main/images/jpg.png" alt="${filename }" />
					</c:when>
					
					<c:when test="${token eq 'ttf' }">
					<img src="/resources/main/images/ttf.png" alt="${filename }" />
					</c:when>
					
					<c:when test="${token eq 'gif' }">
					<img src="/resources/main/images/gif.png" alt="${filename }" />
					</c:when>
					
					<c:when test="${token eq 'flash' }">
					<img src="/resources/main/images/flash.png" alt="${filename }" />
					</c:when>
					
					<c:when test="${token eq 'fireworks' }">
					<img src="/resources/main/images/fireworks.png" alt="${filename }" />
					</c:when>
					
					<c:when test="${token eq 'avi' || token eq 'mkv' || token eq 'mp4' || token eq 'mov' || token eq 'wmv' || token eq 'mpeg'}">
					<img src="/resources/main/images/video.png" alt="${filename }" />
					</c:when>
					
					<c:when test="${token eq 'hwp' }">
					<img src="/resources/main/images/han.png" alt="${filename }" />
					</c:when>
					
					<c:when test="${token eq 'xls' || token eq 'xlsx' }">
					<img src="/resources/main/images/excel.png" alt="${filename }" />
					</c:when>
					
					<c:when test="${token eq 'jpg' || token eq 'gif' || token eq 'png' || token eq 'bmp' }">
					<img src="/resources/main/images/png.png" alt="${filename }" />
					</c:when>
					
					<c:when test="${token eq 'pdf'}">
					<img src="/resources/main/images/pdf.png" alt="${filename }" />
					</c:when>
					
					
					<c:when test="${token eq 'ppt' }">
					<img src="/resources/main/images/ppt.png" alt="${filename}" /> 
					</c:when>
					
					<c:otherwise>
					<img src="/resources/main/images/basic.png" alt="${filename }" /> 
					</c:otherwise> 
					</c:choose>  
					</c:if>
					</c:forTokens>
					<input type="checkbox" name="fileName" value="${ list.fileName }" class="thumbnail white">${ list.fileName }
				</div>
			
			</c:forEach>
			</c:if>
		</div>
 		</form> 
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

 <!-- Main Footer -->
  <div class="main-footer" style="position: fixed!important">
    <!-- To the right -->
    <div class="pull-right hidden-xs" >
      PROJECT
    </div>
    <!-- Default to the left -->
    <strong>KAS_PROJECT &copy; 2017 <a href="<c:url value="/main" />">Company</a>.</strong> HYERIN
  </div>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane active" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">WEB project</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:;">
              <i class="menu-icon fa fa-leaf bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Team Name : KAS</h4>

                <p>Team Member1 : ko seung hee</p>
                <p>Team Member2 : kim hye rin</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:;">
              <h4 class="control-sidebar-subheading">
           남은 용량       /   총 용량
                <span class="pull-right-container">
                  <span class="label label-danger pull-right">70%</span>
                </span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">설정 관련 피드백</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              연락처

            </label>

            <p>
              010)0000-0000
            </p>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 2.2.3 -->
<script type="text/javascript" src="<c:url value= "/resources/main/jQuery/jquery-2.2.3.min.js" />" ></script>
<!-- Bootstrap 3.3.6 -->
<script src="<c:url value="/resources/main/bootstrap/js/bootstrap.min.js" />" ></script>
<!-- AdminLTE App -->
<script type="text/javascript" src="<c:url value="/resources/main/js/app.min.js" />" ></script>

<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. Slimscroll is required when using the
     fixed layout. -->
</body>
</html>
