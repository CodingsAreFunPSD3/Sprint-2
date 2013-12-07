<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="session.*"%>
 
<jsp:useBean id="sessionDAO" type="session.SessionDAO" scope="request" />
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <title>View TimeTable</title>        
    </head>
 
 <%
   Cookie cookie = null;
   Cookie[] cookies = null;
   // Get an array of Cookies associated with this domain
   cookies = request.getCookies();
   if( cookies != null){
      for (int i = 0; i < cookies.length; i++){
    	  if (!cookies[i].getName().contains("JSESSIONID")){
         cookie = cookies[i];
        // out.print("Value: " + cookie.getValue() +" <br/>");
      	}
      }
  } 
%> 
 
    <body>
 
 <form method="POST" action="once.html">
</form>
<table border ="1">  
      <tr>
      <th>Module</th>
      <th>Date</th>
      <th>Time</th>
      <th>Venue</th>
      <th>Lecturer</th>
      <th>Duration</th>
      <th>Compulsory</th>
      <th>Repeat Frequency</th>
      <th>Max Attendance</th>
      </tr>
    <% 
      for (String retval: cookie.getValue().split(";")){
        if (retval.contains("One-Time")) {
    	   out.println(retval);
    	  }
       }
     %>          
 </table>
 
 <a href="/CreateSession"><button type="button">Logout</button></a>
 
     </body>
 </html>