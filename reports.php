<?php
  $nav_selected = "REPORTS";
  $left_buttons = "NO";
  $left_selected = "";
  include("./nav.php");

  global $db; 
?>

<!DOCTYPE HTML>
<html>
<link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">
<head>
 <meta charset="utf-8">
 <title>
  Google Charts
 </title>
 <script type="text/javascript" src="https://www.google.com/jsapi"></script>
 <script type="text/javascript">
 google.load("visualization", "1", {packages:["corechart"]});
 google.setOnLoadCallback(drawChart);
 function drawChart() {
 var data = google.visualization.arrayToDataTable([

 ['Year', 'Number of Movies'],
 <?php 

$sql = "SELECT movie_year, count(movie_year) as number FROM movies GROUP BY movie_year;"; 
$result = mysqli_query($db, $sql);  
while($row = mysqli_fetch_array($result)){
    echo "['".$row["movie_year"]."', ".$row["number"]."],";  
}
?>
 
]);

 var options = {
 title: 'Movie/Year Chart'
 };
 var chart = new google.visualization.ColumnChart(document.getElementById("columnchart"));
 chart.draw(data, options);
 }
 </script>
</head>
<body>
 <h2 style = "text-align:center;">Movies</h3>
 <div id="columnchart" style="width: 1600px; height: 700px;"></div>
</body>
</html>

<?php include("./footer.php"); ?>