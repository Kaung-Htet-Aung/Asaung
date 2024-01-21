<%@ page import="com.DB.DbConnect" %>
<%@ page import="com.DAO.StudentDa"%>
<%@ page import="com.DAO.Student"%>
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

       int id = Integer.parseInt(request.getParameter("id"));
       StudentDa dao = new StudentDa(DbConnect.getCon());
       Student s=dao.getstudentbyId(id);
    // strNew is 'bcdDCBA123'

    %>
      <form action='Update' method="post" id="form">
       <table>
        <tr><td>Student Name: </td><td><input type="text" name="name"value="<%=s.getName()%>"></td></tr>
        <tr>
       
         <td> Class:
         <select name="class" id="cars">
           <option value="<%=s.getClas()%>"><%=s.getClas()%></option>
           <option value="FirstYearSenior">First Year(Senior)</option>
           <option value="FirstYearJunior">First Year(Junior)</option>
           <option value="SecondYear">Second Year</option>
           <option value="ThirdYear">Third Year</option>
           <option value="FourthYear">Fourth Year</option>
           <option value="FinalYear">Final year</option>
        </select>
        </td>
        </tr>
        
        <tr><td>Roll Number: </td><td><input type="text" value="<%=s.getRollNo()%>" name="rollno"></td></tr>
        <tr><td>Address: </td><td><input type="text" name="address" value="<%=s.getAddress()%>"></td></tr>
        <tr><td>Phone Number: </td><td><input type="text" name="phone" value="<%=s.getPhoneNo()%>"></td></tr>
        <tr><td>Gmail: </td><td><input type="text" name="gmail" value="<%=s.getGmail()%>"></td></tr>
        <tr><td>Room Number</td><td><input type="text" name="roomno"  value="<%=s.getRoomNo()%>"></td></tr>
        <input type="hidden" name="id" value="<%=s.getId()%>">
        <tr><td></td><td><input type="submit" value="Update"></td></tr>
      </table>
     </form>
    <% 
 %>

    
</body>
</html>