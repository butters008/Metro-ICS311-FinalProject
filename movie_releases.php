<?php

$nav_selected = "MOVIES";
$left_buttons = "YES";
$left_selected = "RELEASES";

include("./nav.php");
global $db;

?>

<br><br>
<div class="container-fluid">
    <?php
    if (isset($_GET['MovieDeleted'])) {
        if ($_GET["MovieDeleted"] == "Success") {
            echo '<br><h3>Success! Your movie has been deleted!</h3>';
        }
    }
    ?>


    <div class="right-content">
        <div class="container">

            <table id="info" cellpadding="0" cellspacing="0" class="datatable table table-striped table-bordered datatable-style table-hover" width="100%" style="width: 100px;">
                <thead>
                    <tr id="table-first-row">
                        <th>Movie id</th>
                        <th>Movie Name (Original)</th>
                        <th>Movie Name (English)</th>
                        <th>Movie Year</th>
                        <th>Language</th>
                        <th>Country</th>
                        <th>Plot</th>
                        <th>Genre</th>
                        <th>Trivia</th>
                        <th>Keywords</th>
                        <th>Movie Posters</th>
                        <th>Photo Stills</th>
                        <th>Delete</th>

                    </tr>
                </thead>

                <tfoot>
                    <tr>
                        <th>Movie id</th>
                        <th>Movie Name (Original)</th>
                        <th>Movie Name (English)</th>
                        <th>Movie Year</th>
                        <th>Language</th>
                        <th>Country</th>
                        <th>Plot</th>
                        <th>Genre</th>
                        <th>Trivia</th>
                        <th>Keywords</th>
                        <th>Movie Posters</th>
                        <th>Photo Stills</th>
                        <th>Delete</th>
                    </tr>
                </tfoot>
                <tbody>
                    <?php

                    $sql = "SELECT movies.movie_id, movies.movie_name_native, movies.movie_name_english, movies.movie_year, metadata.language, metadata.country, metadata.plot, metadata.genre, movie_keywords.keyword, movie_trivia.trivia, multimedia.movie_poster, multimedia.photo_stills 
FROM movies 
LEFT JOIN metadata ON movies.movie_id = metadata.movie_id
LEFT JOIN movie_trivia ON movies.movie_id = movie_trivia.movie_id
LEFT JOIN movie_keywords ON movies.movie_id = movie_keywords.movie_id
LEFT JOIN multimedia ON movies.movie_id = multimedia.movie_media_id ORDER BY movies.movie_id ASC";

                    $result = $db->query($sql);

                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            echo '<tr> 
                              <td><a href="movies_info.php?movie_id=' . $row['movie_id'] . '" ?><b>' . $row["movie_id"] . '</b></td>
                              <td><a href="movies_info.php?movie_id=' . $row['movie_id'] . '" ?><b>' . $row["movie_name_native"] . '</b></td>
                              <td>' . $row["movie_name_english"] . '</td>
                              <td>' . $row["movie_year"] . '</td>
                              <td>' . $row["language"] . '</td>
                              <td>' . $row["country"] . ' </span> </td>
                              <td>' . $row["plot"] . '</td>
                              <td>' . $row["genre"] . '</td>
                              <td>' . $row["trivia"] . '</td>
                              <td>' . $row["keyword"] . '</td>
                              <td><img src = "images/' . $row["movie_poster"] . '" width="200" height="200 "></td>
                              <td><img src = "images/' . $row["photo_stills"] . '" width="200" height="200" > </td>
                              <td><a href="delete.php?delete=' . $row['movie_id'] . '" class = "btn btn-danger"; ?>Delete</td>
                          </tr>';
                        } //end while
                    } //end if
                    else {
                        echo "0 results";
                    } //end else

                    $result->close();
                    ?>

                </tbody>
            </table>


            <script type="text/javascript" language="javascript">
                $(document).ready(function() {

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

                });
            </script>



            <style>
                tfoot {
                    display: table-header-group;
                }
            </style>

            <?php include("./footer.php"); ?>