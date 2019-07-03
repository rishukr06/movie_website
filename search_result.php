<?php
if(isset($_POST['movie_name']))
	{
		$count=0;
		include './connection.php';
		extract($_POST);
		$title = $movie_name;
		$sql1 = "select * from movies where name LIKE '$movie_name%' ORDER BY year";
		$result1 = mysqli_query($con,$sql1) or die ("database error".mysqli_error($con));
		while($row = mysqli_fetch_array($result1))
		{
			echo "
		
		
			<div class=' col-sm-2 movie-card-container'>
				<div class='movie-card' style='background-image:url(".$row[poster].")'></div>
				<div class='movie-details'>
					<div class='movie-name'>".$row[name]."</div>
					<div class='movie-cast'>Director: ".$row[malecast]."</div>
					<div class='movie-year'>Year: " .$row[year]."</div>
					<div class='movie-rating'>IMDb : <span style='color:yellow;'>&#9733;</span> ".$row[rating]."/10
						 ";
						
						echo "
					</div>
				</div>
			</div>
		";
		$count = 1;
		}
		if($count==0)
		{
			echo "
				<div class='empty_result'>NO DATA FOUND
				<img src='http://cdn.shopify.com/s/files/1/1061/1924/products/Surprised_Face_Emoji_7113e110-82a7-493a-9bb1-7bdca77a661a_grande.png?v=1480481057' height='40'>
				</div>
			";
		}
	}
	else
	{
		$title = "Letest uploads";
		$sql1 = "select * from movies ORDER BY rating DESC LIMIT 10";
		$result1 = mysqli_query($con,$sql1) or die ("database error".mysqli_error($con));
		while($row = mysqli_fetch_array($result1))
		{
			echo "
		
		
			<div class='col-sm-2 movie-card-container'>
				<div class='movie-card' style='background-image:url(".$row[poster].")'></div>
				<div class='movie-details'>
					<div class='movie-name'>".$row[name]."</div>
					<div class='movie-cast'>Director: ".$row[malecast]."</div>
					<div class='movie-year'>Year: ".$row[year]."</div>
					<div class='movie-rating'>IMDb : <span style='color:yellow;'>&#9733;</span> ".$row[rating]."/10
						 ";
				
							
						echo "
					</div>
				</div>
			</div>
		";
		}
	}
	?>
