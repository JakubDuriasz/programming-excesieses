<?php
$conn = new mysqli("127.0.0.1", "root", "", "cw01") or die("BLAD polonczenia");
$sql = "SELECT * FROM kategorie";
$result = $conn->query($sql);

if (mysqli_num_rows($result) > 0) {
    echo "<table border=1>";
    echo "<tr><td>id</td><td>nazwa</td></tr>";
    while ($row = mysqli_fetch_assoc($result)) {
        echo "<tr>";
        echo "<td>" . $row["kid"] . "</td>";
        echo "<td>" . $row["nazwa"] . "</td>";
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}
$conn->close();
?>