<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="session.*"%>
 
<jsp:useBean id="sessionDAO" type="session.SessionDAO" scope="request" />
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <title>Create A New Teaching Session</title>
        
<script>
function showMessage(){
alert("Session Saved!");
}
</script>
 
    </head>
 
    <body>
        <form method="POST" action="session.html">
        <table border="1">
		<tr>
		<th colspan ="2">Input the required fields</th>
		</tr>
		<tr>
		<td> Course: </td>
		<td><input type="text" name="course" /></td>
		</tr>
		<tr>
		<tr>
		<td> Course Module: </td>
		<td><input type="text" name="module" /></td>
		</tr>
		<tr>
		<td> Date: </td>
		<td><input type="text" name="date" /></td>
		</tr>
		<tr>
		<td> Time: </td>
		<td><input type="text" name="time" /></td>
		</tr>
		<tr>
		<tr>
		<td> Venue: </td>
		<td><input type="text" name="venue" /></td>
		</tr>
		<tr>
		<td>Lecturer:</td>
		<td><input type="text" name="lect" /></td>
		</tr>
		<tr>
		<td>Duration:</td>
		<td><input type="text" name="duration" /></td>
		</tr>
		<tr>
		<td>Compulsory:</td>
		<td><input  type="checkbox" name="comp" value="Compulsory" checked/></td>
		</tr>
		<tr>
		<td>Repeat Frequency:</td>
		<td><select name="repeatFreq">
 			 <option value="One-Time">One-Time</option>
  			 <option value="Daily">Daily</option>
 			 <option value="Weekly">Weekly</option>
 			 <option value="Monthly">Monthly</option>
  			 <option value="Yearly">Yearly</option>
		</select>
		</td>
		</tr>
		<tr>
		<td>Maximum Attendance:</td>
		<td><input type="text" name="maxAttend" /></td>
		</tr>
		</table>
            <input type="submit" value="Add" onclick="showMessage()" />
            <a href="/CreateSession"><button type="button">Logout</button></a>
        </form>
     </body>
 </html>