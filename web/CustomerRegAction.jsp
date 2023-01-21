<%-- 
    Document   : CustomerRegAction
    Created on : 1 Nov, 2022, 11:42:27 AM
    Author     : venka
--%>
<%@page import="java.sql.*"%>
<%@page import="com.database.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String cid=request.getParameter("cid");
    String firstname=request.getParameter("fname");
    String lastname=request.getParameter("lname");
    String email=request.getParameter("email");
    String mobile=request.getParameter("mobile");
    String address=request.getParameter("address");
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    String role="customer";
    try
    {
       
       Connection con= DbConnection.getConnection();
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("select count(*) from customer where username='"+username+"'");
	if(rs.next())
	{
	int count=rs.getInt(1);
	 if(count==0)
	{
		int i=st.executeUpdate("insert into customer values('"+cid+"','"+firstname+"','"+lastname+"','"+email+"','"+mobile+"','"+address+"','"+username+"','"+password+"','"+role+"')");
		
		int ii=st.executeUpdate("insert into login values('"+username+"','"+password+"','"+role+"')");
		if((i==0)&&(ii==0))
		{
		response.sendRedirect("CustomerReg.jsp?msg=failure");
		}
		else
		{
		response.sendRedirect("CustomerReg.jsp?msg=Registered Suceesfully");
		}
	}
	else
	{
	response.sendRedirect("CustomerReg.jsp?msg=Customer Already Exists For This Username");
	}
	}
	}
	catch(Exception e)
	{
	out.println(e);
	}
%>
 