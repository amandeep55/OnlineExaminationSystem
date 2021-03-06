<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title> Query </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/metisMenu.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.min.css">
    <!-- amchart css -->
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
    <!-- others css -->
    <link rel="stylesheet" href="assets/css/typography.css">
    <link rel="stylesheet" href="assets/css/default-css.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <!-- modernizr css -->
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- preloader area start -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- preloader area end -->
    <!-- page container area start -->
    <div class="page-container">
        <!-- sidebar menu area start -->
        <div class="sidebar-menu">
           
            <div class="main-menu">
                <div class="menu-inner">
                    <nav>
                        <ul class="metismenu" id="menu">
                         	 <li><a href="teacher_createExam.jsp"><i class="ti-receipt"></i> <span>Create MCQS Exam </span></a></li>
                            <li><a href="teacher_viewExam.jsp"><i class="ti-receipt"></i> <span>View MCQS Exam Questions</span></a></li>
                            <li><a href="teacher_createTextExam.jsp"><i class="ti-receipt"></i> <span>Create Text Exam </span></a></li>
                            <li><a href="teacher_viewTextExam.jsp"><i class="ti-receipt"></i> <span>View Text Exam Questions</span></a></li>
                            <li><a href="teacher_checkAnswers.jsp"><i class="ti-receipt"></i> <span>Check Answers</span></a></li>
                         	<li><a href="teacher_updateTextGrade.jsp"><i class="ti-receipt"></i> <span>Update Text Grade</span></a></li>
                         	<li><a href="teacher_studentsGrade.jsp"><i class="ti-receipt"></i> <span>Students Grades</span></a></li>
                         	<li><a href="teacher_viewQueryAnswer.jsp"><i class="ti-receipt"></i> <span>View Query </span></a></li>
                         	<li><a href="teacher_updateQueryAnswer.jsp"><i class="ti-receipt"></i> <span>Update Query Answer</span></a></li>
                         	
                         </ul>
                    </nav>
                </div>
            </div>
        </div>
        <!-- sidebar menu area end -->
        <!-- main content area start -->
        <div class="main-content">
            <!-- header area start -->
             <div class="page-title-area">
                <div class="row align-items-center">
                    
                    <div class="col-sm-12 clearfix">
                        <div class="user-profile pull-right">
                            <img class="avatar user-thumb" src="assets/images/author/avatar.png" alt="avatar">
                            <h4 class="user-name dropdown-toggle" data-toggle="dropdown">Welcome<i class="fa fa-angle-down"></i></h4>
                            <div class="dropdown-menu">
                                
                                <a class="dropdown-item" href="login.jsp">Log Out</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- header area end -->
            <!-- page title area start -->
            <div class="main-content-inner">
                <!-- sales report area start -->
              <div class="login-box ptb--100"> 
                <form action="Query" method="post">
                    <div class="login-form-head">
                        <h4>Query</h4>
                        
                    </div>
                    <div class="login-form-body">
                    	
	                   	
                        <div class="form-group">
                            <label for="exampleFormControlTextarea1">Answer</label>
    						<textarea class="form-control" id="exampleFormControlTextarea1" rows="6" name="answer"></textarea>
                            <div class="text-danger"></div>
                        </div>
                        
                        
                        
                        
                        
                        <div class="submit-btn-area">
                            <button id="form_submit" type="submit" name="update">Submit <i class="ti-arrow-right"></i></button>
                            
                        </div>
                    </div>
                </form>
            </div>
                
                </div>
            <!-- page title area end -->
            
                <!-- row area start-->
            </div>
        </div>
        <!-- main content area end -->
        <!-- footer area start-->
         <footer>
            <div class="footer-area">
                <p>? Copyright 2021. All right reserved. </p>
            </div>
        </footer>
        <!-- footer area end-->
    </div>
    <!-- page container area end -->
    <!-- offset area start -->
    
    <!-- offset area end -->
    <!-- jquery latest version -->
    <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
    <!-- bootstrap 4 js -->
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/metisMenu.min.js"></script>
    <script src="assets/js/jquery.slimscroll.min.js"></script>
    <script src="assets/js/jquery.slicknav.min.js"></script>

    <!-- start chart js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
    <!-- start highcharts js -->
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <!-- start zingchart js -->
    <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
    <script>
    zingchart.MODULESDIR = "https://cdn.zingchart.com/modules/";
    ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "ee6b7db5b51705a13dc2339db3edaf6d"];
    </script>
    <!-- all line chart activation -->
    <script src="assets/js/line-chart.js"></script>
    <!-- all pie chart -->
    <script src="assets/js/pie-chart.js"></script>
    <!-- others plugins -->
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/scripts.js"></script>
</body>

</html>