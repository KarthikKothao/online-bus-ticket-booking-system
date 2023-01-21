<%-- 
    Document   : ViewTicketQr
    Created on : Nov 13, 2022, 6:56:32 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
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
                <li><a href="CustomerHome.jsp">Home</a></li>
                 <li><a href="ApplyBusPass.jsp">Apply Bus Pass </a></li>
                  <li><a href="ViewResponse.jsp">View Response</a></li>
                  <li><a href="ViewTicketQr.jsp">View Ticket QR</a></li>
                   
                   <li><a href="index.html">Logout</a></li>
                   
                   
                
            </ul>
        </div>
        <div id="abstract">
            <img src="images/Admin.jpg" align="right" width="350px" height="250px" style="margin-right:200px;margin-top: 50px;">
                <%String msg=request.getParameter("msg");%>
            <%if(msg!=null)
            {%>
            <center><h2><font color="blue" size="5"><%=msg%></font></h2></center>
                <%
            }%>
            <%String username=(String)session.getAttribute("username"); %>
            <h2><center>Welcome To <%=username%> </center></h2>
            <h2><center>View Ticket QR Status</center></h2>
             <%@page import="java.sql.*" %>
            <%
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/buspass","root","root");
                 // Connection  con = DriverManager.getConnection("jdbc:mysql://mydb-instance.cuis34udkkqx.us-east-1.rds.amazonaws.com:3306/buspass?characterEncoding=utf8", "admin", "Swetha1234");
                     Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select *from applybuspass where username='"+username+"' ");
                     while(rs.next())
                        {
                            %>
                            <%=rs.getString(1)%>
                            <center> <img src="<%=rs.getString("qrcode")%>" width="400"  height="400"alt="image"></center>
                                
                        <%}
}
catch(Exception e)
{
out.println(e);
}
%> 
                    </div>
    </body>
</html>
