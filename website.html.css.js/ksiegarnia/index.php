<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">
<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"pl-PL\">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8"> 
    <title>Rezultat zapytania</title>
</head>
    
<body>
    
    <table width="1000" align="center" border="1" bordercolor="#d5d5d5"  cellpadding="0" cellspacing="0">
        <tr>
        <?php
            ini_set("display_errors", 0);
            require_once "dbconnect.php";
            $polaczenie = mysqli_connect($host, $user, $password);
			mysqli_query($polaczenie, "SET CHARSET utf8");
			mysqli_query($polaczenie, "SET NAMES 'utf8' COLLATE 'utf8_polish_ci'");
            mysqli_select_db($polaczenie, $database);
            
            $zapytanietxt = file_get_contents("zapytanie.txt");
            
            $rezultat = mysqli_query($polaczenie, $zapytanietxt);
            $ile = mysqli_num_rows($rezultat);
            
            echo "znaleziono: ".$ile;
if ($ile>=1) 
{
echo<<<END
<td width="50" align="center" bgcolor="e5e5e5">idklienta</td>
<td width="100" align="center" bgcolor="e5e5e5">imie</td>
<td width="100" align="center" bgcolor="e5e5e5">nazwisko</td>
<td width="100" align="center" bgcolor="e5e5e5">miejscowosc</td>
<td width="50" align="center" bgcolor="e5e5e5">idksiazki</td>
<td width="100" align="center" bgcolor="e5e5e5">imieautora</td>
<td width="100" align="center" bgcolor="e5e5e5">nazwiskoautora</td>
<td width="100" align="center" bgcolor="e5e5e5">tytul</td>
<td width="100" align="center" bgcolor="e5e5e5">cena</td>
<td width="50" align="center" bgcolor="e5e5e5">idzamowienia</td>
<td width="100" align="center" bgcolor="e5e5e5">data</td>
<td width="100" align="center" bgcolor="e5e5e5">status</td>
</tr><tr>
END;
}

	for ($i = 1; $i <= $ile; $i++) 
	{
		
		$row = mysqli_fetch_assoc($rezultat);
		$a1 = $row['idklienta'];
		$a2 = $row['imie'];
		$a3 = $row['nazwisko'];
		$a4 = $row['miejscowosc'];
		$a5 = $row['idksiazki'];
		$a6 = $row['imieautora'];
		$a7 = $row['nazwiskoautora'];
		$a8 = $row['tytul'];
		$a9 = $row['cena'];
		$a10 = $row['idzamowienia'];
		$a11 = $row['data'];	
		$a12 = $row['status'];			
		
echo<<<END
<td width="50" align="center">$a1</td>
<td width="100" align="center">$a2</td>
<td width="100" align="center">$a3</td>
<td width="100" align="center">$a4</td>
<td width="100" align="center">$a5</td>
<td width="100" align="center">$a6</td>
<td width="100" align="center">$a7</td>
<td width="100" align="center">$a8</td>
<td width="100" align="center">$a9</td>
<td width="50" align="center">$a10</td>
<td width="100" align="center">$a11</td>
<td width="100" align="center">$a12</td>
</tr><tr>
END;
			
	}
	

?>


</tr></table>



</body>
</html>

