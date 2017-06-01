<%-- 
    Document   : poruci
    Created on : Apr 17, 2015, 6:44:55 PM
    Author     : korisnik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%
  Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/WebShop", "test", "123");
  
  PreparedStatement psInsertRecord=null;
  String sqlInsertRecord=null;
        
  int CustID=Integer.parseInt(request.getParameter("CUSTID"));
  String CNAME=request.getParameter("CUSTNAME");
  String PHONE=request.getParameter("CUSTPHONE");
  String MAIL=request.getParameter("CUSTMAIL");
  String ADDR=request.getParameter("CUSTADDR");
  int OPID=Integer.parseInt(request.getParameter("OPID"));
  
        
  try
  {
   sqlInsertRecord="insert into orders (CUSTID, CUSTNAME, CUSTPHONE, CUSTMAIL, CUSTADDR, OPID) values(?,?,?,?,?,?)";
   psInsertRecord=conn.prepareStatement(sqlInsertRecord);
   psInsertRecord.setInt (1,CustID);
   psInsertRecord.setString(2,CNAME);
   psInsertRecord.setString(3,PHONE);
   psInsertRecord.setString(4,MAIL);
   psInsertRecord.setString(5,ADDR);
   psInsertRecord.setInt(6,OPID);
  
   
            
   psInsertRecord.executeUpdate();
  }
  catch(Exception e)
  {
     response.sendRedirect("prodaja.jsp");
  }
  

      
    try{
      if(psInsertRecord!=null)
      {
       psInsertRecord.close();
      }
      
      if(conn!=null)
      {
       conn.close();
      }
    }
    catch(Exception e)
    {
      e.printStackTrace(); 
    }
%>
<html>
 
<body>
    Hvala Na Kupovini!
</body>
</html>