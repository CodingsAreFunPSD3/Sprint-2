<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="session.*"%>
 
<jsp:useBean id="sessionDAO" type="session.SessionDAO" scope="request" />
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <title>View TimeTable</title>        
    </head>
 
 <% if ("one".equals(request.getParameter("repeatFreq"))) { %>
<jsp:forward page="/once.html" />
<% } %>

 <% if ("daily".equals(request.getParameter("repeatFreq"))) { %>
<jsp:forward page="/daily.html" />
<% } %>
 
 <% if ("weekly".equals(request.getParameter("repeatFreq"))) { %>
<jsp:forward page="/weekly.html" />
<% } %>
 
 <% if ("monthly".equals(request.getParameter("repeatFreq"))) { %>
<jsp:forward page="/monthly.html" />
<% } %>

 <% if ("yearly".equals(request.getParameter("repeatFreq"))) { %>
<jsp:forward page="/yearly.html" />
<% } %>
 
    <body>
 
 <form method="POST" action="view.html">
 
 View Timetable by: 
 <select name="repeatFreq">
 			 <option value="one">One Time</option>
  			 <option value="daily">Daily</option>
 			 <option value="weekly">Weekly</option>
 			 <option value="monthly">Monthly</option>
  			 <option value="yearly">Yearly</option>
</select>
<input type="submit" value="View TimeTable">
</form>
 
 <a href="/CreateSession"><button type="button">Logout</button></a>
 
     </body>
 </html>