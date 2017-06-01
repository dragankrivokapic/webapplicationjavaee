<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>

<%
String user=request.getParameter("user");
String pass=request.getParameter("pass");
 Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/WebShop", "test", "123");
        Statement st = conn.createStatement();  
        
           ResultSet rs=st.executeQuery("select AdminName,AdminPass from admins where AdminName='"+user+"' and AdminPass='"+pass+"'");
          int count=0;
          while(rs.next())
          {

                   count++;
          }

                    if(count>0)
          {
            out.println("welcome "+user);
            response.sendRedirect("admin.jsp?msg=welcome "+user +"   <a href=\"index.jsp\">loged out</a>");
            session.removeAttribute("user");
          }
          else
          {
                       response.sendRedirect("login.jsp?msg=Invalid Username or Password");
          }
%>
