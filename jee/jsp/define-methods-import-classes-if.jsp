   <%-- import functionality:  --%>
   <%@ page import="java.util.Date"%>
   
   <%! String now(){	return new Date().toString();}; %>
   
   Hello, today is <%= now() %>.
   
   <%! int cnt=0; %>
   <% cnt+=1; %>
   
   <% if ( cnt>1 ){ %> 
   	
	   	Hello, the <%=cnt%>. time.
   
	<% }else{ %> 
	
		Hello the first time!.
	
	<% }%>
