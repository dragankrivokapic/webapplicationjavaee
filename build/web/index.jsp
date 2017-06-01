<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Web Shop</title>
    </head>
       
        <%
        Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/WebShop", "test", "123");
        Statement st = conn.createStatement();
        
        PreparedStatement psSelectRecord=null;
        ResultSet rsSelectRecord=null;
        String sqlSelectRecord=null;
   
        sqlSelectRecord ="SELECT * FROM PRODUCTS";
        psSelectRecord=conn.prepareStatement(sqlSelectRecord);
        rsSelectRecord=psSelectRecord.executeQuery();
%>

<style>
td
{
text-align:center
}
</style>
<style type="text/css">
.cssmenu {
	width: 100%;
	height: 27px;
	margin: 0;
	padding: 0;
	background: #000000 
}
.cssmenu ul {
	list-style: none;
	margin: 0;
	padding: 0;
}
.cssmenu ul li {
	float: left;
	margin: 0;
	padding: 0;
	
}
.cssmenu ul li a {
	display: block;
	height: 27px;
	padding-left: 35px;
	float: left;
	text-transform: uppercase;
	font-family: 'Helvetica Neue',helvetica,'microsoft sans serif',arial,sans-serif;
	font-size: 70%;
	color: #FFFFFF;
	text-decoration: none;
}
.cssmenu ul li a span {
	display: block;
	float: left;
	height: 22px;
	padding-top: 5px;
	padding-right: 35px;
	cursor: pointer;
}
.cssmenu ul li a:hover,
.cssmenu ul li.active a {
	
}
.cssmenu ul li a:hover span,
.cssmenu ul li.active a span {
	
}
</style>

<body>
 <div align="center">
 <div class='cssmenu'>
<ul>
   <li class='active '><a href='index.jsp'><span>Home</span></a></li>
   <li><a href='login.jsp'><span>Login</span></a></li>  
</ul>
</div> 
 </div>
 <div align="center">
     <h1>Trenutno u prodaji</h1>
 <table border='0' cellpadding='6' width='700'>
 <tr>
   <td  bgcolor="#32CCFF">PNO</td>
   <td  bgcolor="#32CCFF">ID</td>
   <td  bgcolor="#32CCFF">Proizvod</td>
   <td  bgcolor="#32CCFF">Kolicina</td>
   <td  bgcolor="#32CCFF">Cena</td> 
   <td  bgcolor="#32CCFF">Dodaj u korpu</td> 
   </tr>
  <%
  int cnt=1;
  while(rsSelectRecord.next())
  {
  %>
   <tr>
   <td bgcolor="#FF9900"><%=cnt%></td>
   <td><%=rsSelectRecord.getInt("ID")%></td>
   <td><%=rsSelectRecord.getString("proizvod")%></td>
   <td><%=rsSelectRecord.getInt("kolicina")%></td>
   <td><%=rsSelectRecord.getString("cena")%></td> 
   <td><b><span lang="en-us"><a href="prodaja.jsp">BUY</a></span></b></td>
   <tr>
  <br>
  <%
   cnt++;   
  } 
  %>
  </table>
 </div>
</body>
</html>
<%
try{
          if(psSelectRecord!=null)
          {
            psSelectRecord.close();
          }
          if(rsSelectRecord!=null)
          {
            rsSelectRecord.close();
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