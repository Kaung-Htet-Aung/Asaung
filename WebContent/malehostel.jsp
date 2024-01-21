<%@ page import="com.DB.DbConnect" %>                                                                                                                                                                                                                                                                                           
<%@ page import="com.DAO.*"%>
<%@ page import="java.sql.Connection" %>
<%@page import="java.util.* " %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <style>
       body{
        text-align: center;
        
       }
       table, th, td {
      border:1px solid black;
      border-collapse: collapse;
      margin-left: 130px;
      margin-bottom:10px;

    }
    td{
        width: 60px;
        height: 67px
    }
    .navbar{
      background-color:skyblue;
     
     }
     #yearform{
     margin-bottom:50px;
      }
      #searchform{
          right:350px;
      }
      #livein{
        position:absolute;
        top:350px;
        left:470px;
        display:none;
      }
      a{
        text-decoration:none
      }
      
  </style>
</head>
<body>
     <% 
 	         String name = request.getParameter("name");
            
             StudentDa stu = new StudentDa(DbConnect.getCon());
        	 String roomNo=stu.searchbyname(name);
             %><input type="hidden" id="roomno" data-value="<%=roomNo%>">
            
             <%
        
       
       
   	 %> 
  <nav class="navbar navbar-expand-lg navbar-light ">
    <a class="navbar-brand" href="#"><img src="image/shlogo.jpg" width="50"height="50"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <form action="Studentbyyears" class="position-absolute d-flex mt-2" method="get" id="yearform">
                <select name="year" id="yer">
                    <option value="FirstYearJunior" >First Year(Jur)</option>
                    <option value="FirstYearSenior" >First Year(Senior)</option>
                    <option value="SecondYear">Second Year</option>
                    <option value="ThirdYear" >Third Year</option>
                    <option value="FourthYear" >Fourth Year</option>
                    <option value="Final" >Fifth Year</option>
                    <input type="submit" class="d-flex" value="Search">
             </select>   
       
   </form>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#">Disabled</a>
        </li>
      </ul>
      <form action="Studentbyyears" class="d-flex position-absolute" method="get"id="searchform">
               <select name="year" onchange="wannasearch()"id="select">
                    <option value="name">Name</option>
                    <option value="address" >Address</option>
                   
             </select> 
        </form>
      <form class="form-inline my-2 my-lg-0" action="femalehostel.jsp" method="get" id="nam">
        <input class="form-control mr-sm-2" type="search"name="name" placeholder="Search By Student Name" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
      </form>
      <form class="form-inline my-2 my-lg-0" action="studentbyaddress.jsp" method="get" id="address">
        <input class="form-control mr-sm-2" type="search"name="address" placeholder="Search By Address" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
      </form>
    </div>
  </nav>
  
