<?php

include ("../connect.php");
include ("./controllers/Login.php");

$username = $_POST["username"];
$password = md5($_POST["password"]);

$login = new Login($username, $password, $conn, "1");
$login->login();
if ($login->getSuccess()) {
    //Chuyen toi trang chu quan ly
    echo "<script>location.href='index.php';</script>";
} else {
    //Thong bao loi
    echo "<script>alert('Tài khoản mật khẩu không chính xác!');location.href='login.php';</script>";
}

mysqli_close($conn);
