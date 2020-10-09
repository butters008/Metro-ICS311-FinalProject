<?php

$nav_selected = "MOVIES";
$left_buttons = "YES";
$left_selected = "RELEASES";

include("./nav.php");

global $db;

if(isset($_GET['delete'])){
    $id =  $_GET['delete'];
    $db->query("DELETE FROM movies WHERE movie_id = $id");
    header('location: movie_releases.php?MovieDeleted=Success');
}
?>
