<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ include file="db.jsp" %>
<%
MultipartRequest m = new MultipartRequest(request, C:/Program Files (x86)/Apache Software Foundation/Tomcat 5.5/webapps/GFGC_Militory");

String s1=m.getParameter("s1");
String s2=m.getOriginalFileName("fname");
int x=stmt.executeUpdate("insert into materials(category,filename) values('"+s1+"','"+s2+"')");
if(x!=0){
%>
<script>
alert("Exam materials uploaded Successfully");
window.open("materials.jsp","_self");
</script>
<%




}
//out.print("successfully uploaded");

%>

