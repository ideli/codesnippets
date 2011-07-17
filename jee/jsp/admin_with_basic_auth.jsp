
<%-- 
Note: see the security restriction for page "admin_with_basic_auth.jsp" 
in file "web.xml":

 <!-- Require login for admin.jsp: -->
  <login-config>
    <auth-method>BASIC</auth-method>
    <realm-name>Application</realm-name>
  </login-config>
  <security-constraint>
    <web-resource-collection>
      <web-resource-name>ManageTheShop</web-resource-name>
      <url-pattern>/tests/admin.jsp</url-pattern>
    </web-resource-collection>
    <auth-constraint>
      <role-name>shopmanager</role-name>
    </auth-constraint>
  </security-constraint>
  <security-role>
    <role-name>shopmanager</role-name>
  </security-role>
  
   
and check the user and group settings 
in file "tomcat-users.xml" 

  <tomcat-users>
 	<role rolename="shopmanager" />
   	<user password="pa$w0rd" roles="shopmanager" username="admin"/>
  </tomcat-users>


for your server!!

--%>

You identified yourself (with basic authentication) as user: <%=request.getRemoteUser() %>.