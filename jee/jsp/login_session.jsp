<form action="login_logout.jsp" method="post">
<% 

	if (session.isNew())
		session.setAttribute("username","enter username");

	String user =(String)session.getAttribute("username");;
	if (request.getParameter("action")!=null){
		if (request.getParameter("action").equals("Login")){
			user=request.getParameter("user");
			session.setAttribute("username",user);
		}
		
		if (request.getParameter("action").equals("Logout")){
			session.invalidate();
			user="---";
		}
	}
		
	java.util.Enumeration<String> pnames=request.getParameterNames();
	while(pnames.hasMoreElements()){
		String p = pnames.nextElement();
		System.out.println("  REQ-PARAM "+p+": "+request.getParameter(p));
	}

%>
Username: <input type="text" name="user" value="<%=user %>" size="13" /> 
<input type="submit" name="action" value="Login" />
<input type="submit" name="action" value="Logout" />
<input type="submit" name="reload" value="Reload page" />


</form>
