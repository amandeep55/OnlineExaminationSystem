<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Student Grade</title>
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
                         	<li><a href="student_takeExam.jsp"><i class="ti-map-alt"></i> <span>Take Exam</span></a></li>
                         	<li class="active"><a href="student_grades.jsp"><i class="ti-map-alt"></i> <span>Grades</span></a></li>
                       		<li><a href="student_query.jsp"><i class="ti-map-alt"></i> <span>Ask Query</span></a></li>
                       		<li><a href="student_viewQueryAnswer.jsp"><i class="ti-map-alt"></i> <span>View Query Answer</span></a></li>
                       		
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <!-- sidebar menu area end -->
        <!-- main content area start -->
        <div class="main-content">
            <!-- header area start -->
            
            <!-- header area end -->
            <!-- page title area start -->
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
            <!-- page title area end -->
            <div class="main-content-inner">
                <!-- sales report area start -->
              <div class="login-box ptb--100"> 
                <form action="Result" method="post">
                    <div class="login-form-head">
                        <h4>Student Grades</h4>
                        
                    </div>
                    <div class="login-form-body">
                    	<div class="form-gp" >
	                   		<select name="course" class="form-control" id="course">
							    <option value="">Select Course</option>
							    <option value="1">Java Programming</option>
							    <option value="2">Operating System</option>
							    <option value="3">Web Programming</option>
							    <option value="4">Machine Learning</option>
							    
							</select>
	                   	</div>
                       <div class="submit-btn-area">
                            <button id="form_submit" type="submit" name="viewStudent">Submit <i class="ti-arrow-right"></i></button>
                            
                        </div>
                    </div>
                </form>
                
            </div>
            <div class="col-lg-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Hoverable Rows</h4>
                                <div class="single-table">
                                    <div class="table-responsive">
                                        <table class="table table-hover text-center">
                                            <thead class="text-uppercase">
                                                <tr>
                                                    
                                                    <th scope="col">Student Roll Number</th>
                                                    
                                                    <th scope="col">MCQS Result</th>
                                                    <th scope="col">Theory Result</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            	
                                                <c:forEach var="u" items="${listResult}">
                                               		<tr>
                                                    
	                                                    <td><c:out value="${u.rollNumber}" /></td>
	                                                    <td><c:out value="${u.mcqsResult}" /></td>
	                                                    <td><c:out value="${u.textResult}" /></td>
	                                                    
                                                    </tr> 
                                                
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                
                </div>
                <!-- row area start-->
            </div>
        </div>
        <!-- main content area end -->
        <!-- footer area start-->
         <footer>
            <div class="footer-area">
                <p>© Copyright 2021. All right reserved. </p>
            </div>
        </footer>
        <!-- footer area end-->
    </div>
<!--             <div class="login-box ptb--100"> -->
<!--                 <form action="../Question" method="post"> -->
<!--                     <div class="login-form-head"> -->
<!--                         <h4>Create Exam</h4> -->
                        
<!--                     </div> -->
<!--                     <div class="login-form-body"> -->
<!--                     	<div class="form-gp"> -->
<!-- 	                   		<select name="course" class="form-control" id="course"> -->
<!-- 							    <option value="">Select Course</option> -->
<!-- 							    <option value="1">Java Programming</option> -->
<!-- 							    <option value="2">Operating System</option> -->
<!-- 							    <option value="3">Web Programming</option> -->
<!-- 							    <option value="4">Machine Learning</option> -->
							    
<!-- 							</select> -->
<!-- 	                   	</div> -->
<!--                         <div class="form-gp"> -->
<!--                             <label for="exampleInputName1">Question</label> -->
<!--                             <input type="text" id="exampleInputName1" name="question"> -->
<!--                             <i class="ti-user"></i> -->
<!--                             <div class="text-danger"></div> -->
<!--                         </div> -->
<!--                         <div class="form-gp"> -->
<!--                             <label for="exampleInputEmail1">Answer 1</label> -->
<!--                             <input type="text" id="exampleInputName1" name="answer_1"> -->
<!--                             <i class="ti-email"></i> -->
<!--                             <div class="text-danger"></div> -->
<!--                         </div> -->
<!--                         <div class="form-gp"> -->
<!--                             <label for="exampleInputEmail1">Answer 2</label> -->
<!--                             <input type="text" id="exampleInputName1" name="answer_2"> -->
<!--                             <i class="ti-email"></i> -->
<!--                             <div class="text-danger"></div> -->
<!--                         </div> -->
<!--                         <div class="form-gp"> -->
<!--                             <label for="exampleInputEmail1">Answer 3</label> -->
<!--                             <input type="text" id="exampleInputName1" name="answer_3"> -->
<!--                             <i class="ti-email"></i> -->
<!--                             <div class="text-danger"></div> -->
<!--                         </div> -->
<!--                         <div class="form-gp"> -->
<!--                             <label for="exampleInputEmail1">Answer 4</label> -->
<!--                             <input type="text" id="exampleInputName1" name="answer_4"> -->
<!--                             <i class="ti-email"></i> -->
<!--                             <div class="text-danger"></div> -->
<!--                         </div> -->
<!--                         <div class="form-gp"> -->
<!--                             <label for="exampleInputEmail1">Correct Answer </label> -->
<!--                             <input type="text" id="exampleInputName1" name="correct_answer"> -->
<!--                             <i class="ti-email"></i> -->
<!--                             <div class="text-danger"></div> -->
<!--                         </div> -->
                        
                        
<!--                         <div class="submit-btn-area"> -->
<!--                             <button id="form_submit" type="submit">Submit <i class="ti-arrow-right"></i></button> -->
                            
<!--                         </div> -->
<!--                     </div> -->
<!--                 </form> -->
<!--             </div> -->
        </div>
    </div>
    <!-- login area end -->

    <!-- jquery latest version -->
    <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
    <!-- bootstrap 4 js -->
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/metisMenu.min.js"></script>
    <script src="assets/js/jquery.slimscroll.min.js"></script>
    <script src="assets/js/jquery.slicknav.min.js"></script>
    
    <!-- others plugins -->
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/scripts.js"></script>
</body>

</html>