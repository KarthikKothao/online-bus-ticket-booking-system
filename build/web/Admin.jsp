<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Online Bus Ticket Booking System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css" />
    </head>
    <body bgcolor="lightblue">
        <div>
            <center> <h1> Online Bus Ticket Booking System</h1></center>
        
        </div>
        <div id="menu">
            <ul>
                <li><a href="index.html">Home</a></li>
                 <li><a href="Customer.jsp">Customer </a></li>
                  <li><a href="Admin.jsp">Cloud</a></li>
                   
                   <li><a href="CustomerReg.jsp">Customer Registration</a></li>
                   
                   
                
            </ul>
        </div>
        <div id="abstract">
            <img src="images/Admin.jpg" align="right" width="350px" height="250px" style="margin-right:200px;margin-top: 50px;">
            <h2><center>Cloud Login</center></h2>
             <%String msg=request.getParameter("reg");%>
            <%if(msg!=null)
            {%>
            <center><h2><font color="blue" size="5"><%=msg%></font></h2></center>
                <%
            }%>
            <form name="login" action="AdminLogin.jsp" method="post">
            <table width="300px" height="200px" style="margin-left:200px;">
                <tr><td>Username</td><td><input type="text" name="username" required=""></td></tr>
                <tr><td>Password</td><td><input type="password" name="password" required=""></td></tr>
                <tr><td><input type="submit" value="Login"></td><td><input type="Reset"></td></tr>
            </table>
            </form>
        </div>
    </body>
</html>
