<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<link rel="stylesheet" href="student1.css">
</head>
 
<body>
<%

    String name = request.getParameter("name");
    String room = name.replace(" ", ""); // strNew is 'bcdDCBA123'

  %>
   <form action="Register">
       
 
<table align="center" cellpadding = "10">

<tr>
<td>Student Name:</td>
<td><input type="text" name="name">
</td>
</tr>

 <tr>
<td>Class:</td>
 <td>
<select name="class" id="Year">
           <option value="FirstYearSenior">First Year(Senior)</option>
           <option value="FirstYearJunior">First Year(Junior)</option>
           <option value="SecondYear">Second Year</option>
           <option value="ThirdYear">Third Year</option>
           <option value="FourthYear">Fourth Year</option>
           <option value="FinalYear">Final year</option>
 </select>
</td>
</tr>
<tr>
<td>Roll Number:</td>
<td>
<input type="text" name="rollno">
</td>
<tr>
<td>Address:</td>
<td>
<input type="text" name="address">
</td>
</tr>
<tr>
 <td>Phone Number:</td>
< td><input type="text" name="phone">
</td>
</tr>
<tr>
<td>Gmail:</td>
<td><input type="text" name="gmail"></td>
</tr>
<tr>
<td>Room Number:</td>
<td><input type="text" name="roomno" value="<%=room%>" readonly>
</td>
</tr>

 <tr>
<td colspan="2" align="center">
<input type="submit" value="Add">

</td>
</tr>
</table>
  
   </form>
   
    <% 
 %>

</body>
</html>