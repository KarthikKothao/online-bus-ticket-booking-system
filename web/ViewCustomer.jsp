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
             <%@page import="java.sql.*" %>
            <%
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/buspass","root","root");
                  //Connection   con = DriverManager.getConnection("jdbc:mysql://mydb-instance.cuis34udkkqx.us-east-1.rds.amazonaws.com:3306/buspass?characterEncoding=utf8", "admin", "Swetha1234");
                  
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select *from customer ");
                    %>
                    <table border="2px" align="center">
                        <tr>
                              
                         
                              
                             <th>Customer Id</th>
                              
                              <th>First Name</th>
                              <th>Last Name</th>
                             
                                <th> Email Id </th>
                                  <th> mobile Number</th>
                                    
                                      <th>Address</th>
                                      
                                      
                                          <th>Username</th>
                                          
                                    
                                     
                                      
                                      
                                         
                                          
                                            
                                                
                        </tr>
                        <%while(rs.next())
                        {
                            %>
                            <tr>
                                <td><%=rs.getString(1)%></td>
                                 <td><%=rs.getString(2)%></td>
                                  <td><%=rs.getString(3)%></td>
                                   <td><%=rs.getString(4)%></td>
                                   <td><%=rs.getString(5)%></td>
                                   <td><%=rs.getString(6)%></td>
                                   <td><%=rs.getString(7)%></td>
                                
                                     
                                          
                            </tr>
                        <%}
}
catch(Exception e)
{
out.println(e);
}
%>
                    </table>
        </div>
    </body>
</html>
