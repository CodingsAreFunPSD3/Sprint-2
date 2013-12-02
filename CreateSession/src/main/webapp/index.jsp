<%-- <jsp:forward page="session.html" />--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>

</head>
<body>
  
<% if ("admin".equals(request.getParameter("userName")) && "password1".equals(request.getParameter("password"))) { %>
<jsp:forward page="session.html" />
<% } %>

<% if ("student1".equals(request.getParameter("userName")) && "123456".equals(request.getParameter("password"))) { %>
<jsp:forward page="view.html" />
<% } %>

        <h1>Please login</h1>
    
        <form method="post">
		Username: <input type="text" name="userName"/>
		<br />
		Password: <input type="password" name="password"/>
		<br />
		<input type="submit" value="Submit" />
		
		</form>

 <% 
if(request.getParameter("userName") != null && request.getParameter("password") != null ) {
%>
 Wrong Username or Password! 
<%
}
%>
</body>
</html>