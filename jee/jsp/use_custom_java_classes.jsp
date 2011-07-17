<!-- 
first define a bean you want to use:

package test.fhj.itm;

public class DemoUserBean {
	private String username="unknown";
	
	public DemoUserBean(){
		username="unknown";
	}
	public DemoUserBean(String newUsername){
		username=newUsername;
	}
	public void setUsername(String newUsername){
		this.username=newUsername;
	}
	public String getUsername(){
		return this.username;
	}
	public String toString(){
		return "This is User "+this.username;
	}
}
 -->
 
 <%-- you can use classes this way (BUT: better see "using_javabeans.jsp") --%>
 <% test.fhj.itm.DemoUserBean ub = new test.fhj.itm.DemoUserBean();
  	 ub.setUsername("Miriam");
  %>
  Current user: <%= ub.getUsername() %>