<?php


include ("../connect.php");
include ("./controllers/Thuoc.php");

$thuoc = new Thuoc($conn);

$thuoc->getAllThuoc();
$result = $thuoc->getResults();

mysqli_close($conn);


