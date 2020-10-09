<?php

$nav_selected = "SONGS";
$left_buttons = "YES";
$left_selected = "SONGS";

include("./nav.php");
global $db;

?>


<div class="right-content">
  <div class="container">

      <table id="info" cellpadding="0" cellspacing="0"
          class="datatable table table-striped table-bordered datatable-style table-hover"
          width="100%" style="width: 100px;">
            <thead>
              <tr id="table-first-row">
                      <th>Song ID</th>
                      <th>Song Title</th>
                      <th>Lyrics</th>
                      <th>Audio Link</th>
                      <th>Video Link</th>

              </tr>
            </thead>

            <tfoot>
              <tr>
                <th>Song ID</th>
                <th>Song Title</th>
                <th>Lyrics</th>
                <th>Audio Link</th>
                <th>Video Link</th>
              </tr>
            </tfoot>

            <tbody>
<?php

$sql = "SELECT *  
FROM songs 
GROUP BY songs.song_id
ORDER BY songs.song_id ASC";

$result = $db->query($sql);

              if ($result->num_rows > 0) {
                  // output data of each row
                  while($row = $result->fetch_assoc()) {
                      echo '<tr>
                              <td>'.$row["song_id"].' </span> </td>
                              <td>'.$row["song_title"].' </span> </td>
                              <td>'.$row["lyrics"].'</td>
                              <td>'.$row["audio_link"].' </span> </td>
                              <td>'.$row["video_link"].'</td>
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
