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
                <li><a href="AdminHome.jsp">Home</a></li>
                 <li><a href="ViewCustomer.jsp">View Customers</a></li>
                  <li><a href="ViewBusPassrequest.jsp">View Bus Pass Request</a></li>
                  <li><a href="Viewpayments.jsp">View Payment Details</a></li>
                   
                   <li><a href="CustomerReg.jsp">Logout</a></li>
                   
                   
                
            </ul>
        </div>
        <div id="abstract">
            <img src="images/Admin.jpg" align="right" width="350px" height="250px" style="margin-right:200px;margin-top: 50px;">
            <h2><center>Welcome To Cloud</center></h2>
             <%String msg=request.getParameter("reg");%>
            <%if(msg!=null)
            {%>
            <center><h2><font color="blue" size="5"><%=msg%></font></h2></center>
                <%
            }%>
            
        </div>
    </body>
</html>
