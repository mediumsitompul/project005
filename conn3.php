<?php
define('HOST', '192.168.100.100:6607');
define('USER', 'pqr');
define('PASS', 'Pensi2021');
define('DB', 'db_application1');


$connect = mysqli_connect(HOST, USER, PASS, DB) or die('Not Connect');
?>
