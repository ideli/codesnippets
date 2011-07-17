 JSP and Cookies:
	<ul>
	<%  Cookie userCookie=null;
		Cookie[] cks = request.getCookies();
		System.out.println("Cookies: "+cks);
		if (cks!=null) for (Cookie c: cks){
			out.println("<li>cookie-name="+c.getName());
			out.println("<li>cookie-domain="+c.getDomain());
			out.println("<li>cookie-path="+c.getPath());
			out.println("<li>cookie-value="+c.getValue());
			if (c.getName().equals("visits")) 
				userCookie=c;
		};
		if(userCookie==null){
			userCookie = new Cookie("visits", "1"); 
			userCookie.setMaxAge(300); 
			userCookie.setDomain("localhost");
			userCookie.setVersion(1);
			System.out.println("new cookie...");
		}else
			try{ 
				Integer n=Integer.parseInt(userCookie.getValue());
				n+=1;
				System.out.println("modified cookie... n="+n);
				userCookie.setValue(n.toString());
			}catch(Exception e){ System.out.println(e);}
		response.addCookie(userCookie);
	%> 
	</ul>
	<% out.println("set cookie "+userCookie); %>
	<% out.println("with name "+userCookie.getName()); %>
	<% out.println("and value "+userCookie.getValue()); %>
