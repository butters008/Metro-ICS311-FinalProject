<?php

$nav_selected = "HOME";
$left_buttons = "NO";
$left_selected = "";

  include("./nav.php");
  global $db;

  if(isset($_GET['movie_id'])){

		$id = mysqli_real_escape_string($db, $_GET['movie_id']);


		$sql = "SELECT * FROM movies 
		LEFT JOIN multimedia ON movies.movie_id = multimedia.movie_media_id
		LEFT JOIN metadata ON movies.movie_id = metadata.movie_id
		LEFT JOIN movie_people ON movie_people.movie_id = movies.movie_id
		LEFT JOIN people ON movie_people.people_id = people.people_id
		LEFT JOIN people_actors ON people.people_id = people_actors.people_id
		LEFT JOIN people_actresses ON people.people_id = people_actresses.people_id 
		LEFT JOIN song_people ON people.people_id = song_people.people_id
		LEFT JOIN songs ON songs.song_id = song_people.song_id
		WHERE movies.movie_id = $id";

		// get the query result
		$result = mysqli_query($db, $sql);

		// fetch result in array format
		$movie = mysqli_fetch_assoc($result);

		mysqli_free_result($result);
		mysqli_close($db);

		function make_links_clickable($text){
			return preg_replace('!(((f|ht)tp(s)?://)[-a-zA-Zа-яА-Я()0-9@:%_+.~#?&;//=]+)!i', '<a href="$1">$1</a>', $text);
		}
  }
?>

<!DOCTYPE html>
<html>

	<div class="container center">
		<?php if($movie): ?>
			<h2 style = "color: #01B0F1;">MOVIES</h3>
			<p><b>English name: </b><?php echo $movie['movie_name_english']; ?></p>
			<p><b>Original name: </b><?php echo $movie['movie_name_native']; ?></p>
			<p><b>Year produced: </b><?php echo $movie['movie_year']; ?></p>
			<p><b>Country: </b><?php echo $movie['country']; ?></p>
			<p><b>Language: </b><?php echo $movie['language']; ?></p>
			<p><b>Genre: </b><?php echo $movie['genre']; ?></p>
			<p><b>Plot: </b><?php echo $movie['plot']; ?></p>
			<h2 style = "color: #01B0F1;">PEOPLE</h3>
			<p><b>Director: </b><?php echo $movie['director']; ?></p>
			<p><b>Producer: </b><?php echo $movie['producer']; ?></p>
			<p><b>Music Director: </b><?php echo $movie['music_director']; ?></p>
			<p><b>Lead Actor: </b><?php echo $movie['lead_actor']; ?></p>
			<p><b>Lead Actress: </b><?php echo $movie['lead_actress']; ?></p>
			<p><b>Actors: </b><?php echo $movie['actor']; ?></p>
			<p><b>Actresses: </b><?php echo $movie['actress']; ?></p>
			<h2 style = "color: #01B0F1;">SONGS</h3>
			<p><b>Soundtrack Title: </b><?php echo $movie['song_title']; ?></p>
			<p><b>Lyrics: </b><?php echo $movie['lyrics']; ?></p>
			<p><b>Video Link: </b><?php echo make_links_clickable($movie['video_link']); ?></p>
			<p><b>Audio Link: </b><?php echo $movie['audio_link']; ?></p>
			<h2 style = "color: #01B0F1;">PICTURES</h3>
			<p><b>Movie Poster </b>
			<p><?php echo '<img src = "images/'.$movie["movie_poster"].'" width="200" height="280 ">' ?></p>
			<p><b>Photo Still </b>
			<p><?php echo '<img src = "images/'.$movie["photo_stills"].'" width="200" height="280 ">' ?></p>
		<?php else: ?>
			<h5>No such movie exists.</h5>
		<?php endif ?>
	</div>

</html>
