<table border=1>
  <?php
  for ($a = 1; $a <=10; $a++) {
    echo ("<tr>");
    for ($b = 1; $b <=20; $b++) {
      echo ("<td>$b" . "_$a</td>");
    }
    echo ("</tr>");
  }
  ?>
</table>