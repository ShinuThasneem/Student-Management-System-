<%@page import="project.connectionProvider"%>
<%@page import ="java.sql.*"%>

<%
String name=request.getParameter("name");
String course=request.getParameter("course");
String branch=request.getParameter("branch");
String roll=request.getParameter("roll");
String father=request.getParameter("father");
String gender=request.getParameter("gender");
 
 
 try{
 Connection con=connectionProvider.getcon();
 Statement s=con.createStatement();
 s.executeUpdate("insert into studentlist values('"+name+"','"+course+"','"+branch+"','"+roll+"','"+father+"','"+gender+"')");
 response.sendRedirect("admin.html");
 }
 catch(Exception e)
 {
	 System.out.println(e);
 }
 %>