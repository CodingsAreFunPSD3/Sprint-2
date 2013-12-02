<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="session.*"%>
 
<jsp:useBean id="sessionDAO" type="session.SessionDAO" scope="request" />
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <title>View TimeTable</title>        
    </head>
 
    <body>
 
 <form method="POST" action="weekly.html">
 <a href="view.html">Click here to go back</a>
</form>
<table border ="1">  
      <tr>
      <th>Date</th>
      <th>Time</th>
      <th>Venue</th>
      <th>Lecturer</th>
      <th>Duration</th>
      <th>Compulsory</th>
  <!--<th>Repeat Frequency</th> -->
      <th>Max Attendance</th>
      </tr>
      <% for (Session sessionAll : sessionDAO.getWeeklySession()) { %>
            <%= sessionAll %> 
        <% } %>                
 </table>
 
 <a href="/CreateSession"><button type="button">Logout</button></a>
 
     </body>
 </html>