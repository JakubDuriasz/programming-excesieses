<?php
$conn = new PDO("mysql:host=127.0.0.1;dbname=cw01","root","");

$sql = "SELECT * FROM kategorie";
    echo "<table border=1>";
    echo "<tr><td>id</td><td>nazwa</td></tr>";
    foreach ($conn->query($sql) as $row){
        echo"<tr>";
        echo"<td>".$row["kid"]."</td>";
        echo "<td>" . $row["nazwa"] . "</td>";
        echo "</tr>";
    }
    echo"</table>";
$conn = null;
?>