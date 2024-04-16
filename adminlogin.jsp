<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@  include file="hometabs.html" %>
<%@  include file="db.jsp" %>
<title>Untitled Document</title>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=password], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: auto;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}


input[type=button] {
  width: auto%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=submit]:hover {
  background-color: #45a049;
}

.logindiv {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  margin-left:20%;
  margin-right:20%;
}
</style>
<body><br />
<br />


<% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("username");
String s2=request.getParameter("password");



rst=stmt.executeQuery("select * from admin where username='"+s1+"' and password='"+s2+"'");
if(rst.next()){
%>
<script>

alert("login Successfull");
window.open("admintabs.html","_self");
</script>
<%
}else{
%>
<script>

alert("login Failed");

</script>
<%
}






}


%>


<table   width="1185" height="426" border="0" align="center">
  <tr>
   <td width="490" height="416"><div class="w3-content w3-section" style="max-width:500px"  > <img class="mySlides w3-animate-top" src="images/1.jpg" style="width:100%" /> <img class="mySlides w3-animate-bottom" src="images/2.jpg" style="width:100%" /> <img class="mySlides w3-animate-top" src="images/3.jpg" style="width:100%" /> </div></td>
    <td width="596"><div align="justify">
    <div class="logindiv" >
<h3 align="center" style="color:#0000CC">Admin Login Page</h3>
  <form action="" method="post">
    <label for="fname">Username</label>
    <input type="text"  name="username" placeholder="Username">

    <label for="lname">Password</label>
    <input type="password"  name="password" placeholder="Your Password.">

   
  
   <center><input align="middle" type="submit" name="Submit" value="Submit">

  </form>
</div></td>
   
  </tr>
</table>

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2500);    
}
</script>


</body>

</html>
