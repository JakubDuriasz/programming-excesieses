<?php
$conn = mysqli_connect("127.0.0.1", "root", "","biblioteka") or die("BLAD polaczenia"); 

$sql = "SELECT * FROM ksiazki";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    echo"<table border=1>";
	echo"<tr><td></td><td>Tytuł</td><td>Autor</td><td>Rok wydania</td><td>Liczba stron</td></tr>";
	while($row = mysqli_fetch_assoc($result)) 
		{
		echo"<tr>";
        echo'<td> <input type="checkbox"></td>';
        echo "<td>".$row["tytul"]."</td>";
		echo "<td>".$row["autor"]."</td>";
		echo "<td>".$row["rok_wyd"]."</td>";
        echo "<td>".$row["liczba_str"]."</td>";
		echo"</tr>";
		}
	echo"</table>";
	
} else {
    echo "0 results";
}

mysqli_close($conn);
?>