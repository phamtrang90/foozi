<?php
	echo $_SERVER['DOCUMENT_ROOT'];
	echo $_SERVER['HTTP_HOST'];

	include($_SERVER['DOCUMENT_ROOT'].'/app/variables/variables.php');
	$connect->close();
?>