<%-- open in browser: http://localhost:8080/.../hello_with_date.jsp --%>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
  <title>JSP Demo 01: Simple JSP Tags and Java Snippets</title>
 </head>


 <body>
<%-- a jsp comment  --%>


   <%-- output current date:  --%>
   Hello, today is <%= new java.util.Date().toString() %>.



 </body>

</html>