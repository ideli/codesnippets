package at.fhj.itm.util;

@WebFilter(
		urlPatterns = { 
				"/ParamLogger", 
				"/*"
		}, 
		initParams = { 
				@WebInitParam(	name = "debugLevel", value = "1", 
								description = "Set debug level 0 (off)...3 (full)")
		})
public class ParamLogger implements Filter {
    public ParamLogger() {    	}

	public void destroy() {		}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

		System.out.println("server info:    " +request.getServletContext().getServerInfo());
		
		Enumeration<String> params = request.getParameterNames();
	    while (params.hasMoreElements()) {
	        String name = params.nextElement();
	        String value = request.getParameter(name);
	        System.out.println(name + " = " + value);
	    }
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {	}

}
