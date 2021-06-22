<%-- 
    Document   : SearchAttendance
    Created on : 15 May, 2021, 12:53:55 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

 <%@page import="java.sql.*"%>
<%@page import="com.entites.AssignFaculty"%>
<%@page import="com.DB.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Attendance</title>
                <link rel="stylesheet" href="bootstrap/dist/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="getbootstrap.com/docs/3.4/components/" type="text/css">
        <script type="text/javascript" src="bootstrap/js/jquery-3.5.1.min.js"></script>
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
  <style>
    body {
         background-image:url(img/bgimg2.jpg);
        background-size:cover;
        background-attachment:fixed;
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
           
            table{
                border-width:5px;
            }
            table td{
                border-width:3px;
                border-color:#000000;
            }
           
           
             .button{
                        background-color:#669900;
                        text-align:center;
                        color:white;
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
         
          <form action="./DWviewAttendanceList.jsp">
              <table>
                  <tr>
                      <td><button><a href="SW_viewattendance.jsp" >Student Wise</a></button></td>
                      <td><button><a href="SJW_viewattendance.jsp" >Subject Wise</a></button></td>
                      <td><button><a href="DW_viewattendance.jsp" >Date Wise</a></button></td>
              </tr>
              </table>
            <fieldset class="form-group" >
                <label>Select Date</label>
                <input type="date"name="date"/>
            </fieldset>
            <fieldset class="form-group" >
                <label>Student Name</label>
                <input type="text"name="name"/>
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
                                        

                                          
                                       <input type="submit" value="Fetch Status "/>
            
        </form>
    </body>
</html>


