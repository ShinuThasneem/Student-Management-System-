<%@page  import="project.connectionProvider"%>
<%@page import="java.sql.*"%>

<%String rollnu=request.getParameter("roll");
String s1=request.getParameter("physics");
String s2=request.getParameter("chemistry");
String s3=request.getParameter("mathematics");
String s4=request.getParameter("electrical");
String s5=request.getParameter("electronic");
String s6=request.getParameter("chemistrylab");
String s7=request.getParameter("physicslab");
String s8=request.getParameter("hindi");


%>

<%
try{
	Connection con=connectionProvider.getcon();
	 Statement s=con.createStatement();
	s.executeUpdate("insert into result values('"+rollnu+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"')");
	response.sendRedirect("insert.html");
}
catch(Exception e){
System.out.println(e);
}
%>