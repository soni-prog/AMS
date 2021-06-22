 <%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="com.DB.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="bootstrap/dist/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="getbootstrap.com/docs/3.4/components/" type="text/css">
        <script type="text/javascript" src="bootstrap/js/jquery-3.5.1.min.js"></script>
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        
	

        <title>Student List</title>
        
        <style>
    body {
    font-family: sans-serif;
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
          input{
                background-color:#669900;
            }
                       table{
                border-width:5px;
            }
            table td{
                border-width:3px;
                border-color:#000000;
            }


      </style>
    </head>
    <body>
      <div class="nav">
           
            <ul>
                <li><a href="#">Home</a></li>

                 <li><a href="istudent.jsp">Student</a>
                      <!--<ul>
                       <li><a href="#">Add Subject</a></li>
                        <li><a href="#">Subject List</a></li>
  
                     </ul> -->
                 </li>
                 <li><a href="#">Attendance</a>
                     <ul>
                       <li><a href="AddAttendance.jsp">Add Attendance</a></li>
                        <li><a href="iattendance.jsp">Attendance List</a></li>
  
                     </ul>  
                 </li>
                  <li><a href=ChangePassword.jsp>Change Password</a></li>
                 <li><a href=LogoutView.jsp> Logout</a></li>
                          
              </ul>
        </div>
         <!--%
        Connection conn=DBConnect.getConnection();
        out.println(conn);
       %-->
                        <br>
                       
                        
                        <div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		              <div class="container">
			        <h3 class="text-center">Student List</h3>
			        <hr>
			        			         
			       <table border="3">
				
					<tr bgcolor="#669900">
						<!--<th>Id</th>-->
                                                <td align="center" width="10%"><b>#</b></td>
                                                <td align="center" width="10%"><b>First Name</b></td>
						
                                                <td align="center" width="10%"><b>Last Name</b></td>
                                                <td align="center" width="10%"><b>Course</b></td>
                                                <td align="center" width="10%"><b>Semester</b></td>
                                                <td align="center" width="10%"><b>Student ID</b></td>

                                                <td align="center" width="10%"><b>Email</b></td>
                                                <td align="center" width="10%"><b>Password</b></td>
                                                <td align="center" width="10%"><b>Gender</b></td>
                                                <td align="center" width="10%"><b>Dob</b></td>
                                                <td align="center" width="10%"><b>Mobile_no</b></td>
                                                <td align="center" width="10%"><b>Father Name</b></td>
                                                <td align="center" width="10%"> <b>Father Mobile_no</b></td>
                                                <td align="center"width="5" colspan="2"><b>Action</b></td>
					</tr>
				
				
					<!--   for (Todo todo: todos) {  -->
					<c:forEach items="${students}" var="saa" >

						<tr>
                                                       
                                                        <td align="center"><c:out value="${saa.index}" /></td>
							<td align="center"><c:out value="${saa.firstName}" /></td>
                                                         <td align="center"><c:out value="${saa.lastName}" /></td>
                                                          <td align="center"><c:out value="${saa.courseName}" /></td>
                                                         <td align="center"><c:out value="${saa.semester}" /></td>
                                                         <td align="center"><c:out value="${saa.studentId}" /></td>
							<td align="center"><c:out value="${saa.email}" /></td>
							<td align="center"><c:out value="${saa.password}" /></td>
                                                        <td align="center"><c:out value="${saa.gender}" /></td>
                                                         <td align="center"><c:out value="${saa.dob}" /></td>
							<td align="center"><c:out value="${saa.mobileNo}" /></td>
                                                         <td align="center"><c:out value="${saa.fatherName}" /></td>
							<td align="center"><c:out value="${saa.fatherNo}" /></td>


                                                        <td align="center"><a href="StudentCtl?action=edit&id=<c:out value="${saa.studentId}" />">Edit</a></td>
                                                        
							<td align="center"><a href="StudentCtl?action=delete&id=<c:out value="${saa.studentId}" />">Delete</a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				

			</table>
                                </br>
                                <button><a href="StudentCtl?action=insert">New</a></button>
		</div>
	</div>

                                     
           
    </body>
</html>

