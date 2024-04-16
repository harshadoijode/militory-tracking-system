<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,java.io.File" errorPage="" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--

body {
	background-image: url(images/t1.jpg);
}

-->
</style>

</head>

<body>

<%@ include file="admintabs.html" %>
<%@ include file="db.jsp" %>
<form action="" method="post">
  <div align="center">
    <p class="style4">Select Category
	<select name="s1">
	 <option>-Select Category-</option>
	  <option>Army</option>
	  <option>Navy</option>
	  <option>Air Force</option>
	  </select> 
   
        <input type="submit" name="Submit" value="Search">
      </span><br/>
      </p>
  </div>
</form>

  <%  if(request.getParameter("Submit")!=null){ %>
 <form action="" method="post">
   <div align="center">
    
      
	
<select name="select">
	  <% rst=stmt.executeQuery("select * from materials where category='"+request.getParameter("s1")+"'");
	  while(rst.next()){ %>
        <option><%= rst.getString(2) %></option>
		<% } %>
      </select>      
         <input type="submit" name="view" value="view">
      
     
   </div>
 </form>
 <% } %>
 <center>
 <% if(request.getParameter("view")!=null){ %>
<iframe src="uploads/<%= request.getParameter("select") %>" align="middle" width="80%" height="500"> </iframe>
<% } %>
</center>
</body>
</html>
