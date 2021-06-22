<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Change Password</title>
        <meta charset="UTF-8">
        
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
      <br/><br/>
        <h1>Change Password</h1>
          
       
    <form action="./ProcessChangePassword.jsp" method="post">
        
             <fieldset class="form-group">
                   <label>UserName</label>  
                     <input type="text" name="email" placeholder="Email Address" required=""/>
                 				</fieldset><br />
             <fieldset class="form-group">
             
                     <label>New Password</label>
                     <input type="password" name="password" placeholder="New Password" required=""/>
             
             </fieldset><br />
             <fieldset class="form-group">
                     <label>Confirm Password</label>
                     <input type="password" name="password1" placeholder="Confirm Password" required=""/>
                          </fieldset><br />
       
         
       <input type="submit" value="Change Password"/>

    </form>
       
    </body>
</html>

