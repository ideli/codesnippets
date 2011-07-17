import java.util.Enumeration;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;


public class DoGetDoPost_Servlet extends HttpServlet {

	private int w = 0;
	private int h = 0;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException {	
		res.setContentType("text/html"); 
		...
		out.println("(This world is "+w+" pixel wide and "+h+" pixel high)."); 
		...
	}
	
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		System.out.println("Reading configuration values (see web.xml)");
		/* list all the init parameters */
		Enumeration<String> iParams = config.getInitParameterNames();
		while (iParams.hasMoreElements()){
			String p = iParams.nextElement();
			System.out.println("config param: "+p);	
		}
		try{
			w=Integer.parseInt(config.getInitParameter("width"));
			h=Integer.parseInt(config.getInitParameter("height"));
		}catch(Exception e){
			System.out.println("Set Init Parameters width and height as numeric values!");
			w=-1;
			h=-1;
		}
	}
}