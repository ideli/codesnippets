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
 
 
Java Beans Demo
   <jsp:useBean id="usr" class="test.fhj.itm.DemoUserBean"  scope="session"/> 
   This is user <jsp:getProperty name="usr" property="username" />.<br />
   <%if (usr.getUsername().equals("unknown") ){ %>
   Setting new name...   <jsp:setProperty name="usr" property="username" value="max"/><br />
   Now the username is: <jsp:getProperty name="usr" property="username" /><br />
   <%} %>