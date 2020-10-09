<?php

    include("./nav.php");
    global $db;

    $sql="UPDATE dishes SET $column = '$value' WHERE id = '$id'";
    mysqli_query($db, $sql);
    
?>

<html>
<body>
    <h2 style="text-align:center;" style = "color: #01B0F1;">EDIT</h2>
</body>
</html>