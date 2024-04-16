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
.table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {background-color: #f2f2f2;}
.style1 {color: #0000FF}
.style2 {
	font-size: 16;
	font-weight: bold;
}
.style3 {font-size: 16px}
.style4 {font-size: 16}
</style>

</head>

<body>
<%@ include file="admintabs.html" %>
<%@ include file="db.jsp" %>
<div align="center" >Add Training Center Details </div>
<form id="form1" name="form1" method="post" action="">
  <table width="568" border="1" align="center">
    <tr>
      <td width="377" ><span class="style1 style1">Training center  name </span></td>
      <td width="175" ><input name="s1" type="text" id="s1" /></td>
    </tr>
    <tr>
      <td><span class="style1 style1">Address  </span></td>
      <td><textarea name="s2"></textarea></td>
    </tr>
    <tr>
      <td><span class="style1 style1">Phone Number </span></td>
      <td><textarea name="s3" id="s5"></textarea></td>
    </tr>
    <tr>
      <td><span class="style1 style1">Email address  </span></td>
      <td><input name="s4" type="text" id="s6" /></td>
    </tr>
    <tr>
      <td><span class="style1">About taining center  </span></td>
      <td><textarea name="s5"></textarea></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Add" /></td>
    </tr>
  </table>
</form>
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
 
 <p align="center" style="color:black;">

  Training center details</p>
  <div style="overflow-x: auto;">
<table width="1076" border="0" align="center">
  <tr bgcolor="#999999">
    <td width="193"><span class="style2">Training center name</span></td>
    <td width="142"><span class="style2">Address</span></td>
    <td width="128"><span class="style2">phone</span></td>
    
    <td width="94"><span class="style2">email</span></td>
    <td width="141"><span class="style2">Description</span></td>
	<td width="141"><span class="style2">ID</span></td>
	
   
   
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from trainingcenter");
  while(rst.next()){
  
   %>
  
  <form action="" method="get">
  <tr bgcolor="#003399">
    <td><span class="style3 style1"><input name="e1" type="text"  value="<%= rst.getString(1) %>"/></span></td>
    <td><span class="style3 style1"><input name="e2" type="text" value="<%= rst.getString(2) %>"/></span></td>
    <td><span class="style3 style1"><input name="e3" type="text" value="<%= rst.getString(3) %>"/></span></td>
    <td><span class="style3 style1"><input name="e4" type="text" value="<%= rst.getString(4) %>"/></span></td>
    <td><span class="style3 style1"><input name="e5" type="text" readonly="true" value="<%= rst.getString(5) %>"/></span></td>
    <td><span class="style3 style1"><input name="e6" type="text" value="<%= rst.getString(6) %>"/></span></td>
	 
   
  </form>
  <% } %>
</table>
</div>


</body>
</html>
