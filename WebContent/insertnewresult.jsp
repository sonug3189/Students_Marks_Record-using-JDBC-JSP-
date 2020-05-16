<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@page import="jdbc.ConnectionProvider" %>
  <%@page import="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String rollNo=request.getParameter("rollNo");
String x1=request.getParameter("x1");
String x2=request.getParameter("x2");
String x3=request.getParameter("x3");
String x4=request.getParameter("x4");
String x5=request.getParameter("x5");
String x6=request.getParameter("x6");
String x7=request.getParameter("x7");

try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("insert into result values('"+rollNo+"','"+x1+"','"+x2+"','"+x3+"','"+x4+"','"+x5+"','"+x6+"','"+x7+"')");
	response.sendRedirect("adminHome.jsp");
	}
catch(Exception e)
{
	out.println(e);
	}

%>
</body>
</html>