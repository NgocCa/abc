<nav class="navbar navbar-inverse" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.php"><i class="glyphicon glyphicon-th-large"></i>&nbsp;Trang chủ</a>
        </div>

        <?php
            session_start();
            if(isset($_SESSION['login_user'])){
        ?>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown" style="font-size: 15px">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Xin chào, <?=$_SESSION['login_user']["hoten"]?><b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><i class="glyphicon glyphicon-user"></i>&nbsp;Hồ sơ</a></li>
                            <li class="divider"></li>
                            <li><a href="#" onclick="if (confirm('Xác nhận đăng xuất?')) {
                                            location.href = 'logout.php';
                                            return true;
                                        } else {
                                            return false;
                                        }"><i class="glyphicon glyphicon-off"></i>&nbsp;Đăng xuất</a></li>
                        </ul>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
            <?php 
            
            }
            ?>
    </div><!-- /.container-fluid -->
</nav>
<style type="text/css">
    .dropdown-menu>li>a:hover {
        color: #000;
        font-weight: normal;
        font-size: 14px;
    }
    .dropdown-menu>li>a {
        color: #000;
    }
</style>