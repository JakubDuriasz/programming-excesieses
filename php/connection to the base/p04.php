<?php
$conn = mysqli_connect("127.0.0.1", "root", "","cw01") or die("BLAD polaczenia"); 

if(isset($_POST["imie"])&&isset($_POST["nazwisko"]))
{
	$sql = "INSERT INTO autorzy (imie, nazwisko) VALUES ('".$_POST["imie"]."','".$_POST["nazwisko"]."')";
	mysqli_query($conn, $sql);
}

if(!empty($_GET["del"]))
{
$sql = "DELETE FROM autorzy WHERE id=".$_GET["del"];
mysqli_query($conn, $sql);
}

$sql = "SELECT * FROM autorzy";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    echo"<table border=1>";
	echo"<tr><td>id</td><td>imie</td><td>nazwisko</td></tr>";
	while($row = mysqli_fetch_assoc($result)) 
		{
		echo"<tr>";
        echo "<td>".$row["aid"]."</td>";
		echo "<td>".$row["imie"]."</td>";
		echo "<td>".$row["nazwisko"]."</td>";
        echo "<td> <a href=\"p04.php?del=".$row["id"]."\"><button>USUN</button></a></td>";
		echo"</tr>";
		}
	echo"</table>";
	echo"
	<p>
	<FORM ACTION=p03.php METHOD=POST>
	Imie: <INPUT TYPE=TEXT NAME=imie><BR>
	Nazwisko: <INPUT TYPE=TEXT NAME=nazwisko><BR>
	<INPUT TYPE=SUBMIT value=\"ZAPISZ\">
	</FORM>";
	
} else {
    echo "0 results";
}

mysqli_close($conn);
?>