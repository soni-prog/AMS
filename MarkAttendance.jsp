<%-- 
    Document   : search
    Created on : 11 May, 2021, 1:30:02 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

 <%@page import="java.sql.*"%>
<%@page import="com.entites.Attendance"%>
<%@page import="com.DB.*"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpServlet"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="bootstrap/dist/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="getbootstrap.com/docs/3.4/components/" type="text/css">
        <script type="text/javascript" src="bootstrap/js/jquery-3.5.1.min.js"></script>
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

        <title>Mark Attendance</title>
        <style>
            
       body{
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
          #banner_image{ 
                       padding-top:115px;
                        padding-bottom:90px; 
                        padding-left:75px;
                         padding-right:75px;
                        text-align:center;     
                        color:blue;     
                        background:url(img/ams5.jpg) no-repeat center;    
                        background-size:cover;
               
                        }
            #banner_content{
                       position:relative;
                       padding-top:1%;
                       padding-bottom:1%;
                       margin-top:10%;
                       margin-bottom:20%;
                       margin-left:30%;
                       margin-right:30%;
                       text-center:center;
                       background-color:#FFFFFF;
                       max-width:660px;
                    }
                    .button{
                        background-color:#669900;
                        text-align:center;
                        color:white;
                        align:right;
                    }
                    input{
                        background-color:#669900;
                    }
                    table{
                        border-width:5px;
                    }
                    table td{
                        border-color:#000000;
                        border-width:3px;
                        
                    }
    
        </style>       
              
               
    </head>
    <body>
        <div class="nav">
           
            <ul>
                <li><a href="#">Home</a></li>
                 <li><a href="istudent.jsp">Student</a>
                     <!--<ul>
                       <li><a href="AddStudent.jsp">Add Student</a></li>
                        <li><a href="#">Student List</a></li>
  
                     </ul>-->  
                 </li>

                 <li><a href="#">Attendance</a>
                     <ul>
                       <li><a href="AddAttendance.jsp">Take Attendance</a></li>
                        <li><a href="iattendance.jsp">Attendance List</a></li>
                          
                     </ul>  
                 </li>
                 <li><a href="ChangePassword.jsp">Change Password</a></li>                            
                 <li><a href=LogoutView.jsp> Logout</a></li>
                   
              </ul>
        </div><br/>
        <h1 align="center" text-size="20px" color="black">Take Attendance</h1>
<br/>
    </head>
    <body>
       <!--%
        Connection conn=DBConnect.getConnection();
        out.println(conn);
       %-->
        <jsp:declaration>
            String courseName = "";
            String date = "";
            String subjectName = "";
        </jsp:declaration>
            <form method="POST" action='AttendanceCtl'>
                        <% String action = request.getParameter("action");
                                        System.out.println(action);
                           %>
        <table border="3">
           
            <tr bgcolor="#669900" font-color="white">
                <td align="center" width="10%"><b>Student ID</b></td>
                <td align="center" width="10%"><b>Name</b></td>
                <td align="center" width="10%"><b>Course</b></td>
                <td align="center" width="10%"><b>Subject</b></td>
                <td align="center" width="10%"><b>Semester</b></td>
                <td align="center" width="10%"><b>Attendance Date</b></td>
                <td align="center" width="10%"><b>Mark Attendance</b></td>
            </tr>
                <%
                    try{
                                             Connection  conn=DBConnect.getConnection();
                                              Statement st=conn.createStatement();
                                        //get coursename from Attendance.jsp
                                        String courseName=request.getParameter("courseName");
                                         String semester=request.getParameter("semester");
                                        String subjectName=request.getParameter("subjectName"); 
                                        String date=request.getParameter("date");
                                              String qu="select studentId,firstName,lastName,courseName,semester from students where courseName='"+courseName+"' AND semester='"+semester+"'";
                                              ResultSet rs=st.executeQuery(qu);
                                              //get course name one by one
                                              while(rs.next())
                                              {
                                                  %>
                                                       <tr>
                                                           <td align="center" width="7%" name="studentId" id="studentId"><%=rs.getString("studentId")%></td>
                                                           
                                                           <td align="center" width="7%" name="name" id="name"><%=rs.getString("firstName")%> <%=rs.getString("lastName")%></td>
                                                           <td align="center" width="7%" name="courseName" id="courseName"><%=rs.getString("courseName")%></td> 
                                                           <td align="center" width="7%" name="subjectName" id="subjectName"><jsp:expression>subjectName</jsp:expression></td>
                                                            <td align="center" width="7%" name="semester" id="semester"><%=rs.getString("semester")%></td>
                                                           <td align="center" width="7%" name="date" id="date"><jsp:expression>date</jsp:expression></td>
                                                           <td align="center" width="7%" name="attendanceStatus" id="attendanceStatus">
                                                               <input type="radio"  value="present"/>Present
                                                               <input type="radio"  value="absent"/>Absent
                                                           </td>

                
                                                       </tr>
                                                  <%
                                              }
                                           
                                           }catch(Exception ex)
                                           {
                                           ex.printStackTrace();
                                           }


                    %>

            
        </table><br/>
        <p align="right"> <button class="button"><input type="submit" value="Submit"/></button></p>
        </form>
            </body>
</html>
