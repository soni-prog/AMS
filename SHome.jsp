<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <title>Welcome Student!</title>        
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                <li><a href="#">SHome</a></li>
                 
                 <li><a href="SW_viewattendance.jsp"> View Attendance</a></li>
                
                  <li><a href=ChangePassword.jsp>Change Password</a></li>
                                   <li><a href=LogoutView.jsp> Logout</a></li>
                  
       
              </ul>
        </div>
        
                
           
        <div id="banner_image">
            <!--<div class="container">-->
                 <div id="banner_content">
                     <p><b>WELCOME STUDENT</b></p>
                 </div>
             <!--</div>-->
             </div>
            

    </body>
</html>
