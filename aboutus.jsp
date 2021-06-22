<%-- 
    Document   : aboutus
    Created on : 13 May, 2021, 11:45:09 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About us</title>
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
                .nav ul{
                list-style:none;
             background-color:#101010;
             padding:15px; 
           width:100%;
           font-size:20px;
           
            }
            .nav li{
                display:inline-block;
            }
            .nav a{
                text-decoration:none;
                width:100px;
                display:block;
                padding:15px;
                font-size:20px;
            }
            #banner_image{ 
                       padding-top:95px;
                        padding-bottom:80px; 
                        padding-left:75px;
                         padding-right:75px;
                        text-align:center;     
                        color:Black;     
                        background:url(img/about1.jpg) no-repeat center;    
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
                    
        
        a:link{color:white;}
        a:visited{color:blue;}
        a:active{color:yellow;}
        a:hover{color:green;}
          
       
    
        </style>       


    </head>
    <body>
        <div class="nav">
           
                <ul>
                    <li><a href="Welcome.jsp" class="glyphicon glyphicon-home">Home</a></li>
                    <li><a href="LoginView.jsp"><span class="glyphicon glyphicon-log-in">Signin</span></a></li>
                    <li><a href="aboutus.jsp"><span class="glyphicon glyphicon-register">About</span></a></li>
                </ul>
            
           
        </div>
        <div id="banner_image">
            <h1>About Us</h1>
            <div id="banner_content">
            <p>Over the years the manual attendance management has been carried across most of educational institutions all over India. To overcome the problems of manual attendance, We have developed “web based attendance Management System”. Attendance Management System is based on web server, which can be implemented on any computer. In this application, JSP is server side language, MYSQL database and Servlet is used as back-end design and HTML, CSS and Bootstrap are used as front-end tools. The system communicates with database residing on Apache Tomcat server. It calculates automatically, the attendance percentage of students without any manual paper-based work. The system facilitates the end users with interactive design and automated processing of attendance management.</p>
        </div>
       
            </body>
</html>
