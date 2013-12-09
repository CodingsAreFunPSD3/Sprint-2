<%@page import="javax.sound.sampled.ReverbType"%>
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
   Cookie[] cookiesArray = null;
   cookiesArray = request.getCookies();
   if (cookiesArray != null){
      for (int i = 0; i < cookiesArray.length; i++){
    	  if (!cookiesArray[i].getName().contains("JSESSIONID")){
         cookie = cookiesArray[i];
         //out.print("Value: " + cookie.getValue() +" <br/>");
      	}
      }
  } 
%> 
 
    <body>
 
 <form method="POST" action="daily.html">
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
      for (String getResults : cookie.getValue().split(";")){
        if (getResults.contains("Daily")) {
        	out.println(getResults);
    	  }
       }
     %>
 </table>
 
 <a href="/CreateSession"><button type="button">Logout</button></a>
 
     </body>
 </html>