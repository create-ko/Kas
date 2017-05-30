<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Raspberry Pi KAS</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link href="http://fonts.googleapis.com/earlyaccess/hanna.css" rel='stylesheet' type='text/css'>
  
  <link href="<c:url value="/resources/main/bootstrap/css/bootstrap.min.css" />" rel="stylesheet"  >
  
  <!-- Font Awesome -->
  <link href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" />" rel="stylesheet">
  <!-- Ionicons -->
  <link href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css" />" rel="stylesheet" >
  <!-- Theme style -->
  <link href="<c:url value="/resources/main/css/AdminLTE.min.css" />" rel="stylesheet" >

    <%-- <link href="<c:url value="/resources/main/css/AdminLTE.css" />" rel="stylesheet"  > --%>
    <link href="<c:url value="/resources/main/bootstrap/css_login/bootstrap-theme.css" />" rel="stylesheet"  >
    <link href="<c:url value="/resources/main/bootstrap/css_login/bootstrap-theme.min.css" />" rel="stylesheet"  >
    
    <link href="<c:url value="/resources/main/bootstrap/css/dist/css/bootstrap.css" />" rel="stylesheet"  >
    <link href="<c:url value="/resources/main/bootstrap/css/less/bootstrap.min.css" />" rel="stylesheet"  >
    
  <%-- <link href="<c:url value="/resources/main/css/skins/skin-blue.min.css" />" rel="stylesheet"  > --%>

<!-- <style>
            .dragAndDrop {
                border: 2px dashed #92AAB0;
                width: 230px;
                height: 500px;
                color: #92AAB0;
                vertical-align: middle;
                padding: 10px 0px 10px 10px;
                display: table-cell;
            }
</style> -->
  
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
<body class="hold-transition skin-blue sidebar-mini" style="font-family:'Hanna',sans-serif">
<div class="wrapper" style="background-color:#ecf0f5">

  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="<c:url value="/main" />" class="logo" style="background-color:#367fa9; color:white">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>K</b>AS</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>K</b>AS</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation" style="background-color:#3c8dbc">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button" style="color:white">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <!-- User Account Menu -->
          <li class="dropdown user user-menu">
            <!-- Menu Toggle Button -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <!-- The user image in the navbar-->
              <img src="<c:url value="/resources/main/images/userface.png" />" class="user-image" alt="User Image">
              <!-- hidden-xs hides the username on small devices so only the image appears. -->
              <span class="hidden-xs" style="color:white">KOSEUNGHEE</span>
            </a>
            <ul class="dropdown-menu">
              <!-- The user image in the menu -->
              <li class="user-header">
                <img src="<c:url value="/resources/main/images/userface.png" />" class="img-circle" alt="User Image">

                <p style="color:blue">
                  Kim Hyerin and Ko SeungHee - web Develop
                  <small>Member Since June. 2017</small>
                </p>
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
  <aside class="main-sidebar" style="background-color:#222d32">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar" style="background-color:#222d32">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="<c:url value="/resources/main/images/userface.png" />" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info" style="color:#fff">
          <p>KOSEUNGHEE</p>
          <!-- Status -->
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>

      <!-- search form (Optional) -->
      <form action="/main/search" method="post" class="sidebar-form" style="border-radius:3px ; border:1px solid #374850; margin:10px 10px; overflow:hidden; text-overflow:clip">
        <div class="input-group">
          <input type="text" name="search" class="form-control" placeholder="Search..." style="background-color:#374850">
              <span class="input-group-btn" style="width:1%; display:table-cell">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu">
        <li class="header" style="color:#4b646f; size:30px">목록</li>
        <!-- Optionally, you can add icons to the links -->
        <li class="active">
        <form action="/all_list" method="post">
        <button class="btn btn-default" type="submit" name="all_list" style="color:#fff; background-color:#222d32; width:230px; text-align: center; padding: 10px 0px 10px 10px;"><i class="fa fa-link" style="color:#fff"></i> <span>전체보기</span></button>
        </form>
        </li>
        <li class="active">
        <form action="/pic_list" method="post">
        <button class="btn btn-default" type="submit" name="pic_list" style="color:#fff; background-color:#222d32; width:230px; text-align: center; padding: 10px 0px 10px 10px;"><i class="fa fa-link" style="color:#fff"></i> <span>사진</span></button>
        </form>
        </li> 
        
        <li class="active">
        <form action="/movie_list" method="post">
        <button class="btn btn-default" type="submit" name="movie_list" style="color:#fff; background-color:#222d32; width:230px; text-align: center; padding: 10px 0px 10px 10px;"><i class="fa fa-link" style="color:#fff"></i> <span>동영상</span></button>
        </form>
        </li>
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>
	
        
<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="background-color:#ecf0f5" >
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        KAS
        <small>Spring Framework Project</small>
      </h1>
    </section>
