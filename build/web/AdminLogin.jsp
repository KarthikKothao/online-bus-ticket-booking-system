<%-- 
    Document   : AdminLogin
    Created on : 25 Oct, 2022, 7:37:05 PM
    Author     : venka
--%>

<%@page import="java.sql.*"%>
<%@page import="com.database.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
session.setAttribute("username",username);

try
{
    Connection con= DbConnection.getConnection();
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("select *from admin where username='"+username+"' and password='"+password+"'");
 if(rs.next())
 {
     %>
     <script type="text/javascript">
         window.alert("Cloud Login Sucessfully");
         window.location="AdminHome.jsp";
         </script>
     <%
 }
else
{
%>
     <script type="text/javascript">
         window.alert("Cloud Login Failed Try Again......");
         window.location="Admin.jsp";
         </script>
     <%
}
 
}
catch(Exception e)
{
    out.println(e);
}

%>