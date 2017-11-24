<?php
echo $_SERVER['HTTP_HOST'];
echo "<br>";
echo $_SERVER['DOCUMENT_ROOT'];
include($_SERVER['HTTP_HOST'] . '/variables/variables.php');
$connect->set_charset('utf8');
?>