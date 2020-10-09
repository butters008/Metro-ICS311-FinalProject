<?php
$nav_selected = "PEOPLE";
$left_buttons = "NO";
$left_selected = "NO";

include("./nav.php");
global $db;
?>

<
<?php
if (isset($_GET['people_id'])) {
  $people_id = mysqli_real_escape_string($db, $_GET['people_id']);
}
?>

<div class="right-content">
  <div class="container">
    <h3 style="color: #01B0F1;">People -> Basic Data</h3>

    <?php

    $sql_A1 = "SELECT crew.people_id, first_name, last_name, gender, picture, COUNT(movies.movie_id) AS num_movies 
               FROM crew LEFT JOIN movie_people ON crew.people_id = movie_people.people_id
               LEFT JOIN movies ON movie_people.movie_id = movies.movie_id
               WHERE crew.people_id =" . $people_id;

    if (!$sql_A1_result = $db->query($sql_A1)) {
      die('There was an error running query[' . $db->error . ']');
    }

    if ($sql_A1_result->num_rows > 0) {
      $a1_tuple = $sql_A1_result->fetch_assoc();
      echo 
        '<br><b> People ID: </b>' . $a1_tuple['people_id'] .
        '<br><b> First Name: </b>' . $a1_tuple['first_name'] .
        '<br><b> Last Name: </b>' . $a1_tuple['last_name'] .
        '<br><b> Gender:  </b>' . $a1_tuple['gender'] .
        '<br><img src = "images/'.$a1_tuple["picture"].'" width="400" height="280 ">';
        
    } //end if
    else {
      echo "0 results";
    } //end else

    $sql_A1_result->close();
    ?>
  </div>
</div>


<div class="right-content">
  <div class="container">
    <h3 style="color: #01B0F1;">People -> Aggregation</h3>

    <?php


    // query string for the Query A.1
    $sql_A2 = "SELECT (SELECT COUNT(*) FROM movie_people AS mp WHERE mp.role = 'Director' AND mp.people_id = movie_people.people_id) AS dir,
    (SELECT COUNT(*) FROM movie_people AS mp WHERE mp.role = 'Producer' AND mp.people_id = movie_people.people_id) AS pro,
    (SELECT COUNT(*) FROM movie_people AS mp WHERE mp.role = 'Music Director' AND mp.people_id = movie_people.people_id) AS mus_dir,
    (SELECT COUNT(*) FROM movie_people AS mp WHERE mp.role = 'Lead Actress' AND mp.people_id = movie_people.people_id) AS l_actress, 
    (SELECT COUNT(*) FROM movie_people AS mp WHERE mp.role = 'Lead Actor' AND mp.people_id = movie_people.people_id) AS l_actor,
    (SELECT COUNT(*) FROM movie_people AS mp WHERE mp.role = 'Actress' AND mp.people_id = movie_people.people_id) AS actress,
    (SELECT COUNT(*) FROM movie_people AS mp WHERE mp.role = 'Actor' AND mp.people_id = movie_people.people_id) AS actor,
    (SELECT COUNT(*) FROM song_people AS sp WHERE sp.role = 'Lyricist' AND sp.people_id = movie_people.people_id) AS lyr,
    (SELECT COUNT(*) FROM song_people AS sp WHERE sp.role = 'Musician' AND sp.people_id = movie_people.people_id) AS singer
    FROM
        movies
    LEFT JOIN movie_people ON movies.movie_id = movie_people.movie_id
    LEFT JOIN crew ON movie_people.people_id = crew.people_id
    LEFT JOIN song_people ON song_people.people_id = crew.people_id
    WHERE
        movie_people.people_id = '$people_id'
    GROUP BY
        movie_people.people_id";

    if (!$sql_A2_result = $db->query($sql_A2)) {
      die('There was an error running query[' . $db->error . ']');
    }

    if ($sql_A2_result->num_rows > 0) {
      $a2_tuple = $sql_A2_result->fetch_assoc();
      echo
      '<br><b> NUMBER OF MOVIES AS </b>'.
      '<br><b> Producer: </b>' . $a2_tuple['dir'] .
      '<br><b> Director: </b>' . $a2_tuple['pro'] .
      '<br><b> Music Producer: </b>' . $a2_tuple['mus_dir'] .
      '<br><b> Lead Actor: </b>' . $a2_tuple['l_actor'] .
      '<br><b> Lead Actress: </b>' . $a2_tuple['l_actress'] .
      '<br><b> Actor: </b>' . $a2_tuple['actor'] .
      '<br><b> Actress: </b>' . $a2_tuple['actress'] .
      '<br><b> Lyricist:  </b>' . $a2_tuple['lyr'] .
      '<br><b> Playback Singer: </b>' . $a2_tuple['singer'] ;
    } //end if
    else {
      echo "0 results";
    } //end else

    $sql_A2_result->close();
    ?>
  </div>
