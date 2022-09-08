<?php
if (isset($_POST["lista"])) $x = $_POST["lista"];
else $x = 1;
?>
<form action="02.php" method=post>
  <select name="lista">
    <?php
    for ($a = 1; $a <= 1000; $a++) {
      echo ("<option value=\"$a\"");
      if ($a == $x) echo (" selected");
      echo (">TEXT$a</option>");
    }
    ?>
  </select>
  <input type="submit">
</form>