<form action='studentdata.jsp' method="get">
  <table style="width:80%" class="mt-4">
     
     <% 
 	   
	    String[] room = {
	    		          "7","6","5","4","3","2","1","22","23","24","25","26","27",
	    		         "8","17","18","19","20","21","40","39","38","37","36",
	    		         "9","16","35","28","10","15","34","29","11","14","33",
	    		         "30","12","13","32","31",
	    		         };
	    List<String> stuNumber = new ArrayList<String>();
        StudentDa dao = new StudentDa(DbConnect.getCon());
        for (String i : room) {
        	 String count=dao.roomcheck(i);
             stuNumber.add(count);
        	}
   	 %> 
   	  <tr>
   	  <td id="p1"style="border:0px" data-value="<%=stuNumber.get(0)%>"><input type="submit" value="7"name="room" id="p2"></td>
   	  <td id="p1" data-value="<%=stuNumber.get(1)%>"><input type="submit" value="6"name="room" id="p2"></td>
      <td id="p1" style="border-top:1px solid white; border-bottom:1px solid white"></td>
      <td id="p1" data-value="<%=stuNumber.get(2)%>"><input type="submit" value="5"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(3)%>"><input type="submit" value="4"name="room" id="p2"></td>
      <td id="p1" data-value="<%=stuNumber.get(4)%>"><input type="submit" value="3"name="room" id="p2"></td>
      <td id="p1" data-value="<%=stuNumber.get(5)%>"><input type="submit" value="2"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(6)%>"><input type="submit" value="1"name="room" id="p2"></td>
      <td id="p1"style="border-bottom:1px solid white;border-top:1px solid white"></td>
      <td id="p1"data-value="<%=stuNumber.get(7)%>"><input type="submit" value="22"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(8)%>"><input type="submit" value="23"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(9)%>"><input type="submit" value="24"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(10)%>"><input type="submit" value="25"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(11)%>"><input type="submit" value="26"name="room" id="p2"></td>
      <td id="p1"style="border-bottom:1px solid white;border-top:1px solid white;"></td>
      <td id="p1"data-value="<%=stuNumber.get(12)%>"rowspan="2"colspan="2"><input type="submit" value="27"name="room" id="p2"></td>
    </tr>
    <tr>
      <td id="p1"data-value="<%=stuNumber.get(13)%>"><input type="submit" value="8"name="room" id="p2"></td>
      <td id='p1'style="border:1px solid white"> </td>
      <td id="p1"style="border-bottom:1px solid white"></td>
      <td id="p1" data-value="<%=stuNumber.get(14)%>"><input type="submit" value="17"name="room" id="p2"></td>
      <td id="p1" data-value="<%=stuNumber.get(15)%>"><input type="submit" value="18"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(16)%>"><input type="submit" value="19"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(17)%>"><input type="submit" value="20"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(18)%>"><input type="submit" value="21"name="room" id="p2"></td>
      <td id="p1"style=" border-bottom:1px solid white"></td>
      <td id="p1"data-value="<%=stuNumber.get(19)%>"><input type="submit" value="40"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(20)%>"><input type="submit" value="39"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(21)%>"><input type="submit" value="38"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(22)%>"><input type="submit" value="37"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(23)%>"><input type="submit" value="36"name="room" id="p2"></td>
      <td id="p1"style="border-bottom:1px solid white"></td>

    </tr>
    <tr>
      <td id="p1" colspan="2" style="border-right:1px solid white"></td>
    
      <td id="p1" style="border-top:1px solid white; border-bottom:1px solid white; border-left:1px solid white; border-right:1px solid white "></td>
      <td id="p1" colspan="12"style="border-bottom:1px solid white;"></td>
      <td id="p1" style="border-left:2px solid white;" colspan="2"></td>
    
    </tr>
       
    <tr>
      <td id="p1"data-value="<%=stuNumber.get(24)%>"><input type="submit" value="9"name="room" id="p2"></td>
      <td id='p1'data-value="<%=stuNumber.get(25)%>"><input type="submit" value="16"name="room" id="p2"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1" style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1" style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="text" style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-left:1px solid white skyblue;border-right:1px solid white"></td>
      <td id="p1" style="border-bottom:1px solid white;"></td>
      <td id="p1"data-value="<%=stuNumber.get(26)%>"><input type="submit" value="35"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(27)%>"><input type="submit" value="28"name="room" id="p2"></td>
    </tr>

    <tr>
      <td id="p1"data-value="<%=stuNumber.get(28)%>"><input type="submit" value="10"name="room" id="p2"></td>
      <td id='p1'data-value="<%=stuNumber.get(29)%>"><input type="submit" value="15"name="room" id="p2"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id='p1'style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id='p1'style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id='p1'style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id='p1'style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id='p1'style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id='p1'style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-left:1px solid white"></td>
      <td id='p1'data-value="<%=stuNumber.get(30)%>"><input type="submit" value="34"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(31)%>"><input type="submit" value="29"name="room" id="p2"></td>
  
    </tr>
    <tr>
    
      <td id="p1"data-value="<%=stuNumber.get(32)%>"><input type="submit" value="11"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(33)%>"><input type="submit" value="14"name="room" id="p2"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-left:1px solid white"></td>
      <td id="p1"data-value="<%=stuNumber.get(34)%>"><input type="submit" value="33"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(35)%>"><input type="submit" value="30"name="room" id="p2"></td>
    
    </tr>
    <tr>
      <td id="p1"data-value="<%=stuNumber.get(36)%>"><input type="submit" value="12"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(37)%>"><input type="submit" value="13"name="room" id="p2"></td>
      <td id="p1"style="border-top:1px solid white; border-bottom:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-right:1px solid white;border-left:1px solid skyblue"></td>
      <td id="p1"style="border-top:1px solid white; border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white;border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white; border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white;  border-right:1px solid white;border-left:1px solid white"></td>
      <td id="p1"style="border-top:1px solid white;border-left:1px solid white; border-bottom:1px solid white;"></td>
      <td id="p1"data-value="<%=stuNumber.get(38)%>"><input type="submit" value="32"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(39)%>"><input type="submit" value="31"name="room" id="p2"></td>
    </tr>
    <tr>
      <td id="p1"style="border-right:1px solid white;"></td>
      <td id='p1'></td>
      <td id='p1'style="border-top:1px solid skyblue; border-bottom:1px solid white"></td>
      <td id="p1" colspan="11"style="border-top:1px solid skyblue">Dining Room</td>
      <td id="p1"style="border-top:1px solid skyblue;border-bottom:1px solid white"></td>
      <td id="p1"style="border-right:1px solid white;"></td>
      <td id="p1" ><button class="btn"><a href="femaleup.jsp">Go to up</a></td>
      </tr>
    <% 
	   %>
   </table>
  </form>
  
   
   
<script>
    var address=document.getElementById('address');
    var name=document.getElementById('nam');
    address.style.display='none';
   function stuNumber(){
	    var p=document.querySelectorAll('#p1');
	    
	    p.forEach(function(p){
	    	 var value= p.dataset.value;
	    	 if(value==1){
	    		 p.style.backgroundColor="greenyellow";
	    	 }
	    	 else if(value==2){
	 	       p.style.backgroundColor="red";
	 	     }else{
	 	          p.style.backgroundColor="white";
	 	      }
	    })
	    
	   }
  stuNumber();
  
  function search(){
	  var input=document.getElementById('roomno');
	  var roomno=input.dataset.value;

	  var p=document.querySelectorAll('#p2');
	    p.forEach(function(p){
	    	 var value=p.value;
	    	 
	    	 if(roomno==value){
	    		 p.style.backgroundColor="blue";
	    		
	    	 }
	    	 
	    })
  }
  search()
  
  function wannasearch(){
	  var val=document.getElementById('select');
      var value = val.options[val.selectedIndex].value;
      if(value=="name"){
    	      nam.style.display='block'
        	  address.style.display='none'
      }
      if(value=="address"){
    	  nam.style.display='none'
    	  address.style.display='block'
    	  
      }
  }
</script>
</body>
</html>