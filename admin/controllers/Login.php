<?php

class Login {

    private $username;
    private $password;
    private $mysqli;
    private $message;
    private $quyensd;
    private $success;

    public function __construct($username, $password, $mysqli, $quyensd) {
        $this->username = $username;
        $this->password = $password;
        $this->mysqli = $mysqli;
        $this->quyensd = $quyensd;
    }

    function login() {
        $sql = "SELECT * FROM NHAN_VIEN WHERE NHAN_VIEN.TAI_KHOAN = '" . $this->username . "' AND NHAN_VIEN.MAT_KHAU = '" . $this->password . "' AND NHAN_VIEN.QUYEN_SD = '" . $this->quyensd . "'";

        $result = mysqli_query($this->mysqli, $sql);

        $rows = mysqli_fetch_row($result);
        if ($rows != NULL) {
            session_start();
            $_SESSION['login_user']["username"] = $this->username;
            ;
            $_SESSION['login_user']["msnv"] = $rows[0];
            $_SESSION['login_user']["hoten"] = $rows[1];
            $_SESSION['login_user']["quyensd"] = $this->quyensd;
            $this->message = "Đăng nhập thành công";
            $this->success = true;
        } else {
            $this->message = "Đăng nhập không thành công";
            $this->success = false;
        }
    }

    public static function logout() {
        session_start();
        unset($_SESSION['login_user']);
    }

    function getUsername() {
        return $this->username;
    }

    function getPassword() {
        return $this->password;
    }

    function getMessage() {
        return $this->message;
    }

    function getSuccess() {
        return $this->success;
    }

}
