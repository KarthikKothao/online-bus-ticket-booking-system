<%@page import="java.util.Random"%>
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
            <center> <h1>Online Bus Ticket Booking System</h1></center>
        
        </div>
        <div id="menu">
            <ul>
                <li><a href="index.html">Home</a></li>
                 <li><a href="Customer.jsp">Customer </a></li>
                  <li><a href="Admin.jsp">Admin</a></li>
                   
                   <li><a href="CustomerReg.jsp">Customer Registration</a></li>
                   
                   
                
            </ul>
        </div>
        <%
    
    
    
    Random rand = new Random();
    
    String cid ="CNT_"+String.valueOf(rand.nextInt(10))+String.valueOf(rand.nextInt(10))+String.valueOf(rand.nextInt(10)
            +String.valueOf(rand.nextInt(10))+String.valueOf(rand.nextInt(10))+String.valueOf(rand.nextInt(10))+String.valueOf(rand.nextInt(10)));
    
//    String userid =  Integer.toString(randomNum);
//    String useridds = "LBS"+userid;
    
%>
        <div id="abstract">
            <img src="images/customerreg.jpg" align="right" width="350px" height="250px" style="margin-right:200px;margin-top: 50px;">
            <h2><center>Customer Registration</center></h2>
             <%String msg=request.getParameter("msg");%>
            <%if(msg!=null)
            {%>
            <center><h2><font color="blue" size="5"><%=msg%></font></h2></center>
                <%
            }%>
            <form name="login" action="CustomerRegAction.jsp" method="post">
            <table width="300px" height="200px" style="margin-left:200px;">
                <tr><td>Client ID</td><td><input type="text" name="cid"  value="<%=cid%>" readonly=""></td></tr>
                <tr><td>First Name</td><td><input type="text" name="fname" required=""></td></tr>
                <tr><td>Last Name</td><td><input type="text" name="lname" required=""></td></tr>
                <tr><td>Email Id</td><td><input type="email" name="email" required=""></td></tr>
                <tr><td>Mobile</td><td><input type="text" name="mobile" required=""></td></tr>
                <tr><td>Address</td><td><textarea  name="address" required=""></textarea></td></tr>
                <tr><td>Username</td><td><input type="text" name="username" required=""></td></tr>
                <tr><td>Password</td><td><input type="password" name="password" required=""></td></tr>
                <tr><td><input type="submit" value="Register"></td><td><input type="Reset"></td></tr>
            </table>
            </form>
        </div>
    </body>
</html>
