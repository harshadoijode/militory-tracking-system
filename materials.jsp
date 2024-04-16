<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Guru File</title>
<style type="text/css">
<!--
.style1 {color: #000033}
.style2 {font-weight: bold}
.style4 {color: #000033; font-weight: bold; }
-->
</style>
</head>
<body>
<%@ include file="admintabs.html" %>
<%@ include file="db.jsp" %>
<div align="center">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p ><span class="style1"><span class="style2"><a>View Exam Materials:</a>
    
    
      </span></span></p>
  <p >&nbsp;</p>
</div>
<form action="Upload.jsp" method="post" enctype="multipart/form-data">
  <div align="center">
    <p class="style4">Select Category
	<select name="s1">
	  <option>Army</option>
	  <option>Navy</option>
	  <option>Air Force</option>
	  </select> </p>
    <p><span class="style4">Select File:
        <input type="file" name="fname" required/><br>

        <input type="submit" name="Submit" value="Upload Document">
      </span><br/>
      </p>
  </div>
</form>
</body>
</html>