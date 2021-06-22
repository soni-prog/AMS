<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

 <%@page import="java.sql.*"%>
<%@page import="com.entites.AssignFaculty"%>
<%@page import="com.DB.*"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpServlet"%>

 
<!DOCTYPE html>
<html>
    <title>Add Attendance</title>        
        
        
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
        <form action="./MarkAttendance.jsp">
            <fieldset class="form-group" >
                <label>Select Date</label>
                <input type="date"name="date"/>
            </fieldset>
            <fieldset class="form-group">
                 <label>Course Name</label>
             <select name="courseName" class="form-group">
                                           <option>--Select--</option>
                                           <%
                                           try{
                                              Connection conn=DBConnect.getConnection();
                                              Statement st=conn.createStatement();
                                              String qu="select * from courses";
                                              ResultSet rs=st.executeQuery(qu);
                                              //get course name one by one
                                              while(rs.next())
                                              {
                                                  %>
                                                  <option> <%=rs.getString("courseName")%></option>
                                                  <%
                                              }
                                           
                                           }catch(Exception ex)
                                           {
                                           ex.printStackTrace();
                                           }
                                           %>
                                       </select><br/> 
        </fieldset>
                                       <fieldset class="form-group">
                                           <label>Semester</label>
                                        <select name="semester" class="form-group">
                                            <option value="Ist">Ist</option>
                                            <option value="IInd">IInd</option>
                                            <option value="IIIrd">IIIrd</option>
                                             <option value="IVth">IVth</option>
                                             <option value="Vth">Vth</option>
                                             <option value="VIth">VIth</option>
                                              <option value="VIIth">VIIth</option>
                                             <option value="VIIIth">VIIIth</option>
                                          </select><br/>
                                          </fieldset>
                                          <fieldset class="form-group">
                                          <label>Select subject</label>  
                                          
             <select name="subjectName" class="form-group">
                                           <option>--Select--</option>
                                           <%
                                           try{
                                              Connection conn=DBConnect.getConnection();
                                              Statement st=conn.createStatement();
                                              String qu="select * from subjects";
                                              ResultSet rs=st.executeQuery(qu);
                                              //get course name one by one
                                              while(rs.next())
                                              {
                                                  %>
                                                  <option> <%=rs.getString("subjectName")%></option>
                                                  <%
                                              }
                                           
                                           }catch(Exception ex)
                                           {
                                           ex.printStackTrace();
                                           }
                                           %>
                                       </select><br/>
                                       </fieldset>
                                       <input type="submit" value="Fetch Students"/>
            
        </form>
    </body>
</html>