<?php
	include './connection.php';
	$sql = "select name from movies";
	$result = mysqli_query($con,$sql) or die ("database error".mysqli_error($con));
	echo " <datalist id='movies'>";
	while($row = mysqli_fetch_array($result))
	{
        echo"<option value='$row[name]'>";
	}
	echo " </datalist>";
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta author="Rishu kumar" content="R2D2 assigement">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, minimal-ui">
  <link href="https://fonts.googleapis.com/css?family=Pacifico&display=swap" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="main.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body class="bg">
<div class="container">
	<div class="navigation">
		<div class="searchbox">
			<form class="form" action=""  method="POST" id="searchbar">
				<input id="search_option" list="movies" name="movie_name" placeholder="Search for movies" class="search" onfocus="focus1(this)" onblur="remove(this)">
			</form>
			<div class="search-icon" id="submit"><i class="fas fa-search"></i></div>
		</div>

		<nav class="nav-menu">
			<div style="float: left;color:#fff;font-family: 'Pacifico', cursive; font-size: 25px;margin-top: -8px;">R2D2</div>
			<a href="/PHP/R2D2/">HOME</a>
			<a href="#" onclick="alert('link under-development contact Rishu kumar')">ABOUT</a>
			<a href="#contact">CONTACT</a>
		</nav>
	</div>
	<div class="tilte">
		<p id="title">Top Rated Movies</p>
	</div>
	<div class='movie-box'>
	<?php
	include 'search_result.php';
	?>
	</div>

<footer>
	<div class="footer">
		<div class="left">

			<div class="subscribe" id="connect">
          <form id="subsForm" action="" method="post">
          <div class="email-title">Stay Connected</div>
          <div class="email-box" id="emailbox">
            <input class="email" id="email" type="email" onfocus="myFocus()" onfocusout="myfocusout()" name="email" placeholder="Enter Email Address">
            <input type="hidden" name="btn" id="button">
            <div class="submit" onclick="formSubmit()"><i class="fas fa-arrow-right"></i></div></div>
          </form>
          </div>
          <p id="jsvalidation" style="color:red;margin-top: -20px;"></p>
            <div style="width: 95%;border-bottom: 0.1em solid #000;"></div>

			<div class="follow">FOLLOW US</div>
			 <div style="height:auto;display: flex;">
        <div class="connecct-icons">
          <i class="fab fa-linkedin" onclick="alert('link not available. Please check back in few days')"></i>
          <i class="fab fa-twitter" onclick="alert('link not available. Please check back in few days')"></i>
          <i class="fab fa-facebook" onclick="alert('link not available. Please check back in few days')"></i>
          <i class="fab fa-instagram" onclick="alert('link not available. Please check back in few days')"></i>
          <i class="fab fa-youtube" onclick="alert('link not available. Please check back in few days')"></i>
        </div>
      </div>
        <div class="divider" style="width: 95%;border-bottom: 0.1em solid #000;"></div>
		</div>
		<div class="right" id="contact">
			<h1>GET IN TOUCH</h1>
			<form onsubmit="alert('under-development')">
				<input  class="r-feed" type="text" placeholder="Full Name" name="name" required><br>
				<input type="email" class="r-feed" placeholder="Email" name="email" required><br>
				<textarea name="feed" class="r-feed" placeholder="Your Feedback" required></textarea><br>
				 <input id="rate_us" type="hidden" name="rate" value="0">
				  <span style="margin-left: 8px;font-size: 20px;color: #888">Rate Us</span><br>
            <div id="rating">
              <span id="checked1" onclick="check1()">&#x2606</span>
              <span id="checked2" onclick="check2()">&#x2606</span>
              <span id="checked3" onclick="check3()">&#x2606</span>
              <span id="checked4" onclick="check4()">&#x2606</span>
              <span id="checked5" onclick="check5()">&#x2606</span>
            </div>
            <input type="submit" style="margin: 3px;" value="Submit" name="submit" class="btn btn-lg btn-info">
			</form>
		</div>
	</div>
</footer>

<div style="letter-spacing: 1px;font-family: monospace;background: #000;color: #fff;width: 100%;text-align: center;padding:10px; ">Copyright&copy;2019 R2D2 Assigement</div>
</div>
 <script src="main.js"></script>
</body>
</html>