
protected void doPost(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException {	
		res.setContentType("text/html"); 
		
		Float result=0.0f;
		String user = req.getParameter("user");
		if (user==null) user = "enter username";
		float h=175f;float w=65f;
		try{
			 h = Float.parseFloat(req.getParameter("h"));
			 w = Float.parseFloat(req.getParameter("w"));
		}catch(Exception e){
			System.out.println("please provide numeric params for h and w");
		}
		result=w/((h/100)*(h/100));
		PrintWriter out = res.getWriter();
		String htmlText=
			 "<html>"+
			 "<head><title>Calc the BMI</title></head>"+
			 " <body>"+
			 "  <form action=\""+req.getContextPath()+"/calcBMI\" method=\"post\">"+
			 "    UserName: <input type=\"text\" name=\"user\" size=\"12\" value=\""+user+"\"e>"+
			 "    Height(cm): <input type=\"text\" name=\"h\" size=\"12\" value=\""+h+"\"e>"+
			 "    Weight(kg): <input type=\"text\" name=\"w\" size=\"12\" value=\""+w+"\"e>"+
			 "              <input type=\"submit\" value=\"Calc-BMI\">"+

			 "  </form>"+
			 "  BMI="+result+
			 " </body>"+
			 "</html";
		out.println(htmlText);
		out.flush();
		out.close();
	}