
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Hugo 0.84.0">
  <link rel="icon" href="Image/infologo.jpg" type="image/icon type">
  <title>Code With Kay</title>
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
  <!-- Bootstrap core CSS -->
  <link href="./assets/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Bootstrap core CSS -->
  <style>
    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      user-select: none;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }
    #welcome{
      height: 430px;
      background-image:url('image/uni4c.jpg');
      background-attachment: fixed;
      background-repeat: no-repeat;
      background-size: 100% 100%;
       }   
       #welcome h2{
           padding-top:16rem;
          color: whitesmoke;
          font-family: monospace;
          font-weight: bold;
          text-shadow:4px 4px 2px black;
       }   
  </style>


  <!-- Custom styles for this template -->
  
</head>

<body>
  
  <header class="shadow" id="header">
    <div class="justify-content-between" id="smallnavContainer">
      <div><img src="image/shlogo.jpg" alt="" width="60" height="60" style="border-radius:50%" class="logo" /></div>
      <div id="mySidenav" class="sidenav">

        <span href="" class="closebtn" id="closebtn2" style="font-size:50px;cursor:pointer;color:grey">&times;</span>

        <a href="#">Home</a>
        <a href="#">Courses</a>
        <a href="#">Blogs</a>
        <a href="#">Sharings</a>
        <a href="#">About</a>
        <div class="authbtn">
          <a href="#" class="btn btn-info  text-white"
            style="border-radius:5px ;width:80px ;height:40px;line-height:25px">Login</a>
          <a href="#" class="btn btn-success  text-white"
            style="border-radius:5px ;width:90px;height:40px;line-height:25px">Register</a>
        </div>

      </div>
      <span href="" class="closebtn" id="closebtn" style="font-size:50px;cursor:pointer;color:grey">&times;</span>
      <span class="openbtn" id="openbtn" style="font-size:30px;cursor:pointer">&#9776;</span>
    </div>

    <div class="justify-content-between" id="largenavContainer">
      <div><img src="image/shlogo.jpg" class="logo" alt="" width="60" height="60" style="border-radius:50%" /></div>
      <div id="largenav" class="largenav">
        <a href="#">Home</a>
        <a href="#">Male Hostel</a>
        <a href="femalehostel.jsp">Female Hostel</a>
        <a href="about.jsp">About</a>
      </div>
    </div>
  </header>


  <!-- Marketing messaging and featurettes
