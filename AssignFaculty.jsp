<%@page contentType="text/html" pageEncoding="UTF-8"%><html>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
    <%@page import="java.sql.*"%>
<%@page import="com.entites.AssignFaculty"%>
<%@page import="com.DB.*"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpServlet"%>

<head>
<title>Assign Faculty</title>
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
                      <!--<ul>
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
						<c:if test="${aa!=null}">
            			                 Edit Assigned Faculty
            		                        </c:if>
						<c:if test="${aa==null}">
            			                Assign Faculty
            		                        </c:if>
					</h2>
				</caption>

				<form method="POST" action='AssignCtl' name="frmAssignfaculty">
                                  <% String action = request.getParameter("action");
                                        System.out.println(action);
                                   %>
                                 <% if (action.equalsIgnoreCase("edit")) 
                                 {%>
                               <fieldset class="form-group">
					<label>Faculty Name</label> 
                                        <select name="facultyName" value="<c:out value='${aa.facultyName}' />" >
                                           <option>--Select--</option>
                                           <%
                                           try{
                                              Connection conn=DBConnect.getConnection();
                                              Statement st=conn.createStatement();
                                              String qu="select * from faculties";
                                              ResultSet rs=st.executeQuery(qu);
                                              //get course name one by one
                                              while(rs.next())
                                              {
                                                  %>
                                                  <option><%=rs.getString("firstName")%> <%=rs.getString("lastName")%></option>
                                                  <%
                                              }
                                           
                                           }catch(Exception ex)
                                           {
                                           ex.printStackTrace();
                                           }
                                           %>
                                       </select>   
				</fieldset><br /> 
                                <%}
                                 else {%>
                              <fieldset class="form-group">
					<label>Faculty Name</label> 
                                       <select name="facultyName" value="<c:out value='${aa.facultyName}' />" >
                                           <option>--Select--</option>
                                           <%
                                           try{
                                              Connection conn=DBConnect.getConnection();
                                              Statement st=conn.createStatement();
                                              String qu="select * from faculties";
                                              ResultSet rs=st.executeQuery(qu);
                                              //get course name one by one
                                              while(rs.next())
                                              {
                                                  %>
                                                  <option><%=rs.getString("firstName")%> <%=rs.getString("lastName")%></option>
                                                  <%
                                              }
                                           
                                           }catch(Exception ex)
                                           {
                                           ex.printStackTrace();
                                           }
                                           %>
                                       </select>         
                                  
				</fieldset><br />
                                <%}%>
                               <fieldset class="form-group">
					<label>Course </label> 
                                       <select name="courseName"  value="<c:out value='${aa.courseName}' />" >
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
                                </fieldset><br /> 
                              <fieldset class="form-group">
					<label>Subject </label> 
                                       <select name="subjectName" value="<c:out value='${aa.subjectName}' />" >
                                           <option>--Select--</option>
                                           <%
                                           try{
                                              Connection conn=DBConnect.getConnection();
                                             
                                              String qu="select * from subjects";
                                              PreparedStatement ps=conn.prepareStatement(qu);
                                              //ps.setString(1,request.getParameter("courseName"));
                                              
                                              ResultSet rs=ps.executeQuery();
                                              
                                              //get subject name one by one
                                              while(rs.next())
                                              {
                                                  %>
                                                  <option><%=rs.getString("subjectName")%></option>
                                                  <%
                                              }
                                           
                                           }catch(Exception ex)
                                           {
                                           ex.printStackTrace();
                                           }
                                           %>
                                       </select>     
                                      
                                </fieldset><br />
                              
                                <fieldset class="form-group">
					<label>Total Class</label> 
                                        <input type="text"
						value="<c:out value='${aa.totalClass}' />" class="form-control"
						name="totalClass" required="required">

				</fieldset><br />
            
                                 <input  type="submit" value="Add" />
                                 </form>

			</div>
		</div>
	</div>
</body>
</html>


