<?php
// database configuration
$host     = "sql12.freemysqlhosting.net";
$user     = "sql12206905";
$pass     = "llprjCknUv";
$database = "sql12206905";
$connect = new mysqli($host, $user, $pass, $database) or die("Error : " . mysql_error());

// access key to access API
$access_key = "12345";

// google play url
$gplay_url = "https://play.google.com/store/apps/details?id=your.package.com";

// email configuration
$admin_email    = "admin@mail.com";
$email_subject  = "Foozi: Information Email";
$change_message = "You have change your admin info such as email and or password.";
$reset_message  = "Your new password is ";

// reservation notification configuration
$reservation_subject = "Foozi: New Reservation";
$reservation_message = "There is new reservation. please check it on admin page.";

// copyright
$copyright = "Foozi &copy; 2017. All rights reserved.";
?>