<!-- Drag and Drop -->
			<div class=dragAndDrop>			
			
				<div class="btn_go_control">
					<form action="/main" method="post" enctype="multipart/form-data">
						<input type="file" name="uploadfile" class="btn btn-default"  style="float:left ;margin:5px">
						<input type="submit" value="upload" class="btn btn-default"  style="float:left ; margin:6px">
					</form>
				</div>
				
				<form action="/file_control" method="get">
				 <button type="submit" name="download" class="btn btn-default"  style="float:left ; margin:6px">Download</button>
				 <button type="submit" name="delete" class="btn btn-default"  style="float:left ; margin:6px">Delete</button>
				 <button type="submit" name="join" class="btn btn-default"  style="float:left ; margin:6px">JoinFolder</button>
				 <button type="submit" id="newFolder" name="newFolder" class="btn btn-default" onClick="btn_js_prompt_click()" style="float:left ; margin:6px">New Folder</button>
				<br><br><br>
	
      <!-- Your Page Content Here -->
		<div>
			<c:if test="${ !empty list }"> 
				<c:forEach items="${list}" var="list">
				<div style="float:left">
				<input id="${ list.fileName }" type="checkbox" name="fileName" value="${ list.fileName }" class="thumbnail white" style="float:left ">
				 <div class="row" style="border:1px solid #d2cbcb; float:left; display:inline-block ; width:156px ; height:156px; display:block ; margin:5px; padding-bottom:30px ; padding-top: 30px">
				 <div style="padding-left:43px">
				 <label for="${ list.fileName }">
					<c:set var="filename" value="${ list.fileName }" /> <!-- filename 변수 저장 -->
					<c:set var="fileNm" value="${fn:toLowerCase(filename)}" /> <!-- 확장자명이 대문자일 경우 소문자로 파일을 변경한다. -->
					
					<c:forTokens var="token" items="${fileNm }" delims="." varStatus="status">
					<c:if test="${status.last }"> <!-- 확장자 명을 가지고 if문 시행 -->
					<c:choose>
					
					<c:when test="${token eq 'word' || token eq 'docx'}">
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
					
					<c:when test="${token eq 'smi' || token eq 'srt' }">
					<img src="/resources/main/images/smi.png" alt="${filename }" />
					</c:when> 
					
					<c:when test="${!token }">
					<img src="/resources/main/images/folder.png" alt="${filename }" />
					</c:when> 
					
					<c:otherwise>
					<img src="/resources/main/images/basic.png" alt="${filename }" /> 
					</c:otherwise>
					</c:choose>  
					</c:if>
					</c:forTokens>
					</label>
					</div>
				</div>
				<p style="text-align:center; margin-top:1px ; margin-left:18px;width:156px"> ${ list.fileName }</p>
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
  <div class="navbar-fixed-bottom" style="background-color:#fff; border-top :1px solid #d2d6de ;width:100% ">
    <!-- To the right --> 
    <div class="pull-right hidden-xs">
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
              <i class="menu-icon fa fa-leaf bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Team Name : KAS</h4>
                <p>Team Member1 : ko seung hee</p>
                <p>Team Member2 : kim hye rin</p>
              </div>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <ul class="control-sidebar-menu">
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
  <!-- Drag and Drop ajax  -->
  <script type="text/javascript">
  $(document).ready(function(){
      var objDragAndDrop = $(".dragAndDrop");
       
      $(document).on("dragenter",".dragAndDrop",function(e){
          e.stopPropagation();
          e.preventDefault();
      });
      $(document).on("dragover",".dragAndDrop",function(e){
          e.stopPropagation();
          e.preventDefault();
      });
      $(document).on("drop",".dragAndDrop",function(e){
          e.preventDefault();
          var files = e.originalEvent.dataTransfer.files;
       
          handleFileUpload(files,objDragAndDrop);
          
      });
       
      $(document).on('dragenter', function (e){
          e.stopPropagation();
          e.preventDefault();
      });
      $(document).on('dragover', function (e){
        e.stopPropagation();
        e.preventDefault();
      });
      $(document).on('drop', function (e){
          e.stopPropagation();
          e.preventDefault();
      });
       
      function handleFileUpload(files,obj)
      {
         for (var i = 0; i < files.length; i++) 
         {
              var fd = new FormData();
              fd.append('file', files[i]);
              var status = new createStatusbar(obj); //Using this we can set progress.
              status.setFileNameSize(files[i].name,files[i].size);
              sendFileToServer(fd);
         }
      }

      function createStatusbar(obj){
          this.filename = $("<div class='filename'></div>").appendTo(this.statusbar);
          this.size = $("<div class='filesize'></div>").appendTo(this.statusbar);
          obj.after(this.statusbar);
          this.setFileNameSize = function(name,size){
              var sizeStr="";
              var sizeKB = size/1024;
              if(parseInt(sizeKB) > 1024){
                  var sizeMB = sizeKB/1024;
                  sizeStr = sizeMB.toFixed(2)+" MB";
              }else{
                  sizeStr = sizeKB.toFixed(2)+" KB";
              }
          }
      }
       
      
      function sendFileToServer(formData)
      {
          var uploadURL = "/main/dragUpload"; //Upload URL
          var jqXHR=$.ajax({
                  xhr: function() {
                  var xhrobj = $.ajaxSettings.xhr();
                  xhrobj.upload
                  return xhrobj;
              },
              url: uploadURL,
              type: "POST",
              contentType:false,
              processData: false,
              cache: false,
              data: formData,
              success: function(){
            	  location.reload();
              },
              error: function(){
            	  alert("중복입니다.");
            	  location.reload();
              }
          });  
      }
  });

			function btn_js_prompt_click() {
				var name = prompt("폴더명?", "새 폴더");
				if (name != null) {
					alert(name + " 폴더가 생성되었습니다.");
					document.getElementById('newFolder').value = name;
				} else {
					alert("취소버튼을 눌렀습니다.");
				}
			};
		</script>
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
