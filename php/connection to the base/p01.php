<?php 
$conn = mysqli_connect("127.0.0.1","root","","cw01") or die("BLAD polonczenia");
echo"JEST POLONCZENIE";
mysqli_close($conn);
?>