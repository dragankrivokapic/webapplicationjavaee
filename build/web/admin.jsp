<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
	body{margin:0; font-size:14px; background:#FFF;}
	#box{width:400px; height:300px; margin:100px auto 0;}
	#tab_nav{margin:0; padding:0; height:25px; line-height:24px;}
	#tab_nav li{float:left; margin:0 3px; list-style:none; border:1px solid #999; border-bottom:none; height:24px; width:120px; text-align:center; background:#FFF;}
	a{font:bold 14px/24px , Verdana, Arial, Helvetica, sans-serif; color:green; text-decoration:none;}
	a:hover{color:red;}
	#tab_content{width:490px; height:273px; border:1px solid #999; font:bold 12px , Verdana, Arial, Helvetica, sans-serif; text-align:left; background:#FFF; overflow:hidden;}
	#t_1,#t_2,#t_3{width:100%; height:273px;}
</style>
<style type="text/css">
.cssmenu {
	width: 100%;
	height: 27px;
	margin: 0;
	padding: 0;
	background: #000000 top left repeat-x;
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
	background: transparent top left no-repeat;
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
	background: transparent top right no-repeat;
	cursor: pointer;
}


.cssmenu ul li a:hover,
.cssmenu ul li.active a {
	background: transparent top left no-repeat;
}
.cssmenu ul li a:hover span,
.cssmenu ul li.active a span {
	background: transparent top right no-repeat;
}

</style>


        <title>WEB SHOP Administracija</title>
    </head>
    <body>
     <div align="center">
 <div class='cssmenu'>
<ul>
   <li class='active '><a href='index.jsp'><span>Home</span></a></li>
   <li><a href='kupci.jsp'><span>Kupci</span></a></li>
   <li><a href='proizvodi.jsp'><span>Proizvodi</span></a></li>
   <li><a href='prodaja.jsp'><span>Prodaja</span></a></li>
</ul>
</div>    
        <%String msg=request.getParameter("msg");
if(msg!=null){
    %>
<label><font color="red"><%=msg%></font></label> 
<% 
}
 %>
        <h1>WEB SHOP Administracija</h1>
        
     
    
      

       
  

    


       
    </body>
</html>