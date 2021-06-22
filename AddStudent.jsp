<%-- 
    Document   : AddStudent
    Created on : 9 May, 2021, 8:19:15 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
    <%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="com.DB.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student</title>
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
            form{
                background-color:#white;
                width:800px;
                margin:auto;
                padding:20px;
                color:black;
                font-size:20px;
                
            }
            input[type=text]{
                width:100;
                paddind:20px;
                font-size:18px;
                
            }
            td{
                padding:7px;
            }
</style>
    </head>
    <body>
        <div class="nav">
           
            <ul>
                <li><a href="#">THome</a></li>
                 
                 <li><a href="istudent.jsp">Student</a>
                      <!--<ul>
                       <li><a href="">Add Subject</a></li>
                        <li><a href="">Subject List</a></li>
  
                     </ul>-->
                 </li>
                 <li><a href="#">Attendance</a>
                     <ul>
                       <li><a href="AddAttendance.jsp">Add Attendance</a></li>
                        <li><a href="iattendance.jsp">Attendance List</a></li>
                          
                     </ul>  
                 </li>

                  <li><a href="ChangePassword.jsp">Change Password</a></li>       
                 <li><a href=LogoutView.jsp> Logout</a></li>
                  
              </ul>
        </div>
	<br>
        
        <div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				

				<caption>
					<h2>
						<c:if test="${saa!=null}">
            			                 Edit Student Details
            		                        </c:if>
						<c:if test="${saa==null}">
            			                Add New Student
            		                        </c:if>
					</h2>
				</caption>
                            <form method="POST" action='StudentCtl' name="frmAddstudent">
                            
                                <table>
                                  

                                               
                                  <tr>
                                           <td>Course
                                               <select name="courseName" value="<c:out value='${saa.courseName}' />" >
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
                                                  <option><%=rs.getString("courseName")%></option>
                                                  <%
                                              }
                                           
                                           }catch(Exception ex)
                                           {
                                           ex.printStackTrace();
                                           }
                                           %>
                                       </select> 
                                           </td> 
                                           <td>Semester
                                               <select name="semester" value="<c:out value='${saa.semester}' />">
                                            <option value="Ist">Ist</option>
                                            <option value="IInd">IInd</option>
                                            <option value="IIIrd">IIIrd</option>
                                             <option value="IVth">IVth</option>
                                             <option value="Vth">Vth</option>
                                             <option value="VIth">VIth</option>
                                              <option value="VIIth">VIIth</option>
                                             <option value="VIIIth">VIIIth</option>
                                          </select>
                                           </td>
                                       </tr>
                                   <% String action = request.getParameter("action");
                                        System.out.println(action);
                                   %>
                               
                                      <tr>
                                 <td>First Name
                                    <input type="text"
						value="<c:out value='${saa.firstName}' />" class="form-control"
						name="firstName" required="required"/> 
                                 
                                 </td>
      
                                    <td>Last Name
                                       <input type="text"
						value="<c:out value='${saa.lastName}' />" class="form-control"
						name="lastName" required="required"/>  
                                        
                                    </td>
                                       </tr>
                                       <% if (action.equalsIgnoreCase("edit")) 
                                 {%>  
                                 <tr>
                                 <td>Student ID
                                    <input type="text"
						value="<c:out value='${saa.studentId}' />" class="form-control"
						name="studentId" readonly="readonly" required="required"/> (You can't change this)
                                 
                                 </td>
                                 <%}
                                 else {%>
                                 <td>Student ID
                                    <input type="text"
						value="<c:out value='${saa.studentId}' />" class="form-control"
						name="studentId" required="required"/> 
                                 </td>
                                    <%}%>
                                    
                                       </tr>                           
                            
                             <tr>
                                 <td>Email
                                     <input type="text"
						value="<c:out value='${saa.email}' />" class="form-control"
						name="email" required="required"/>  
                                 </td>
                                  <td>Password
                                     <input type="password"
						value="<c:out value='${saa.password}' />" class="form-control"
						name="password" required="required"/>  
                                 </td>
                                 
                             </tr>
                             
                             <tr>
                                 <td colspan="2">Gender
                                     <select name="gender" value="<c:out value='${saa.gender}' />">
                                         <option>--Select--</option>
                                            <option value="Male">Male</option>
                                            <option value="Female">Female</option>
                                            
                                          </select>
                                 </td>
                                 
                             </tr>
                             <tr>
                                 <td>Date Of Birth
                                     <input type="date"
						value="<c:out value='${saa.dob}' />" class="form-control"
						name="dob" required="required">  
                                 </td>
                                 <td>Mobile No.
                                     <input type="text"
						value="<c:out value='${saa.mobileNo}' />" class="form-control"
						name="mobileNo" required="required"/>  
                                 </td>

                                 
                             </tr>
                             <tr>
                                 <td>Father Name
                                     <input type="text"
						value="<c:out value='${saa.fatherName}' />" class="form-control"
						name="fatherName" required="required"/>  
                                 </td>
                                 <td>Father Mobile No.
                                     <input type="text"
						value="<c:out value='${saa.fatherNo}' />" class="form-control"
						name="fatherNo" required="required"/>  
                                 </td>

                                 
                             </tr>
                                    
                           
                             
                                   </table>                                  
                               
                             

                                 
                                <input  type="submit" value="Add" />


                            </form>
                            
                        </div>
                    </div>
        </div>
            </body>
</html>
