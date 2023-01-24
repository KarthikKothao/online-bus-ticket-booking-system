<%-- 
    Document   : Delete
    Created on : Apr 24, 2020, 9:36:37 AM
    Author     : KishanVenky
--%>


<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.database.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%try{
    
   String username=request.getParameter("username"); 
       
      
   Connection con=DbConnection.getConnection();
   Statement st=con.createStatement();
   int i=st.executeUpdate("update applybuspass set status='Rejected' where username='"+username+"'");
   if(i>0){
     %>
     <script type="text/javascript">
         window.alert("Bus Pass Accepted Successfully");
         window.location="AdminHome.jsp";
     </script>
     <%
              
              
   }else{
%>
     <script type="text/javascript">
         window.alert("Failed To Accept the File");
         window.location="AdminHome.jsp";
     </script>
     <%
}
    
}catch(Exception e){
  out.println(e);  
}


%>
