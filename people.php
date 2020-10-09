<?php

$nav_selected = "PEOPLE";
$left_buttons = "NO";
$left_selected = "";

include("./nav.php");
global $db;

?>


<div class="right-content">
  <div class="container">

      <table id="info" cellpadding="0" cellspacing="0" border="0"
          class="datatable table table-striped table-bordered datatable-style table-hover"
          width="100%" style="width: 100px;">
            <thead>
              <tr id="table-first-row">
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Gender</th>
                <th>Picture</th>
                <th>View</th>
              </tr>
            </thead>

            <tfoot>
              <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Gender</th>
                <th>Picture</th>
                <th>View</th>
              </tr>
            </tfoot>

            <tbody>

            <?php

$sql = "SELECT * FROM crew 
ORDER BY people_id ASC;";

$result = $db->query($sql);

              if ($result->num_rows > 0) {
                  // output data of each row
                  while($row = $result->fetch_assoc()) {
                      echo '<tr>
                              <td>'.$row["people_id"].'</b></td>
                              <td>'.$row["first_name"].'</b></td>
                              <td>'.$row["last_name"].'</b></td>
                              <td>'.$row["gender"].'</td>
                              <td><img src = "images/'.$row["picture"].'" width="280" height="200 "></td>
                              <td><a href="people_info.php?people_id='.$row['people_id'].'" button type="submit" name="submit" class="btn btn-warning btn-sm"; ?>View</td>
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
