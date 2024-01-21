<%@ page import="com.DB.DbConnect" %>
<%@ page import="com.DAO.*"%>
<%@ page import="java.sql.Connection" %>
<%@page import="java.util.* " %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
table {
    font-family:sans-serif;
    font-weight: bold;
     border-collapse: collapse;
     width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}
th{
    color: maroon;
    border: 1px solid palevioletred;
}
.name{
    color:darkgreen;

    font-weight: bold;
}
tr:nth-child(even) {
  background-color: #dddddd;
}
  .navbar{
      background-color:blueviolet    }
</style>
</head>
<body>

  <nav class="navbar navbar-expand-lg navbar-light">
    <a class="navbar-brand" href="#"><img src="image/shlogo.jpg" width="50"height="50"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
       <li class="text-white">University Of Computer Studies (Magway)
      </ul>
      <form class="form-inline my-2 my-lg-0">
             <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link text-white" href="index.jsp">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" href="about.jsp">About</a>
        </li>
      </ul>

      </form>
    </div>
  </nav>

<table class="mt-5">
 <% 
      
       String room=request.getParameter("room");
       StudentDa dao = new StudentDa(DbConnect.getCon());
       List<Student> studa =dao.getstudents(room);
       String count=dao.roomcheck(room);
       %>
       <tr>
          <th class="name">Name</th>
          <th>Class</th>
          <th>Roll Number</th>
          <th>Address</th>
          <th>Phone Number</th>
          <th>Gmail</th> 
          <th>Action</th>                 
       </tr>  <%
       for(Student d:studa){
     	%> 	    
  
        <tr>
          <td class="name"><%=d.getName()%></td>
          <td><%=d.getClas()%></td>
          <td><%=d.getRollNo()%></td>
          <td><%=d.getAddress()%></td>
          <td><%=d.getPhoneNo()%></td>
          <td><%=d.getGmail()%></td>    
          <td><a href="edit.jsp?id=<%=d.getId()%>" class="btn btn-sm btn-primary">Edit</a>
          <a href="Delete?id=<%=d.getId()%>&room=<%=room %>"" class="btn btn-sm btn-danger">Delete</a></td>        
          
       </tr>
     

   	    <% 
   }
       if(count.equals("2")){
    	    %>
    	      <div class="alert alert-danger" role="alert">This room is full.You cannot add student to this room</div>
    	    <%
    	}else if(count.equals("1")){
    		 %>
   	            <form action="memberRegistration.jsp" >
    	            <div class="alert alert-warning mt-5" role="alert">There is only one student.You can add students to this room. <input type="submit" name="room" value="Add Student to Room Number <%=room%>"class="btn btn-success"/><div>
    	         
    	         </form>
   	        <%
    	}
       else{
    	   %>
    	     <form action="memberRegistration.jsp">
    	     <div class="alert alert-info mt-5" role="alert">There are no students.You can add students to this room.  <input type="submit" name="room" value="Add Student to Room Number <%=room%>"class="btn btn-success"/><div>
    	         
    	     </form>
    	<%
    	}
    	 
   %>

</table>



    
     
</body>
</html>


