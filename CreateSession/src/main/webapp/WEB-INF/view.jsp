<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="session.*"%>
<%@ page import="java.util.ArrayList" %>
 
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
      	}
      }
  } 
%> 
 
  
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
 <a href="SignUp.html">Click here to Sign Up for a session</a>
 <form method="POST" action="view.html">
 View Timetable by: 
 <select name="repeatFreq">
 			 <option value="one">One-Time</option>
  			 <option value="daily">Daily</option>
 			 <option value="weekly">Weekly</option>
 			 <option value="monthly">Monthly</option>
  			 <option value="yearly">Yearly</option>
</select>
<input type="submit" value="View TimeTable">
</form>
           
<%! String[] getCourses; %>    
<b>Courses You have Signed Up For:</b>
<% 
   getCourses = request.getParameterValues("course");
   if (getCourses != null) 
   {
	   String value = "";
	   out.println("<table border ='1'>"+  
	      "<tr>"+
	      "<th>Module</th>"+
	      "<th>Date</th>"+
	      "<th>Time</th>"+
	      "<th>Venue</th>"+
	      "<th>Lecturer</th>"+
	      "<th>Duration</th>"+
	      "<th>Compulsory</th>"+
		  "<th>Repeat Frequency</th>"+
	      "<th>Max Attendance</th>"+
	      "</tr>");
      for (int i = 0; i < getCourses.length; i++) 
      {
    	 value += "<tr>"+getCourses[i]+"</tr>;";
         out.println("<tr>"+getCourses[i]+"</tr>");
      }
      out.println("</table>");
      cookie.setValue(value);
   }
   else out.print("<b>You have not signed up for any courses!</b><br>");
%>  
 <a href="/CreateSession"><button type="button">Logout</button></a>
     </body>
 </html>