<%-- 
    Document   : CustomerRegAction
    Created on : 1 Nov, 2022, 11:42:27 AM
    Author     : venka
--%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page import="com.database.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String from=request.getParameter("from");
    String to=request.getParameter("to"); 
    String address=request.getParameter("address");
    String phone=request.getParameter("phone"); 
    String method=request.getParameter("method");
    String price=request.getParameter("price");
    String payde=request.getParameter("payde"); 
    String cvv=request.getParameter("cvv"); 
  
    String username=request.getParameter("username");
     Random rand = new Random();
    
    String Pid ="PAYM_"+String.valueOf(rand.nextInt(99999999));
    
    String status="Waiting";
    try
    {System.out.println("path::1 ");
       
       Connection con= DbConnection.getConnection();
 Statement st=con.createStatement();
 String cid=session.getAttribute("cid").toString();
 String email=session.getAttribute("email").toString();
 ResultSet rs=st.executeQuery("select count(*) from applybuspass where username='"+username+"'");
	if(rs.next())
	{System.out.println("path::1 2");
	int count=rs.getInt(1);
	 if(count==0)
	{System.out.println("path::13 ");
		int i=st.executeUpdate("insert into applybuspass values('"+username+"','"+from+"','"+to+"','"+status+"','"+cid+"','"+email+"','nill')");
		
		if((i!=0))
		{    System.out.println("path::14 ");
   
                    int iii=st.executeUpdate("insert into payments values('"+Pid+"','"+username+"','"+address+"','"+phone+"','"+from+"','"+to+"','"+method+"',"+price+",'"+payde+"','"+cvv+"')");
                    if((iii==0))
                    {    System.out.println("path::15 ");
                        response.sendRedirect("ApplyBusPass.jsp?msg=failure");
                    }
                    else
                    {
                        response.sendRedirect("CustomerHome.jsp?msg=Bus Pass Application Sent Suceesfully");
                    }
	}
	
	}else
	{
	response.sendRedirect("ApplyBusPass.jsp?msg=U Already Applied For The Bus Pass");
	}
	}
    }
	catch(Exception e)
	{
	out.println(e);
	}
%>
 