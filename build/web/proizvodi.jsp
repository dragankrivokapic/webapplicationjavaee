<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WEB-SHOP Proizvodi</title>
    </head>
    <body>
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

 <div align="center">
 <div class='cssmenu'>
<ul>
   <li class='active '><a href='index.jsp'><span>Home</span></a></li>
   <li><a href='kupci.jsp'><span>Kupci</span></a></li>
   <li><a href='proizvodi.jsp'><span>Proizvodi</span></a></li>
   <li><a href='prodaja.jsp'><span>Prodaja</span></a></li>
</ul>
</div> 
 </div>
      
<%
       Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/WebShop", "test", "123");
        Statement st = conn.createStatement();
        if(request.getParameter("del")!=null)
                st.execute("delete from products where ID="+request.getParameter("del"));
        if(
           request.getParameter("ID")!=null &&
           request.getParameter("proizvod")!=null &&
           request.getParameter("kolicina")!=null &&
           request.getParameter("cena")!=null             
           )
                st.execute("update products set proizvod='" + request.getParameter("proizvod") +
                        "', kolicina='"+request.getParameter("kolicina") +
                         "', cena='"+request.getParameter("cena") +        
                        "' where ID="+request.getParameter("ID"));
        if(
           request.getParameter("ID")==null &&
           request.getParameter("proizvod")!=null &&
           request.getParameter("kolicina")!=null &&
           request.getParameter("cena")!=null 
           )
                st.execute("insert into products (proizvod,kolicina,cena) values ('" + request.getParameter("proizvod") +
                        "', '"+request.getParameter("kolicina")+
                        "', '"+request.getParameter("cena")+"')");

        ResultSet rs = st.executeQuery("select * from products");
        out.print("<table border='1' >");
                out.print("<tr bgcolor='##FFFFFF'>");
                out.print("<td >id</td><td>Proizvod</td><td>Kolicina</td><td>Cena</td><td></td><td></td>");
                out.print("</tr>");
        while(rs.next())
            {
                out.print("<tr><form action='"+request.getRequestURL()+"' method='post'>");
                out.print("<td>" + rs.getString(1) + "</td>");
                out.print("<input type='hidden' name='ID' value='" + rs.getString(1) + "' />");
                out.print("<td><input type='text' name='proizvod' value='" + rs.getString(2) + "'/></td>");
                out.print("<td><input type='text' name='kolicina' value='" + rs.getString(3) + "'/></td>");
                out.print("<td><input type='text' name='cena' value='" + rs.getString(4) + "'/></td>");
                out.print("<td><a href='"+request.getRequestURL()+"?del="+rs.getString(1)+"'>Delete</a></td>");
                out.print("<td><input type='submit' value='Update'></td>");
                out.print("</tr></form>");
            }
               out.print("<tr bgcolor='##FFFFFF'>");
                out.print("<td >id</td><td>Proizvod</td><td>Kolicina</td><td>Cena</td><td></td><td></td>");
                out.print("</tr>");
                out.print("<tr><form action='"+request.getRequestURL()+"' method='post'>");
                out.print("<td >id</td><td><input type='text' name='proizvod' /></td><td><input type='' name='kolicina' /></td><td><input type='text' name='cena' /></td><td></td>");
                out.print("<td><input type='submit' value='Insert'></td>");
                out.print("</form></tr>");
                out.print("</table>");
                %>




    </body>
</html>