================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->
  <main>
    <div id="welcome">
      <h2 class="text-center">UNIVERSITY HOSTEL MANAGEMENT SYSTEM</h2>
    </div>
    <div class="bg-white all">
      <div class="container justify-content-between marketing pt-5">

        <!-- Three columns of text below the carousel -->
       <div class="row">
            <div class="col-lg-4">
              <img src="image/male.jpg" id="blog" class="bd-placeholder-img rounded-circle" width="140" height="140"
                role="img">
              <h3>Male Hostel </h3>
              <p></p>
              <p><button class="btn btn-secondary" id="maleBtn">View details &raquo;</button></p>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4">
              <img src="image/female.jpg" id="sharing" class="bd-placeholder-img rounded-circle" width="140"
                height="140" role="img">
              <title>Placeholder</title>
              <rect width="100%" height="100%" fill="#777" />
              </img>

              <h3>Female Hostel</h3>
              <p></p>
              <p><button class="btn btn-secondary" id="femaleBtn" href="#">View details &raquo;</button></p>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4">
              <img src="image/online-class.png" id="course" class="bd-placeholder-img rounded-circle" width="140"
                height="140" role="img">

              <h3>About</h3>
              <p></p>
              <p><a href="about.jsp" class="btn btn-secondary" id="about" href="about.jsp">View details &raquo;</a></p>
            </div>
          </div>

        <hr>
        <!-- START THE FEATURETTES -->
        <div class="container">
          <h3 class="text-center" id="latest-title"
            style="font-weight: bold;color: black; font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif">
            Wardens</h3>
          <div class="row latest" id="male">
            <div class="col-lg-4">
              <div class="card shadow mt-4">
                <img class="card-img-top item" src="image/male1.jpg" id="itemone" alt="Card image cap" width="50" height="150">
                <div class="card-body">
                  <h5 class="card-title" id="title1">U Saw Minn Htun</h5>
                  <p class="card-text">Department-Department Of Language</p>
                  <p class="card-text">Phone Number-09977897597</p>
                </div>
                <div class="card-footer">
                  <div class="card-footer-link pt-3">
                    <p class="text-info pt-1" style="font-weight: bold;">10,20,2021</p>
                    <a href="female.jsp">
                      <p class="btn detail text-primary">view details</p>
                    </a>
                  </div>
                </div>
              </div>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4" id="">
              <div class="card shadow mt-4"> 
                <img class="card-img-top item" src="image/male2.jpg" id="itemtwo" alt="Card image cap" width="50" height="150">
                <div class="card-body">
                  <h5 class="card-title" id="title2">U Hein Sett</h5>
                  <p class="card-text">Department-Department Of Language</p>
                  <p class="card-text">Phone Number-09977897597</p>
                </div>
                <div class="card-footer">
                  <div class="card-footer-link pt-3">
                    <p class="text-info pt-1" style="font-weight: bold;">10,20,2021</p>
                    <a href="#">
                      <p class="btn detail text-primary">view details</p>
                    </a>
                  </div>
                </div>
              </div>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4">
              <div class="card shadow mt-4">
                <img class="card-img-top item" src="image/male3.jpg" class="item"alt="Card image cap" id="asaung1" width="50"
                  height="150">
                <div class="card-body">
                  <h5 class="card-title" id="title3">U Hein Pai</h5>
                  <p class="card-text">Department-Faculty Of Computing</p>
                  <p class="card-text">Phone Number-09977897597</p>
                </div>
                <div class="card-footer">
                  <div class="card-footer-link pt-3">
                    <p class="text-info pt-1" style="font-weight: bold;">10,20,2021</p>
                    <a href="#">
                      <p class="btn detail text-primary">view details</p>
                      <!--  #003366 -->
                    </a>
                  </div>
                </div>
              </div>
            </div><!-- /.col-lg-4 -->
          </div><!-- /.row -->

          <div class="row latest" id="female">
            <div class="col-lg-4">
              <div class="card shadow mt-lg-4 mt-md-4 mt-sm-0">
                <img class="card-img-top item" src="image/female1.png"  alt="Card image cap" width="50" height="150">
                <div class="card-body">
                 <h5 class="card-title" id="title4">Daw Yadanar</h5>
                  <p class="card-text">Department-Department Of Natural Science</p>
                  <p class="card-text">Phone Number-09977897597</p>
                </div>
                <div class="card-footer">
                  <div class="card-footer-link pt-3">
                    <p class="text-info pt-1" style="font-weight: bold;">10,20,2021</p>
                    <a href="femalehostel.jsp">
                      <p class="btn detail text-primary">view details</p>
                      <!-- #990099; -->
                    </a>
                  </div>
                </div>
              </div>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4">
              <div class="card shadow mt-4" >
                <img class="card-img-top item" src="image/female2.png" id="itemsix" alt="Card image cap" width="50" height="150">
                <div class="card-body">
                 <h5 class="card-title" id="title5">Daw SuMyat</h5>
                  <p class="card-text">Department- Faculty Of Computer Science</p>
                  <p class="card-text">Phone Number-09977897597</p>
                </div>
                <div class="card-footer">
                  <div class="card-footer-link pt-3">
                    <p class="text-info pt-1" style="font-weight: bold;">10,20,2021</p>
                    <a href="#">
                      <p class="btn detail text-primary">view details</p>
                      <!--  #90DFAA -->
                    </a>
                  </div>
                </div>
              </div>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4">
              <div class="card shadow mt-4">
                <img class="card-img-top item" src="image/female3.png" alt="Card image cap" width="50" height="150">
                <div class="card-body">
                <h5 class="card-title" id="title6">Daw Thuzar</h5>
                  <p class="card-text">Department-Faculty Of Information Science</p>
                  <p class="card-text">Phone Number-09977897597</p>
                </div>
                <div class="card-footer">
                  <div class="card-footer-link pt-3">
                    <p class="text-info pt-1" style="font-weight: bold;">10,20,2021</p>
                    <a href="#">
                      <p class="btn detail text-primary">view details</p>
                    </a>
                  </div>
                </div>
              </div>
            </div><!-- /.col-lg-4 -->
          </h><!-- /.row -->
        </div>

  </main>

  <script>
    var maleBtn = document.getElementById('maleBtn');
    var femaleBtn=document.getElementById('femaleBtn');
    var items=document.querySelectorAll('.item')
    var ptext=document.querySelectorAll('.card-text')
    maleBtn.addEventListener('click', function () {
    	ptext.forEach(function(text){
    		text.textContent=""
    	})
    	
        items.forEach(function(item) {
          item.src='image/male.jpg'; 
          document.getElementById('title1').textContent="Kyan Sitt Thar";
          document.getElementById('title2').textContent="Bayint Naung";
          document.getElementById('title3').textContent="Anaw YaHtar";
          document.getElementById('female').style.display='none';
          document.getElementById('male').style.display='';
          document.getElementById('latest-title').textContent="MALE HOSTELS";
        });
    })
    femaleBtn.addEventListener('click', function () {
    	ptext.forEach(function(text){
    		text.textContent=""
    	})
        items.forEach(function(item) {
          item.src='image/female.jpg';
          document.getElementById('title4').textContent="Hnin Si";
          document.getElementById('title5').textContent="Padauk";
          document.getElementById('title6').textContent="Sagawar";
          document.getElementById('male').style.display='none';
          document.getElementById('female').style.display='';
          document.getElementById('latest-title').textContent="FEMALE HOSTELS";
            
        });
          
   	   
    })
      

  </script>
  <script src="assets/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>
