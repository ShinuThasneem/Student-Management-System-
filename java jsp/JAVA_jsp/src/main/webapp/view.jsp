<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result</title>
<link rel="stylesheet" href="view.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
</head>
<body>
<header class="header">
	 <img src="IMAGES/logo.png"  alt="..." id="logo">
      
	</header> 


<div class="container mt-5">

        <div class="row">

          <div class="col-md-8 mx-auto">

            <table class="table bg-white rounded border table-striped table-dark">
  <thead>
    <tr>
      <th scope="col">Roll number</th>
      <th scope="col">Physics</th>
      <th scope="col">Chemistry</th>
      <th scope="col">Mathematics</th>
      <th scope="col">Electronical</th>
            <th scope="col">Electronics</th>
                  <th scope="col">Chemistry lab</th>
                  <th scope="col">Physics lab</th>
            
      
    </tr>
  </thead>
  
  <%@page import="project.connectionProvider"%>
<%@page import ="java.sql.*"%>

<%

 try{
 Connection con=connectionProvider.getcon();
 Statement s=con.createStatement();
 ResultSet rs=s.executeQuery("select *from result");
 
 while(rs.next())
 {
	 
 %>
  
  
  
  
  <tbody>
    <tr>
      <th scope="row">
      <%=rs.getString(1) %></th>
      <td><%=rs.getString(2)%></td>
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(4)%></td>
      <td><%=rs.getString(5)%></td>
            <td><%=rs.getString(6)%></td>
            <td><%=rs.getString(7)%></td>
            <td><%=rs.getString(8)%></td>
      
      
    </tr>
    <%}}
    catch(Exception e)
    {
    	out.println(e);
    }%>
    
  </tbody>
</table>
            
          </div>
          
        </div>
        

      </div>


</body>
</html>