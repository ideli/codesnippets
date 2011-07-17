
	<% 
		if (request.getParameter("admin") != null){ 
				response.sendRedirect("/"+request.getContextPath()+"/login.xhtml"); 
		};
	%>
 