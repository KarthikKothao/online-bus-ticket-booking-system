<%-- 
    Document   : Delete
    Created on : Apr 24, 2020, 9:36:37 AM
    Author     : KishanVenky
--%>


<%@page import="com.mail.ss"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.GenerateQRCode"%> 
<%@page import="java.util.HashMap"%>
<%@page import="com.google.zxing.qrcode.decoder.ErrorCorrectionLevel"%>
<%@page import="com.google.zxing.EncodeHintType"%>
<%@page import="java.util.Map"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.database.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%try{
    
   String username=request.getParameter("username"); 
       
      
   Connection con=DbConnection.getConnection();
   Statement st=con.createStatement();
   int i=st.executeUpdate("update applybuspass set status='Accepted' where username='"+username+"'");
   if(i>0){
       String sql="select * from  applybuspass where  username='"+username+"' ";
       ResultSet rs=st.executeQuery(sql);
        rs.next();
         String data = "User NAme: "+username+",UserId : "+rs.getString(5)+",Email Id : "+rs.getString(6)+", From  : "+rs.getString(2)+", to  : "+rs.getString(3);
                System.out.println("data:: "+data);
       String fpath=request.getRealPath("images");
       System.out.println("path:: "+fpath);
       String filename=username+".png"; 
         File f= new File(fpath+"\\"+filename);   
         String path=fpath+"\\"+filename; 
String qrcode="images"+"/"+filename;          
        String charset = "UTF-8"; 
String message="your Cloud Bus Pass Ticket Genarated Successfully....      Happy Journey......";          
Map<EncodeHintType, ErrorCorrectionLevel> hashMap = new HashMap<EncodeHintType, ErrorCorrectionLevel>();   
hashMap.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.L);   
GenerateQRCode.generateQRcode(data, path, charset, hashMap, 200, 200); 
       ss.mail(rs.getString(6), message);
       
   int i1=st.executeUpdate("update applybuspass set qrcode='"+qrcode+"' where username='"+username+"'"); 
      if(i1>0){ 
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
     } 
}catch(Exception e){
  out.println(e);  
}


%>
