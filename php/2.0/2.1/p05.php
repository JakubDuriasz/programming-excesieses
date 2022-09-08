<?php

$host = "localhost";
$user = "root";
$pass = "";
$dbname = "p05";
$conn = mysqli_connect($host, $user, $pass, $dbname) or die("blad polaczenia"); //polonczenie z baza
$sql = "SELECT * FROM ksiazki WHERE id_ksiazki NOT IN (SELECT id_ksiazki FROM wypozyczenia)"; //tabela glowna
$result = mysqli_query($conn, $sql);
$ksiazki = mysqli_fetch_all($result);

if (!empty($_POST)) { //tab wypozyczenia skrypt
    foreach ($_POST["ksiazki"] as $ksiazka) {
        $sql3 = 'INSERT INTO wypozyczenia (id_ksiazki, id_ucznia) values ("' . $ksiazka . '","' . $_POST["uczen"] . '")';
        mysqli_query($conn, $sql3);
    }
    unset($_POST);
    header("Location: p05.php");
}

if (isset($_GET["kid"])) {
    $sql5 = 'DELETE FROM wypozyczenia WHERE id_ksiazki='.$_GET["kid"].'';
    mysqli_query($conn, $sql5);
    header("Location: p05.php");
}
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta author="jakub duriasz">
</head>

<body>
<form action="p05.php" method="get">
        <table border=1>

            <tr>
                <th>Tytuł</th>
                <th>Autor</th>
                <th>Data wypożyczenia</th>
                <th>Imię i nazwisko</th>
                <th></th>
            </tr>
            <?php //skrypt do tabeli wyp
            $sql4 = 'SELECT wypozyczenia.id_ksiazki, tytul, autor, data_wypozyczenia, CONCAT(imie, " ", nazwisko) as "Imie i nazwisko" FROM ksiazki, uczniowie, wypozyczenia WHERE wypozyczenia.id_ksiazki = ksiazki.id_ksiazki AND wypozyczenia.id_ucznia = uczniowie.id_ucznia;';
            $result4 = mysqli_query($conn, $sql4);

            $wyp = mysqli_fetch_all($result4);

            foreach ($wyp as $wypozyczone) {
                echo '<tr>';
                echo '<td>' . $wypozyczone[1] . '</td>';
                echo '<td>' . $wypozyczone[2] . '</td>';
                echo '<td>' . $wypozyczone[3] . '</td>';
                echo '<td>' . $wypozyczone[4] . '</td>';
                echo '<td><a href="p05.php?kid='.$wypozyczone[0].'">Zwróć</a></td>';
                echo '</tr>';
            }
            ?>

        </table>
    </form><br>
    <form action="p05.php" method="post">
        <table border="1">

            <tr>
                <th></th>
                <th>Tytuł</th>
                <th>Autor</th>
                <th>Rok wydania</th>
                <th>Liczba stron</th>
            </tr>
            <?php //skrypt do tab z uczniami
            foreach ($ksiazki as $ksiazka) {
                echo '<tr>';
                echo '<td><input name="ksiazki[]" type="checkbox" value="' . $ksiazka[0] . '"></td>';
                echo '<td>' . $ksiazka[1] . '</td>';
                echo '<td>' . $ksiazka[2] . '</td>';
                echo '<td>' . $ksiazka[3] . '</td>';
                echo '<td>' . $ksiazka[4] . '</td>';
                echo '</tr>';
            }
            ?>

            <tr>
                <td colspan="5">
                    <select name="uczen">
                        <?php
                        $sql2 = 'SELECT id_ucznia, CONCAT(imie, " ", nazwisko, " ", klasa) as "Uczen" FROM uczniowie';
                        $result2 = mysqli_query($conn, $sql2);

                        $result2 = mysqli_fetch_all($result2);
                        foreach ($result2 as $uczen) {
                            echo '<option value="' . $uczen[0] . '">' . $uczen[1] . '</option>';
                        }
                        ?>
                    </select>
                    <input type="submit" value="Wypożycz">
                </td>
            </tr>

        </table>
    </form>
</body>

</html>
<?php
mysqli_close($conn);
?>