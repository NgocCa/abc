<?php 

session_start();
if(isset($_SESSION['login_user'])){
    echo "<script>location.href='index.php';</script>";
}
require('common/header.php'); 

?>

<body>
    <?php require('common/navbar.php'); ?>
    <script type="text/javascript" src="public/js/jquery-1.10.0.min.js"></script>
    <script src="public/js/toastr.js" type="text/javascript"></script>
    <div id="login">
        <div class="container">
            <div class="panel panel-default">
                <div class="panel-heading "><h4><i class="glyphicon glyphicon-cog"></i>&nbsp;Đăng nhập hệ thống</h4></div>
                <div class="panel-body">
                    <form method="post" action="xl-login.php" class="form-signin" role="form">
                        <div class="form-group">
                            <input name="username" type="text" class="form-control input-lg" placeholder="Tài khoản" required="" autofocus>
                        </div>
                        <div class="form-group">
                            <input name="password" type="password" class="form-control input-lg" placeholder="Mật khẩu" required="">
                        </div>            
                        <button class="btn btn-lg btn-primary btn-block" type="submit">Đăng nhập</button>
                    </form>
                </div>
            </div> <!-- /container -->
        </div>
</body>
</html>