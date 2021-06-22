<%-- 
    Document   : ChangePassword
    Created on : 13 May, 2021, 1:04:05 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.entites.User"%>
<%@page import="com.DB.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <link rel="stylesheet" href="bootstrap/dist/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="getbootstrap.com/docs/3.4/components/" type="text/css">
        <script type="text/javascript" src="bootstrap/js/jquery-3.5.1.min.js"></script>
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
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
</style>

    </head>
    <body>
                <div class="nav">
           
            <ul>
                <li><a href="#">Home</a></li>
                 <li><a href="ifaculty.jsp">Faculty</a>
                    <!--<ul>
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
                 
           
                 
                 <li><a href=LogoutView.jsp> Logout</a></li>
                 <li><a href="ChangePassword.jsp">Change Password</a></li>
                          
        </ul>
        </div><br/><br/>
        <%
       String email=request.getParameter("email");
        String password=request.getParameter("password"); 
          try{
               Connection  conn=DBConnect.getConnection();
                                              PreparedStatement ps=conn.prepareStatement("update user set password=? where email=?");
                                              ps.setString(2, email);
                                              ps.setString(1, password);
                                            int i= ps.executeUpdate();
                                            if(i>0)
                                            {
                                                out.println("Updated Successfully!");
                                                response.sendRedirect("Home.jsp");
                                            }
                                                                                   
                                             
                                      
    
             }catch(Exception e)
             {
                 e.printStackTrace();
             }
        %>
    </body>
</html>
