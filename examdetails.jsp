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
<div align="center" style="color:Black"><strong>Add Exam Details </strong></div>
<form id="form1" name="form1" method="post" action="">
  <table width="auto" border="1" align="center">
    <tr>
      <td ><span class="style1 style1">Enter Exam name </span></td>
      <td ><input name="s1" type="text" id="s1" /></td>
    </tr>
    <tr>
      <td><span class="style1 style1">Exam Date  </span></td>
      <td><input name="s2" type="date" id="s2" /></td>
    </tr>
    <tr>
      <td><span class="style1 style1">Eligibility</span></td>
      <td><textarea name="s3" id="s5"></textarea></td>
    </tr>
    <tr>
      <td><span class="style1 style1">helpline Numbers </span></td>
      <td><input name="s4" type="text" id="s6" /></td>
    </tr>
    <tr>
      <td><span class="style1">Description </span></td>
      <td><textarea name="s5"></textarea></td>
    </tr>
	 <tr>
      <td><span class="style1">Reschedule date </span></td>
      <td><input name="s6" type="date" id="s2" /></td>
    </tr>
	 <tr>
      <td><span class="style1">Category</span></td>
      <td><select name="s7">
	  <option>Army</option>
	  <option>Navy</option>
	  <option>Air Force</option>
	  </select></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Submit" /></td>
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
String s6=request.getParameter("s6");
String s7=request.getParameter("s7");
try{
int x=stmt.executeUpdate("insert into exams(examname,date,eligibility,contacts,description,rescheduledate,category) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"',,'"+s7+"')");
if(x!=0){
%>
<script>
alert("Exam Details added Successfully");
</script>
<%
}
}catch(Exception e){
%>
<script>
alert("Exception...!");
</script>
<%
}
}
 %>
 
 <p align="center" style="color:black;">

  Selection details</p>
  <div style="overflow-x: auto;">
<table width="1076" border="0" align="center">
  <tr bgcolor="#999999">
    <td width="193"><span class="style2">Exam name</span></td>
    <td width="142"><span class="style2">Date</span></td>
    <td width="128"><span class="style2">Eligibility</span></td>
    
    <td width="94"><span class="style2">Helpline Numbers</span></td>
    <td width="141"><span class="style2">Description</span></td>
	<td width="141"><span class="style2">ID</span></td>
	  <td width="141"><span class="style2">Reschedule date</span></td>
	    <td width="141"><span class="style2">Category</span></td>
   
   
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from exams");
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
	  <td><span class="style3 style1"><input name="e7" type="text" value="<%= rst.getString(7) %>"/></span></td>
	   <td><span class="style3 style1"><input name="e7" type="text" value="<%= rst.getString(7) %>"/></span></td>
   
  </form>
  <% } %>
</table>
</div>

<% 
if(request.getParameter("update")!=null){
try{
int x=stmt.executeUpdate("update selection set name='"+request.getParameter("e1")+"',address='"+request.getParameter("e2")+"',qualification='"+request.getParameter("e3")+"',phone='"+request.getParameter("e4")+"',email='"+request.getParameter("e5")+"',password='"+request.getParameter("e6")+"' where email='"+request.getParameter("e5")+"' ");
if(x!=0)
{
response.sendRedirect("selectiondata.jsp");
%>
<script>
alert("Date Updated");
</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}




if(request.getParameter("delete")!=null){
try{
int x=stmt.executeUpdate("delete from selection where id='"+request.getParameter("id")+"'");
if(x!=0){

%>
<script>
alert("Date Deleted successfully");
window.open("seletiondata.jsp","_self");

</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}
 %>

</body>
</html>
