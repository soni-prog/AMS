<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="com.DB.*"%>


<!DOCTYPE html>
<html>   
<head>  
<title> Registration </title>
        <link rel="stylesheet" href="bootstrap/dist/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="getbootstrap.com/docs/3.4/components/" type="text/css">
        <script type="text/javascript" src="bootstrap/js/jquery-3.5.1.min.js"></script>
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
 <link href="css/style.css" rel="stylesheet" type="text/css"/>

<style>
    body {
    font-family: sans-serif;
}
.container {
    width: 380px;
    margin: 2% auto;
    border-radius: 25px;
    background-color: rgba(0,0,0,0.1);
    box-shadow: 0 0 15px #333;
    
}
.header {
    text-align: center;
    padding-top:0px;
}
 .header h1 {
    color:#FFFFFF;
    font-size: 50px;
    margin-bottom: 80px;
    background:#006699;
    padding-top:5px;
    padding-bottom:5px;
}

.main {
    text-align: center;
}
.main input, button {
    width: 300px;
    height: 40px;
    border: none;
    outline: none;
    padding-left: 70px;
    box-sizing: border-box;
    font-size: 15px;
    color: #333;
    margin-bottom: 40px;   
}
.main button {
    padding-left: 0;
    background-color: #83acf1;
    letter-spacing: 1px;
    font-weight: bold;
    margin-bottom: 70px;    
}
.main button:hover {
    box-shadow: 2px 2px 5px #555;
    background-color: #7799d4;
}
.main input:hover {
    box-shadow: 2px 2px 5px #555;
    background-color: #ddd;
}
.main span {
    position: relative
}
.main i {
    position: absolute;
    left: 15px;
    color: #333;
    font-size: 15px;
    .nav ul{
        list-style:none;
    }
   
    
    
    
    
    
    
    

</style>
</head>
<body background="C:\Users\NAVEEN\Downloads/bg.jpg" style="background-repeat: no-repeat; background-size: 100%">
    
    <%--
        Connection conn=DBConnect.getConnection();
        out.println(conn);
       --%>
       
       
            <div class="container">
        <div class="header">
            <h1> Register </h1>
          
        </div>
          
                
             <% 
        String regMsg=(String)session.getAttribute("reg-msg");
        if(regMsg!=null)
        {
        %>
        <div class="alert alert-success" role="alert"><%= regMsg %>Login..<a href="LoginView.jsp">click here</a></div>  
        <%
            session.removeAttribute("reg-msg");
            }
        %>
                
         
                
        <div class="main">
            <form action="RegisterationCtl" method="post" >
                <span>
                    <i class="fa fa-user"></i>
                    <input type="text" placeholder="name" name="uname">
                </span>
                <br>
                <span>
                    <i class="fa fa-user"></i>
                    <input type="text" placeholder="Username" name="email">
                </span>
                <br>
                <span>
                    <i class="fa fa-lock"></i>
                    <input type="Password" placeholder="Password" name="password">
                </span><br>
                <!<span>
                    <i class="fa fa-lock"></i>
                    <input type="text" placeholder="user_type i.e student/faculty or admin" name="user_type">
                </span><br>>
                <a href="#"> 
                    <button> Register </button>
                </a>
            </form>
        </div>
    </div>
</body>
</html>




