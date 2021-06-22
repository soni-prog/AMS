<%-- 
    Document   : viewAttendanceList
    Created on : 15 May, 2021, 12:34:13 PM
    Author     : HP
--%>
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
        <title>View Attendance List</title>
        <link rel="stylesheet" href="bootstrap/dist/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="getbootstrap.com/docs/3.4/components/" type="text/css">
        <script type="text/javascript" src="bootstrap/js/jquery-3.5.1.min.js"></script>
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
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
                font-size:15px;
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
                        .button{
                        background-color:white;
                        text-align:center;
                        color:black;
                        align:left;
                    }

      </style>
    </head>
    <body>
        
        <div class="nav">
           
            <ul>
                <li><a href="#">SHome</a></li>
                 
                 <li><a href="SW_viewattendance.jsp"> View Attendance</a></li>
                
                  <li><a href=ChangePassword.jsp>Change Password</a></li>
                 <li><a href=LogoutView.jsp> Logout</a></li>
                  
       
              </ul>
        </div>
         <br>
                       
             <form method="POST" action="">
                        <!--% String action = request.getParameter("action");
                                        System.out.println(action);
                           %-->
        <table border="3">
           
            <tr bgcolor="#669900" font-color="white">
                <td align="center" width="5%"><b>Student ID</b></td>
                <td align="center" width="5%"><b>Name</b></td>
                <td align="center" width="5%"><b>Course</b></td>
                <td align="center" width="5%"><b>Subject</b></td>
                <td align="center" width="5%"><b>Semester</b></td>
                <td align="center" width="5%"><b>Attendance Date</b></td>
                <td align="center" width="5%"><b>Attendance Status</b></td>
            </tr>
                <%
                    try{
                                             Connection  conn=DBConnect.getConnection();
                                              Statement st=conn.createStatement();
                                        //get coursename from Attendance.jsp
                                        String courseName=request.getParameter("courseName");
                                         String semester=request.getParameter("semester");
                                        String subjectName=request.getParameter("subjectName"); 
                                        String name=request.getParameter("name"); 
                                        //String date=request.getParameter("date");
                                              String qu="select * from attendances where name='"+name+"' AND subjectName='"+subjectName+"' AND courseName='"+courseName+"' AND semester='"+semester+"'";
                                              ResultSet rs=st.executeQuery(qu);
                                              //get course name one by one
                                              while(rs.next())
                                              {
                                                  %>
                                                       <tr>
                                                           <td align="center" width="7%" name="studentId" id="studentId"><%=rs.getString("studentId")%></td>
                                                           
                                                           <td align="center" width="7%" name="name" id="name"><%=rs.getString("name")%></td>
                                                           <td align="center" width="7%" name="courseName" id="courseName"><%=rs.getString("courseName")%></td> 
                                                           <td align="center" width="7%" name="subjectName" id="subjectName"><%=rs.getString("subjectName")%></td>
                                                            <td align="center" width="7%" name="semester" id="semester"><%=rs.getString("semester")%></td>
                                                          <td align="center" width="7%" name="date" id="date"><%=rs.getString("date")%></td>
                                                            <td align="center" width="7%" name="attendanceStatus" id="attendanceStatus"><%=rs.getString("attendanceStatus")%></td>



                
                                                       </tr>
                                                  <%
                                              }
                                           
                                           }catch(Exception ex)
                                           {
                                           ex.printStackTrace();
                                           }


                    %>

            
        </table><br/>
    <button class="button"><a href="SW_viewattendance.jsp">Back</a></button>
        </form>

                                     
    </body>
</html>