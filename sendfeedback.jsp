<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
  <%@ include file="usertabs.html" %>
  <%@ include file="db.jsp" %>
<!DOCTYPE html>
<html>

<head>
<style type="text/css">
<!--
body,td,th {
	font-family: Courier New, Courier, monospace;
	color: #000033;
	font-weight: bold;
	font-size: 18px;
}
-->
</style>
 
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head>

<body>
 <div align="center">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p><a>Send Feedback</a>
    
    
      </p>
</div>
<form action="" method="post" >
  <div align="center">
    <table width="561" border="1">
     
      <tr>
        <td>Name</td>
       <td><input type="text" name="f1" ></td>
      </tr>
      <tr>
        <td>Feedback </td>
        <td><input type="text" name="f2"></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input type="submit" name="Submit" value="Submit"></td>
      </tr>
    </table>
    <p>&nbsp;</p>
    <p><br/>
    </p>
  </div>
</form>

<% 

if(request.getParameter("Submit")!=null){
try
{


String s1=request.getParameter("f1");
String s2=request.getParameter("f2");


int x=stmt.executeUpdate("insert into feedback(name,feedback) values('"+s1+"','"+s2+"')");


						if(x!=0){
							out.println("Feedback send Sucessfully");
							
						}
}catch(Exception e){
out.println(e);
}
}
 %>
</body>

</html>