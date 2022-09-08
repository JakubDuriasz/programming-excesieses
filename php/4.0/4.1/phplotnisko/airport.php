<!DOCTYPE html>
<html lang="pl">

<head>
	<meta charset="UTF-8">
	<title>Odloty samolotów</title>
	<link rel="stylesheet" href="style.css"> 
</head>

<body>
	<div class="s1">
		<h2>Odloty z lotniska</h2>
	</div>
	<div class="s2"><img src="logo.png" alt="logotyp"></div>
	<div class="main">
		<table>
			<tr>
				<th>LP.</th>
				<th>NUMER REJSU</th>
				<th>CZAS</th>
				<th>KIERUNEK</th>
				<th>STATUS</th>
			</tr>
			<?php
			require('connect.php');

			$qrr = mysqli_query($qrr, 'SELECT id, nr_rejsu, czas, kierunek, status_lotu from odloty ORDER BY czas desc');

			while ($V = mysqli_fetch_assoc($qrr)) {
				echo "<tr>";
				for ($o = 0; $o <= 4; $o++) {
					echo "<td>";
					echo $V[$o];
					echo "</td>";
				}
				echo "</tr>";
			}
			?>
		</table>
	</div>
	<div class="pobierz">
		<a href="samolot.png">Pobierz obraz</a>
	</div>
	<div id="cookie">
		<p>
			<?php
			include ('cookie.php');
			?>
		</p>
	</div>
	<footer>Autor: Jakub Duriasz 2TD gr 1</footer>
</body>

</html>