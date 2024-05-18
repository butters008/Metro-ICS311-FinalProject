<?php
// TODO: I need to figure out what this page is meant to do, or make something up or better.

$nav_selected = "HOME";
$left_buttons = "NO";
$left_selected = "";

include("./helpers/nav.php");
global $db;


// $sql = "SELECT * FROM (((movies LEFT JOIN metadata ON movies.movie_id = metadata.movie_id) LEFT JOIN movie_trivia ON movies.movie_id = movie_trivia.movie_id) LEFT JOIN movie_keywords ON movies.movie_id = movie_keywords.movie_id) LEFT JOIN multimedia ON movies.movie_id = movie_media_id 
// GROUP BY movies.movie_id
// ORDER BY movies.movie_id ASC";

// $result = $db->query($sql);
// $movies = mysqli_fetch_all($result, MYSQLI_ASSOC);
// $result->close();

?>



<html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!--Import Google Icon Font-->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">
</head>

<body>

  <div class="container">
    <div class="row">
      <!-- <?php foreach ($movies as $movie) : ?>
        <div class="col s12 l6">
          <div class="card">
            <div class="card-content">
              <p><?php echo $movie['movie_name_english']; ?></p>
              <p><?php echo $movie['movie_year']; ?></p>
              <div class="card-action right-align">
                <a class="brand-text" href="movies_info.php?movie_id=<?php echo $movie['movie_id'] ?>">MORE DETAILS</a>
              </div>
            </div>
          </div>
        </div>
      <?php endforeach; ?> -->
    </div>
  </div>

  <!-- Compiled and minified JavaScript -->
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>
</body>

</html>