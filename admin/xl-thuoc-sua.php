<?php

include ("../connect.php");
include ("./controllers/Thuoc.php");

$thuoc = new Thuoc($conn);

$id = $_POST['ma_thuoc'];
$ten = $_POST['ten_thuoc'];
$mo_ta = $_POST['mo_ta_thuoc'];
$gia_bh = $_POST['gia_bh'];
$gia_thuong = $_POST['gia_thuong'];
$dvt = $_POST['dvt'];

$thuoc->addRow($id, $ten, $mo_ta, $gia_bh, $gia_thuong, $dvt);

$success = $thuoc->getSuccess();
$message = $thuoc->getMessage();

echo "<script>alert('" . $message . "');location.href='ql-thuoc.php';</script>";


mysqli_close($conn);

