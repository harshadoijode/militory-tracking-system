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
<%@ include file="usertabs.html" %>
<%@ include file="db.jsp" %>

 
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
   
    <td width="148">&nbsp;</td>
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
