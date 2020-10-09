<div id="menu-left" onload="getURL()">

<a href="movie_releases.php">
	<div 
		<?php 
			if($left_selected == "RELEASES")
  			{ echo 'class="menu-left-current-page"'; } ?>>
  		<img src="./images/releases.png">
  		<br/>Movie List <br/>
	</div>
</a>


<!--TODO: Creating a movie - need to create file -->
<a href="create_movie.php">
	<div 
		<?php 
			if($left_selected == "Create Movie")
  			{ echo 'class="menu-left-current-page"'; } ?>>
  		<img src="./images/create-movie.png">
  		<br/>Create Movie<br/>
	</div>
</a>

<!--TODO: need to create file - This will contain its own page that will have ADD/REMOVE/UPDATE -->
<a href="manage_movie-song-relationship.php">
	<div 
		<?php 
			if($left_selected == "Movie/Song - Relationship")
  			{ echo 'class="menu-left-current-page"'; } ?>>
  		<img src="./images/movie-song-relatioship.png">
  		<br/>Movie/Song - Relationship<br/>
	</div>
</a>

<!--TODO: need to create file - This will contain its own page that will have ADD/REMOVE/UPDATE -->
<a href="manage_movie-people-relationship.php">
	<div 
		<?php 
			if($left_selected == "Movie/People - Relationship")
  			{ echo 'class="menu-left-current-page"'; } ?>>
  		<img src="./images/movie-people-relationship.jpg">
  		<br/>Movie/People - Relationship<br/>
	</div>
</a>

<!--TODO: need to create file - This will contain its own page that will have ADD/REMOVE/UPDATE -->
<a href="manage_movie-metadata-relationship.php">
	<div 
		<?php 
			if($left_selected == "Movie/Metadata - Relationship")
  			{ echo 'class="menu-left-current-page"'; } ?>>
  		<img src="./images/movie-metadata.relationship.png">
  		<br/>Movie/Metadata - Relationship<br/>
	</div>
</a>

<!--TODO: need to create file - This will contain its own page that will have ADD/REMOVE/UPDATE -->
<a href="manage_movie-multimedia-relationship.php">
	<div 
		<?php 
			if($left_selected == "Movie/Multimedia - Relationship")
  			{ echo 'class="menu-left-current-page"'; } ?>>
  		<img src="./images/movie-multimedia-relationship.png">
  		<br/>Movie/Multimedia - Relationship<br/>
	</div>
</a>
<!-- <a href = "scanner_errors.php">
	<div  -->
		<?php 
			// if($left_selected == "ERRORS")
  			// { echo 'class="menu-left-current-page"'; } ?>
  		<!-- ><img src="./images/errors.png">
  		<br/>Errors<br/>
	</div>
</a> -->

<!-- <a href = "scanner_not_found.php">
	<div  -->
		<?php 
			// if($left_selected == "NOTFOUND")
    		// { echo 'class="menu-left-current-page"'; } ?>
    	<!-- ><img src="./images/not_found.png">
    	<br/>NotFound<br/>
	</div>
</a> -->

<!-- <a href = "scanner_goofy.php">
	<div  -->
		<?php 
			// if($left_selected == "GOOFY")
  			// { echo 'class="menu-left-current-page"'; } ?>
  		<!-- ><img src="./images/goofy.png">
  		<br/>Goofy<br/>
	</div>
</a> -->


</div>

<script>
	document.getElementById("menu-left").onload = function() {getURL()};
    function getURL() {
		console.log("is this working?");
        alert("The URL of this page is: " + window.location.href);
    }
</script>