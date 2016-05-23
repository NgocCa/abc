<?php

include ("./controllers/Login.php");
Login::logout();
echo "<script>location.href='login.php';</script>";