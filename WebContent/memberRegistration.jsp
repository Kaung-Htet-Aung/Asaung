<%@ page import="com.DB.DbConnect" %>
<%@ page import="com.DAO.StudentDa"%>
<%@ page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#form{
    width:400px;
    height:400px;
    background-color:skyblue;
    margin-left:450px;
    margin-top:100px;
    }
    td{
    padding:10px
    }
</style>
</head>
<body>
 <%

    String value = request.getParameter("room");
    String room = value.replace("Add Student to Room Number", ""); // strNew is 'bcdDCBA123'

    %>
    <div id="form">
      <form action='Register' method="post">
       <table>
        <tr><td>Student Name: </td><td><input type="text" name="name"required></td></tr>
        <tr>
       
         <td> Class:
         <select name="class" id="cars">
           <option value="FirstYearSenior">First Year(Senior)</option>
           <option value="FirstYearJunior">First Year(Junior)</option>
           <option value="SecondYear">Second Year</option>
           <option value="ThirdYear">Third Year</option>
           <option value="FourthYear">Fourth Year</option>
           <option value="FinalYear">Final year</option>
        </select>
        </td>
        </tr>
        
        <tr><td>Roll Number: </td><td><input type="text" name="rollno"required></td></tr>
        <tr><td>Address: </td><td><input type="text" name="address"required></td></tr>
        <tr><td>Phone Number: </td><td><input type="text" name="phone"required></td></tr>
        <tr><td>Gmail: </td><td><input type="text" name="gmail"required></td></tr>
        <tr><td>Room Number</td><td><input type="text" name="roomno" value="<%=room%>" readonly required></td></tr>
        <tr><td></td><td><input type="submit" value="Add"></td></tr>
      </table>
     </form>
     </div>
    <% 
 %>

    
</body>
</html>