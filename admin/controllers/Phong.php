<?php

class Phong {

    private $mysqli;
    private $result;
    private $message;
    private $success;

    public function __construct($mysqli) {
        $this->mysqli = $mysqli;
    }

    public function getAllPhong() {
        $sql = "SELECT
        phong_benh.SO_PHONG,
        phong_benh.TEN_PHONG,
        phong_benh.MO_TA,
        phong_benh.HOAT_DONG,
        phong_benh.LOAI_THUONG,
        phong_benh.GIA,
        phong_benh.MADV
        FROM
        phong_benh
        ORDER BY
        phong_benh.SO_PHONG DESC;

        $this->result = mysqli_query($this->mysqli, $sql)";
    }
    public function getResults() {
        return $this->result;
    }

    function getMessage() {
        return $this->message;
    }

    function getSuccess() {
        return $this->success;
    }
}    