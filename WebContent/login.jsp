<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>图书管理系统</title>
      <!-- Bootstrap core CSS -->
      <link type="text/css" href="css/bootstrap.min.css" rel="stylesheet"/>
      <link type="text/css" href="css/font-awesome.min.css" rel="stylesheet"/>
      <link type="text/css" href="css/component.css" rel="stylesheet" />
      <link type="text/css" href="css/base.css" rel="stylesheet"/>
      <script src="js/modernizr.custom.js"></script>
</head>
<body>
		 <div class="cover-all cover-body">
        
               <p class="load-text">Please wait</p>
            </div>
       
   
      <!--fixed navigation-->
      <header>
         <nav id="headNav" class="navbar navbar-default ms-nav-anim navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              
               <a class="navbar-brand ms-logo" href="#">
               <h3 style="color:white; text-align: center; ">图书管理系统</h3>
               </a>
            </div>
       	</nav>
      </header>
      <!--main container-->
      <div id="cbp-so-scroller" class="cbp-so-scroller cbp-scroller-main container-fluid">
         <section id="intro" class="cbp-so-section text-center ss-style-triangles">
            <div class="container-fluid text-center banner-main">
               <div style="margin-top: 200px; ">
                  
                  <h1 style="color: white; font-family: 微软雅黑">欢迎登陆好东软图书管理系统</h1>
                  <br>
                  <br>
                  <br>
                  <br>

						<form action="BookServlet" method="get">
							<input type="hidden" name="flag" value="selectAll">
							<input type="submit" class="btn ban-btn" value="登&nbsp;&nbsp;&nbsp;录" />
							
						</form>
               </div>
            </div>
            <a class="scroll-down"><i class=" fa  fa-chevron-down"></i></a>
         </section>
		</div>


	   <!--  ================================================== -->
      <script src="js/jquery-1.10.2.min.js"></script>
      <script src="js/jquery-migrate-1.2.1.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <script type="text/javascript" src="js/jquery.parallax-1.1.3.js"></script>
      <script src="js/cbpScroller.js"></script>
      <script src="js/classie.js"></script>
      <script src="js/jquery.scrollTo.js"></script>
      <script src="js/jquery.nav.js"></script>
      <script src="js/base.js"></script>
	
			
</body>
</html>