</div>


<div class="right-content">
  <div class="container">
    <h3 style="color: #01B0F1;">People -> Movies</h3>

    <table id="info" cellpadding="0" cellspacing="0" 
          class="datatable table table-striped table-bordered datatable-style table-hover"
          width="100%" style="width: 100px;">
          <thead>
              <tr id="table-first-row">
                      <th>Movie ID</th>
                      <th>Movie Name (English)</th>
                      <th>Movie Name (Native)</th>
                      <th>Year Made</th>
                      <th>Role</th>
                      <th>Screen Name</th>

              </tr>
            </thead>

            <tbody>
            
<?php

$sql_A3 = "SELECT * FROM
movies
LEFT JOIN movie_people ON movies.movie_id = movie_people.movie_id
LEFT JOIN crew ON movie_people.people_id = crew.people_id
LEFT JOIN screen_name ON movie_people.movie_id = screen_name.movie_id
WHERE
screen_name.people_id = $people_id AND crew.people_id = $people_id
ORDER BY movies.movie_year;";

$sql_A3_result = $db->query($sql_A3);

if ($sql_A3_result->num_rows > 0) {
  while($a3_tuple = $sql_A3_result->fetch_assoc()) {
    echo '<tr>
    <td>'.$a3_tuple['movie_id'] .'</td>
    <td>'.$a3_tuple['movie_name_english'] .'</td>
    <td><a href="movies_info.php?movie_id='.$a3_tuple['movie_id'].'" ?><b>'.$a3_tuple["movie_name_native"].'</b></td>
    <td>'.$a3_tuple['movie_year'] .'</td>
    <td>'.$a3_tuple['role'] .'</td>
    <td>'.$a3_tuple['screen_name'] .'</td>
    </tr>'.
    '<script>console.log("debug log")</script>';
  }
}
else {
  echo "0 results";
}//end else

$sql_A3_result->close();
?>

</tbody>
</table>
</div>
</div>


<div class="right-content">
  <div class="container">
    <h3 style="color: #01B0F1;">People -> Songs</h3>

    <table id="info" cellpadding="0" cellspacing="0" 
          class="datatable table table-striped table-bordered datatable-style table-hover"
          width="100%" style="width: 100px;">
          <thead>
              <tr id="table-first-row">
                      <th>Song ID</th>
                      <th>Song Title</th>
                      <th>Lyrics</th>
                      <th>Role</th>

              </tr>
            </thead>
            <tbody>
            

<?php

function myTruncate($string, $limit, $break=" ", $pad="...")
{
  // return with no change if string is shorter than $limit
  if(strlen($string) <= $limit) return $string;

  // is $break present between $limit and the end of the string?
  if(false !== ($breakpoint = strpos($string, $break, $limit))) {
    if($breakpoint < strlen($string) - 1) {
      $string = substr($string, 0, $breakpoint) . $pad;
    }
  }

  return $string;
}

$sql_A4 = "SELECT * FROM crew 
LEFT JOIN song_people ON crew.people_id = song_people.people_id
LEFT JOIN songs ON songs.song_id = song_people.song_id
WHERE crew.people_id =" .$people_id;

$sql_A4_result = $db->query($sql_A4);

if ($sql_A4_result->num_rows > 0) {
  while($a4_tuple = $sql_A4_result->fetch_assoc()) {
    $lyrics = myTruncate($a4_tuple['lyrics'],20);
    echo '<tr>
    <td>'.$a4_tuple['song_id'] .'</td>
    <td>'.$a4_tuple['song_title'] .'</td>
    <td>'.$lyrics.'</td>
    <td>'.$a4_tuple['role'] .'</td>
    </tr>'.
    '<script>console.log("debug log")</script>';
  }
}
else {
  echo "0 results";
}//end else

$sql_A4_result->close();
?>
</tbody>
</table>
</div>
</div>


<!-- ================== JQuery Data Table script ================================= -->

<script type="text/javascript" language="javascript">
  /* $(document).ready(function() {

    $('#info').DataTable({
      dom: 'lfrtBip',
      buttons: [
        'copy', 'excel', 'csv', 'pdf'
      ]
    });

    $('#info thead tr').clone(true).appendTo('#info thead');
    $('#info thead tr:eq(1) th').each(function(i) {
      var title = $(this).text();
      $(this).html('<input type="text" placeholder="Search ' + title + '" />');

      $('input', this).on('keyup change', function() {
        if (table.column(i).search() !== this.value) {
          table
            .column(i)
            .search(this.value)
            .draw();
        }
      });
    });

    var table = $('#info').DataTable({
      orderCellsTop: true,
      fixedHeader: true,
      retrieve: true
    });

  }); */
</script>



<style>
  tfoot {
    display: table-header-group;
  }
</style>

<?php include("./footer.php"); ?>