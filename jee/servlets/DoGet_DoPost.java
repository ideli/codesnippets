	protected void doGet(HttpServletRequest request, HttpServletResponse res) throws ServletException, IOException {
		this.doPost(request, res);
	}	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException {	
		res.setContentType("text/html"); 
		...
	}