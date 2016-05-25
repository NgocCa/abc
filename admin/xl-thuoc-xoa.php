<?php

include ("../connect.php");
include ("./controllers/Thuoc.php");

$thuoc = new Thuoc($conn);

$id = $_GET['id'];

$thuoc->deleteRow($id);

$success = $thuoc->getSuccess();
$message = $thuoc->getMessage();

echo "<script>alert('".$message."');location.href='ql-thuoc.php';</script>";


mysqli_close($conn);

