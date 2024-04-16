<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
 body {
	background-image: url(images/texture1.jpg);
}
body,td,th {
	color: #FFFFFF;
	font-family: Courier New, Courier, monospace;
	font-weight: bold;
	font-size: 24px;
}

-->
</style>
<style>
.style5 {color: #FFFF00}
</style>

</head>

<body>
<%@ include file="usertabs.html" %>
<%@ include file="db.jsp" %>
<div align="center" >Add Training Center Details </div>
<% 
  
  rst=stmt.executeQuery("select * from trainingcenter");
  while(rst.next()){
  
   %>
<form id="form1" name="form1" method="post" action="">
  <table width="568" border="1" align="center">
    <tr>
      <td width="377" ><span class="style5">Training center  name </span></td>
      <td width="175" ><%= rst.getString(1) %></td>
    </tr>
    <tr>
      <td><span class="style5">Address  </span></td>
      <td><%= rst.getString(2) %></td>
    </tr>
    <tr>
      <td><span class="style5">Phone Number </span></td>
      <td><%= rst.getString(3) %></td>
    </tr>
    <tr>
      <td><span class="style5">Email address  </span></td>
      <td><%= rst.getString(4) %></td>
    </tr>
    <tr>
      <td><span class="style5">About taining center  </span></td>
      <td><%= rst.getString(5) %></td>
    </tr>
  </table>
</form>
<% } %>

<p>&nbsp;</p>

<% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("s1");
String s2=request.getParameter("s2");
String s3=request.getParameter("s3");
String s4=request.getParameter("s4");
String s5=request.getParameter("s5");

try{
int x=stmt.executeUpdate("insert into trainingcenter(name,address,phone,email,description) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
if(x!=0){
%>
<script>
alert("Training center Details added Successfully");
</script>
<%
}
}catch(Exception e){
out.print(e);
%>
<script>
alert("Exception...!");
</script>
<%
}
}
 %>
 



</body>
</html>
