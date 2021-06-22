<%-- 
    Document   : index
    Created on : 19 Mar, 2021, 12:29:49 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Attendnace management system</title>
        
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
                font-size:15px;
            }
            #banner_image{ 
                       padding-top:95px;
                        padding-bottom:80px; 
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
                    <li><a href="aboutus.jsp"><span class="glyphicon glyphicon-register">About Us</span></a></li>
                </ul>
            
           
        </div>
        <div id="banner_image">
            <!--<div class="container">-->
                 <div id="banner_content">
                     <p><b>WELCOME TO ATTENDANCE MANAGEMENT SYSTEM</b></p>
                 </div>
             <!--</div>-->
             </div>
   
           </body>
</html>
       
