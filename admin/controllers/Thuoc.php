<<?php

class Thuoc {

    private $mysqli;
    private $result;
    private $message;
    private $success;

    public function __construct($mysqli) {
        $this->mysqli = $mysqli;
    }

    public function getAllThuoc() {
        $sql = "SELECT
                thuoc.MA_THUOC,
                thuoc.TEN_THUOC,
                thuoc.MO_TA_THUOC,
                thuoc.GIA_BH,
                thuoc.GIA_THUONG,
                thuoc.DVT
                FROM
                thuoc
                ORDER BY
                thuoc.MA_THUOC ASC";

        $this->result = mysqli_query($this->mysqli, $sql);
    }

    public function addRow($id, $ten, $mo_ta, $gia_bh, $gia_thuong, $dvt) {
        $sql = "INSERT INTO thuoc VALUES ('".$id."', '".$ten."', '".$mo_ta."', ".$gia_bh.", ".$gia_thuong.", '".$dvt."')";

        if (mysqli_query($this->mysqli, $sql)) {
            $this->success = true;
            $this->message =  "New record created successfully";
        } else {
            $this->success = false;
            $this->message =  "Error: " . $sql . "<br>" . mysqli_error($this->mysqli);
        }
    }

    public function deleteRow($id) {
        $sql = "DELETE FROM thuoc WHERE thuoc.MA_THUOC='" . $id . "'";
        if (mysqli_query($this->mysqli, $sql)) {
            $this->success = true;
            $this->message = "Record deleted successfully";
        } else {
            $this->success = false;
            $this->message = "Error deleting record: " . mysqli_error($this->mysqli);
        }
    }
   public function editRow($id, $ten, $mo_ta, $gia_bh, $gia_thuong, $dvt){
      
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
