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
  </style>
</head>
<body>
     <% 
 	         String name = request.getParameter("name");
             StudentDa stu = new StudentDa(DbConnect.getCon());
        	 String roomNo= stu.searchbyname(name);
             %><input type="hidden" id="roomno" data-value="<%=roomNo%>"><%
        
       
       
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
  
<form action='ShowStudentData' method="get">
  <table style="width:80%" class="mt-4">
     
     <% 
 	   
	    String[] room = {
	    		          "47","46","45","44","43","42","41","62","63","64","65","66","67",
	    		         "68","48","57","58","59","60","61","82","81","80","79",
	    		         "78","69","49","56","77","70","50","55","76","71","51",
	    		         "54","75","72","52","53","74","73",
	    		         };
	    List<String> stuNumber = new ArrayList<String>();
        StudentDa dao = new StudentDa(DbConnect.getCon());
        for (String i : room) {
        	 String count=dao.roomcheck(i);
             stuNumber.add(count);
        	}
   	 %> 
   	  <tr>
   	  <td id="p1"style="border:0px" data-value="<%=stuNumber.get(0)%>"><input type="submit" value="47"name="room" id="p2"></td>
   	  <td id="p1" data-value="<%=stuNumber.get(1)%>"><input type="submit" value="46"name="room" id="p2"></td>
      <td id="p1" style="border-top:1px solid white; border-bottom:1px solid white"></td>
      <td id="p1" data-value="<%=stuNumber.get(2)%>"><input type="submit" value="45"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(3)%>"><input type="submit" value="44"name="room" id="p2"></td>
      <td id="p1" data-value="<%=stuNumber.get(4)%>"><input type="submit" value="43"name="room" id="p2"></td>
      <td id="p1" data-value="<%=stuNumber.get(5)%>"><input type="submit" value="42"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(6)%>"><input type="submit" value="41"name="room" id="p2"></td>
      <td id="p1"style="border-bottom:1px solid white;border-top:1px solid white"></td>
      <td id="p1"data-value="<%=stuNumber.get(7)%>"><input type="submit" value="62"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(8)%>"><input type="submit" value="63"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(9)%>"><input type="submit" value="64"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(10)%>"><input type="submit" value="65"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(11)%>"><input type="submit" value="66"name="room" id="p2"></td>
      <td id="p1" style="border-top:1px solid white; border-bottom:1px solid white"></td>
      <td id="p1" data-value="<%=stuNumber.get(12)%>"><input type="submit" value="67"name="room" id="p2"></td>
   	  <td id="p1" data-value="<%=stuNumber.get(13)%>"><input type="submit" value="68"name="room" id="p2"></td>
    </tr>
    <tr>
      <td id="p1"data-value="<%=stuNumber.get(14)%>"><input type="submit" value="48"name="room" id="p2"></td>
      <td id='p1'style="border:1px solid white"> </td>
      <td id="p1"style="border-bottom:1px solid white"></td>
      <td id="p1" data-value="<%=stuNumber.get(15)%>"><input type="submit" value="57"name="room" id="p2"></td>
      <td id="p1" data-value="<%=stuNumber.get(16)%>"><input type="submit" value="58"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(17)%>"><input type="submit" value="59"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(18)%>"><input type="submit" value="60"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(19)%>"><input type="submit" value="61"name="room" id="p2"></td>
      <td id="p1"style=" border-bottom:1px solid white"></td>
      <td id="p1"data-value="<%=stuNumber.get(20)%>"><input type="submit" value="82"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(21)%>"><input type="submit" value="81"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(22)%>"><input type="submit" value="80"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(23)%>"><input type="submit" value="79"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(24)%>"><input type="submit" value="78"name="room" id="p2"></td>
      <td id="p1"style="border-bottom:1px solid white;border-right:1px solid white"></td>
      <td id="p1"style="border-bottom:1px solid white"></td>
      <td id="p1" data-value="<%=stuNumber.get(25)%>"><input type="submit" value="69"name="room" id="p2"></td>
    </tr>
    <tr>
      <td id="p1" colspan="2" style="border-right:1px solid white"></td>
    
      <td id="p1" style="border-top:1px solid white; border-bottom:1px solid white; border-left:1px solid white; border-right:1px solid white "></td>
      <td id="p1" colspan="12"style="border-bottom:1px solid white;"></td>
      <td id="p1" style="border-left:2px solid white;" colspan="2"></td>
    
    </tr>
       
    <tr>
      <td id="p1"data-value="<%=stuNumber.get(26)%>"><input type="submit" value="49"name="room" id="p2"></td>
      <td id='p1'data-value="<%=stuNumber.get(27)%>"><input type="submit" value="56"name="room" id="p2"></td>
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
      <td id="p1"data-value="<%=stuNumber.get(28)%>"><input type="submit" value="77"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(29)%>"><input type="submit" value="70"name="room" id="p2"></td>
    </tr>

    <tr>
      <td id="p1"data-value="<%=stuNumber.get(30)%>"><input type="submit" value="50"name="room" id="p2"></td>
      <td id='p1'data-value="<%=stuNumber.get(31)%>"><input type="submit" value="55"name="room" id="p2"></td>
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
      <td id='p1'data-value="<%=stuNumber.get(32)%>"><input type="submit" value="76"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(33)%>"><input type="submit" value="71"name="room" id="p2"></td>
  
    </tr>
    <tr>
    
      <td id="p1"data-value="<%=stuNumber.get(34)%>"><input type="submit" value="51"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(35)%>"><input type="submit" value="54"name="room" id="p2"></td>
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
      <td id="p1"data-value="<%=stuNumber.get(36)%>"><input type="submit" value="75"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(37)%>"><input type="submit" value="72"name="room" id="p2"></td>
    
    </tr>
    <tr>
      <td id="p1"data-value="<%=stuNumber.get(38)%>"><input type="submit" value="52"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(39)%>"><input type="submit" value="53"name="room" id="p2"></td>
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
      <td id="p1"data-value="<%=stuNumber.get(40)%>"><input type="submit" value="74"name="room" id="p2"></td>
      <td id="p1"data-value="<%=stuNumber.get(41)%>"><input type="submit" value="73"name="room" id="p2"></td>
    </tr>
    <tr>
      <td id="p1"style="border-right:1px solid white;"></td>
      <td id='p1'></td>
      <td id='p1'style="border-top:1px solid skyblue; border-bottom:1px solid white"></td>
      <td id="p1" colspan="11"style="border-top:1px solid skyblue">Dining Room</td>
      <td id="p1"style="border-top:1px solid skyblue;border-bottom:1px solid white"></td>
      <td id="p1"style="border-right:1px solid white;"></td>
      <td id="p1" ><button class="btn"><a href="femalehostel.jsp">Go to down</a></button></td>
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
	    	 
	    	 if(roomno!=""&&value!=""&&roomno==value){
	    		 p.style.backgroundColor="blue";
	    		
	    	 }
	    	 
	    })
  }
  search()
  
  function wannasearch(){
	  var val=document.getElementById('select');
      var value = val.options[val.selectedIndex].value;
      if(value=="address"){
    	  nam.style.display='none'
    	  address.style.display='block'
    	  
      }
  }
</script>
</body>
</html>