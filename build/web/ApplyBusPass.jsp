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
            <center> <h1>Online Bus Ticket Booking System </h1></center>
        
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
              
            
            <%String msg=request.getParameter("reg");%>
            <%if(msg!=null)
            {%>
            <center><h2><font color="blue" size="5"><%=msg%></font></h2></center>
                <%
            }%>
            <%String username=(String)session.getAttribute("username"); %>
            
            
            
            <h2><center>Welcome To <%=username%> </center></h2>
            <h2><center>Apply Bus Pass Here </center></h2>
           <%String st=request.getParameter("st"); if(st!=null)
            {%>
             <form name="apply" action="ApplyBusPassAction.jsp" method="post">
                 <input type="hidden" name="username" value="<%=username%>" >
                 <input type="hidden" name="from"  value="<%=request.getParameter("from")%>"  >  
                    <input type="hidden" name="to"  value="<%=request.getParameter("to")%>"  > 
                    <center>
            
            <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Address </label>
                          <div class="col-sm-9"> 
                            <textarea name="address" class="form-control" required=""> </textarea>
                          </div>
                        </div>
                      </div>
                       <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Phone Number</label>
                          <div class="col-sm-9">
                              <input type="text" name="phone" required class="form-control" />
                          </div>
                        </div>
                      </div>
                    </div> 
                      <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Card Number</label>
                          <div class="col-sm-9"> 
                              
                              <input type="text" name="method" required class="form-control" />
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Total Price </label>
                          <div class="col-sm-9">                      
        <input type="text" name="price" class="form-control"  value="" >
                   </div>
                        </div>
                      </div>
                    </div>
                   <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Expiry date</label>
                          <div class="col-sm-9">
                              <input type="text" name="payde" class="form-control"   required="">
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row"> 
                          <div class="col-sm-9"> 
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">CVV Number</label>
                          <div class="col-sm-9">
                              <input type="text" name="cvv" class="form-control"   required="">
                          </div>
                        </div>
                </div> 
                        </div>
                      </div> 
                    </div>
                         <input type="Submit" value="Apply Bus Pass"> <input type="Reset"> 
               
                 
                      
                       </center>
                  </form>
                
            
            
            
            
            <%
            }else {%>
            <form name="apply" action="ApplyBusPass.jsp?st=apply" method="post">
            <table align="center" border="5px" cellppading="5px" cellspacing="5px">
                <tr><td>Username</td><td><input type="text" name="username" value="<%=username%>" readonly=""></td></tr>
                <tr><td>From</td><td><input type="text" name="from" required=""></td></tr>
                <tr><td>To</td><td><input type="text" name="to" required=""></td></tr>
                <tr><td><input type="Submit" value="Apply Bus Pass"></td><td><input type="Reset"></td></tr>
                
            </table>
            </form>
               <%
            }%> 
                
                
                    </div>
    </body>
</html>
