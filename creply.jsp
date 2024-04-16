<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<%@ page import="com.oreilly.servlet.MultipartRequest" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mystyles.css" type="text/css" />
<title>Untitled Document</title>


<style type="text/css">
<!--
.style1 {
	color: #000000;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<%@ include file="usertabs.html" %>
<%@ include file="db.jsp" %>

<br />
<br />
<br />
<br />
<br />
  <table width="565" border="1" align="center">
  <tr>
      <td><div align="center">
        <p class="style1">Reply for posts </p>
		 <% 
  
  rst=stmt.executeQuery("select * from reply");
  while(rst.next()){
  
   %>
        <p style="background:#CCCCCC" align="left"><%= rst.getString(1) %>        </p>
		 <p style="background:#99CC99" align="right"><%= rst.getString(2) %>        </p>
		<% } %>
      </div></td>
      </table>

<p>&nbsp;</p>


 
 
 
</body>
</html>
