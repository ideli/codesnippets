   Some Server infos:<br />
   <small>
    WebContainer supports Java Servlet API <%= application.getMajorVersion()%>.<%= application.getMinorVersion()%><br />
	ServletName=<%=config.getServletName()%><br />
	ServerName=<%=request.getServerName()%> <br />
	Secure=<%=request.isSecure()%><br />
	SessionID=<%=session.getId()%><br />
	User-Object in Session=<%=session.getAttribute("user")%><br />
   </small>  
   
   
   <!--  Debug Level set in web.xml:
	 <context-param>
  		<description>Set the debug level: 0=None... 9=full.</description>
  		<param-name>debugLevel</param-name>
  		<param-value>3</param-value>
  	</context-param>
	 -->
   Debug Level=<%=config.getServletContext().getInitParameter("debugLevel") %>