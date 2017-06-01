<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ORDER PRODUCT</title>
        <style type="text/css">
.cssmenu {
	width: 100%;
	height: 27px;
	margin: 0;
	padding: 0;
	
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
    </head>
    <body>
        
       <div class='cssmenu'>
<ul>
   <li class='active '><a href='index.jsp'><span>Home</span></a></li>   
   <li><a href='kupci.jsp'><span>Kupci</span></a></li>
   <li><a href='proizvodi.jsp'><span>Proizvodi</span></a></li>
   <li><a href='prodaja.jsp'><span>Prodaja</span></a></li>
   
</ul>
</div> 
       <form name="frm" action="poruci.jsp">
       <div align="center">
           <h1>PRODAJA</h1>
       <table>
       <tr><td bgcolor="##FFFFFF">ID </td><td> <input type="text" name="CUSTID"></td></tr>
       <tr><td bgcolor="##FFFFFF">Ime </td><td> <input type="text" name="CUSTNAME"></td></tr>
       <tr><td bgcolor="##FFFFFF">Telefon </td><td> <input type="text" name="CUSTPHONE"></td></tr>
       <tr><td bgcolor="##FFFFFF">Email</td><td>  <input type="text" name="CUSTMAIL"></td></tr>
       <tr><td bgcolor="##FFFFFF">Adresa</td><td>  <input type="text" name="CUSTADDR"></td></tr>
       <tr><td bgcolor="##FFFFFF">ID Proizvoda</td><td>  <input type="text" name="OPID"></td></tr>
       </table>
      <input type="submit" name="submit" value=" Submit ">
       </div>
       </form>
    </body>
</html>