<?php

  // set the current page to one of the main buttons
  $nav_selected = "HOME";

  // make the left menu buttons visible; options: YES, NO
  $left_buttons = "NO";

  // set the left menu button selected; options will change based on the main selection
  $left_selected = "";

  include("./nav.php");
?>
<div class="right-content">
    <div class="container">

        <table id="info" cellpadding="0" cellspacing="0" border="0"
            class="datatable table table-striped table-bordered datatable-style table-hover"
            width="100%" style="width: 100px;">
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
                </tr>
              </tfoot>

              <tbody>

              <?php

// if (isset($_GET['movie_id'])) {

//     $id = mysqli_real_escape_string($db, $_GET['movie_id']);
// //    $sql = "SELECT * FROM `(mandatorydata NATURAL JOIN metadata)` WHERE movie_id = " . $id;
//     //$GLOBALS['row_data'] = mysqli_query($db, $sql);
// } 

$sql = "SELECT * from (mandatorydata NATURAL JOIN metadata)";
$result = $db->query($sql); 
if(mysqli_num_rows($result) > 0){
    // $row = mysqli_fetch_array($result);
    // $pageVal = $row['movie_id'];

    while($row = mysqli_fetch_array($result)){
        echo"<a href='movie_info.php?={$row['movie_id']}'>{$row['movie_id']}</a>";
        $row = mysqli_fetch_array($result);
        $pageVal = $row['movie_id'];
        
//    $pageVal = $row['movie_id'];
        // $query = "SELECT * from (mandatorydata NATURAL JOIN metadata) WHERE (?)";
        // $stmt = prepare($query);
        // $stmt->bind_param($pageVal);
        // $sql = $stmt->execute();
        
     }
}

$sql = "SELECT * from (mandatorydata NATURAL JOIN metadata) WHERE movie_id = '$pageVal'";
$result = $db->query($sql);

                if ($result->num_rows > 0) {
                    // output data of each row
                    while($row = $result->fetch_assoc()) {
                        echo '<tr>
                                <td>'.$row["movie_id"].'</td>
                                <td>'.$row["movie_name_native"].' </span> </td>
                                <td>'.$row["movie_name_english"].'</td>
                                <td>'.$row["movie_year"].'</td>
                                <td>'.$row["language"].'</td>
                                <td>'.$row["country"].' </span> </td>
                                <td>'.$row["plot"].'</td>
                                <td>'.$row["genre"].'</td>
                                <td>'.$row["trivia"].'</td>
                                <td>'.$row["keywords"].'</td>
                            </tr>';
                    }//end while
                }//end if
                else {
                    echo "0 results";
                }//end else

                 $result->close();
                ?>

              </tbody>
        </table>


        <script type="text/javascript" language="javascript">
    $(document).ready( function () {

        $('#info').DataTable( {
            dom: 'lfrtBip',
            buttons: [
                'copy', 'excel', 'csv', 'pdf'
            ] }
        );

        $('#info thead tr').clone(true).appendTo( '#info thead' );
        $('#info thead tr:eq(1) th').each( function (i) {
            var title = $(this).text();
            $(this).html( '<input type="text" placeholder="Search '+title+'" />' );

            $( 'input', this ).on( 'keyup change', function () {
                if ( table.column(i).search() !== this.value ) {
                    table
                        .column(i)
                        .search( this.value )
                        .draw();
                }
            } );
        } );

        var table = $('#info').DataTable( {
            orderCellsTop: true,
            fixedHeader: true,
            retrieve: true
        } );

    } );

</script>



 <style>
   tfoot {
     display: table-header-group;
   }
 </style>

  <?php include("./footer.php"); ?>
