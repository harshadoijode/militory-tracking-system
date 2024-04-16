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
 body {
	background-image: url(images/newcity.jpg);
	background-position:center;
}
body,td,th {
	color: #000066;
	font-family: Courier New, Courier, monospace;
	font-weight: bold;
	font-size: 18px;
}
table{

 box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
background-image:linear-gradient(grey,white);
border-radius:20px;
border:0;
color:#FFFFFF;
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

<div align="center"><strong>Posts</strong></div>
<form id="form2" name="form2" method="post" action="">
  <table width="339" border="1" align="center">
    <tr>
      <td><div align="center">Wtire your  Post messages here
          <textarea name="message" cols="50" rows="5"></textarea>
          <input type="submit" name="post" value="Send Post" />
      </div></td>
    </tr>
  </table>
  <p>&nbsp;</p>
</form>
<% 
if(request.getParameter("post")!=null){

String s1=request.getParameter("message");

try{
int x=stmt.executeUpdate("insert into posts(message) values('"+s1+"')");
if(x!=0){

out.print("post sent Successfully");
}
}catch(Exception e){
out.print("this category is already exist");
}
}
 %>

  <table width="339" border="1" align="center">
  <tr>
      <td><div align="center">
        <p>Recent posts</p>
		 <% 
  
  rst=stmt.executeQuery("select * from posts");
  while(rst.next()){
  
   %>
        <p align="left"><%= rst.getString(1) %>        </p>
		
		<% } %>
      </div></td>
    <tr>
      <td><div align="center">
        <p>Wtire your  Answers here        </p>
        <p>
		<form action="" method="post">
          <select name="que">
		  <% 
  
  rst=stmt.executeQuery("select * from posts order by message desc");
  while(rst.next()){
  
   %>
            <option><%= rst.getString(1) %></option>
			<% } %>
          </select>
        </p>
        <p>  
          <textarea name="ans" cols="50" rows="5"></textarea>
          <input type="submit" name="reply" value="Send Answer" /></form>
          </p>
      </div></td>
    </tr>
  </table>

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

int x=stmt.executeUpdate("insert into location values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')");
if(x!=0){

out.print("New location added Successfully");
}
}
 %>
<% 
if(request.getParameter("reply")!=null){

String s1=request.getParameter("que");
String s2=request.getParameter("ans");


int x=stmt.executeUpdate("insert into reply values('"+s1+"','"+s2+"')");
if(x!=0){

out.print("Answered Successfully");
}
}
 %>




 
 
 
</body>
</html>
