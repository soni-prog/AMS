<%@page contentType="text/html" pageEncoding="UTF-8"%><html>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
    <%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="com.DB.*"%>
<head>
<title>Add Faculty</title>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="bootstrap/dist/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="getbootstrap.com/docs/3.4/components/" type="text/css">
        <script type="text/javascript" src="bootstrap/js/jquery-3.5.1.min.js"></script>
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        
        <style>
            
       body{
            background-image:url(img/bgimg2.jpg);
            background-size:cover;
             background-attachment:fixed;

             width:100%;
             height:100%;
             margin:0;
            }
            h3{
                color:white;
            }
    
            .nav{
                width:100%;
                background:#000033;
                height:80px;
            }
            ul{
                list-style:none;
                padding:0;
                margin:0;
                position:absolute;
                
            }
            ul li{
                float:left;
                margin-top:10px;
                
            }
            ul li a{
                width:150px;
                color:white;
                display:block;
                text-decoration:none;
                font-size:20px;
                text-align:center;
                padding:10px;
                border-radius:10px;
                font-family:Century Gothic;
                font-weight:bold;
                
                
            }
            a:hover{
                background:#669900;
                
            }
            ul li ul{
                background:#000033;
                
            }
            ul li ul li{
                float:none;
                
                
            }
            ul li ul li a{
                font-size:12px;
            }
            ul li ul{
                display:none;
            }
            ul li:hover ul{
                display:block;
            }
</style>
</head>
<body>
<div class="nav">
           
            <ul>
                <li><a href="#">Home</a></li>
                 <li><a href="ifaculty.jsp">Faculty</a>
                   <!-- <ul>
                       <li><a href="AddFaculty.jsp">Add Faculty</a></li>
                        <li><a href="FacultyList.jsp">Faculty List</a></li>
  
                     </ul>-->
                 </li>
                <li><a href="icourse.jsp">Course</a>
                  <!-- <ul>
                       <li><a href="CourseView.jsp">Add Course</a></li>
                        <li><a href="CourseListView.jsp">Course List</a></li>
  
                     </ul>--> 
                </li>
                 <li><a href="isubject.jsp">Subject</a>
                     <!-- <ul>
                       <li><a href="">Add Subject</a></li>
                        <li><a href="">Subject List</a></li>
  
                     </ul>-->
                 </li>
                 <li><a href="iassign.jsp">Assign_Faculty</a>
                    <!-- <ul>
                       <li><a href="#">Assign Faculty</a></li>
                        <li><a href="#">Assigned Faculty List</a></li>
  
                     </ul>-->  
                 </li>
                                      <li><a href="ChangePassword.jsp">Change Password</a></li>
                 <li><a href=LogoutView.jsp> Logout</a></li>

       
              </ul>
        </div>
	<br>
        
         <!--%
        Connection conn=DBConnect.getConnection();
        out.println(conn);
       %-->

	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				

				<caption>
					<h2>
						<c:if test="${fa!=null}">
            			                 Edit Faculty
            		                        </c:if>
						<c:if test="${fa==null}">
            			                Add New Faculty
            		                        </c:if>
					</h2>
				</caption>

				<form method="POST" action='FacultyCtl' name="frmAddFaculty">
                                  <% String action = request.getParameter("action");
                                        System.out.println(action);
                                   %>
                                 <% if (action.equalsIgnoreCase("edit")) 
                                 {%>
                               <fieldset class="form-group">
					<label>First Name</label> <input type="text"
						value="<c:out value='${fa.firstName}' />" readonly="readonly" class="form-control"
						name="firstName" required="required"/>(you cant change this)
				</fieldset><br /> 
                                <%}
                                 else {%>
                              <fieldset class="form-group">
					<label>First Name</label> <input type="text"
						value="<c:out value='${fa.firstName}' />" class="form-control"
						name="firstName" required="required"/>
				</fieldset><br />
                                <%}%>
                               <fieldset class="form-group">
					<label>Last Name</label> <input type="text"
						value="<c:out value='${fa.lastName}' />" class="form-control"
						name="lastName" required="required"/>
				</fieldset><br /> 
                              <fieldset class="form-group">
					<label>Email</label> <input type="text"
						value="<c:out value='${fa.email}' />" class="form-control"
						name="email" required="required"/>
				</fieldset><br />
                                <fieldset class="form-group">
					<label>Password</label> <input type="password"
						value="<c:out value='${fa.password}' />" class="form-control"
						name="password" required="required"/>
				</fieldset><br /> 
                                 <fieldset class="form-group">
					<label>Dob</label> <input type="Date"
						value="<c:out value='${fa.dob}' />" class="form-control"
						name="dob" required="required"/>
				</fieldset><br />
                                <fieldset class="form-group">
					<label>Gender</label> <input type="text"
						value="<c:out value='${fa.gender}' />" class="form-control"
						name="gender" required="required"/>
				</fieldset><br />
                                <fieldset class="form-group">
					<label>Mobile_no</label> <input type="text"
						value="<c:out value='${fa.mobileNo}' />" class="form-control"
						name="mobileNo" required="required"/>
				</fieldset><br />
 
            
                                 <input  type="submit" value="Submit" />
                                 </form>

			</div>
		</div>
	</div>
</body>
</html>

