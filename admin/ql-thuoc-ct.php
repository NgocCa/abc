
<?php
include('xl-thuoc-ht.php')
?>

<style type="text/css">
    .table th, .table td {
        text-align: center;
        vertical-align: middle;
        width: auto;
    }
</style>


<div class="col-xs-12">

    <div class="form-group">
        <!-- Single button -->
        <div class="btn-group">
            <input id="search" name="search" type="text" class="form-control" placeholder="Tìm kiếm" value=""/>
        </div>
        <button class="btn btn-default" type="button"><i class="glyphicon glyphicon-search"></i></button>
        <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#them_thuoc">Thêm thuốc</button>
        <?php
        include ("./ql-thuoc-them.php");
        ?>
    </div>
    <table class="table table-bordered table-hover table-responsive">
        <thead>
            <tr>
                <th>STT</th>
                <th>Mã thuốc</th>
                <th>Tên thuốc</th>
                <th>Thao tác</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $stt = 1;
            while ($row = mysqli_fetch_assoc($result)) {
                ?>
                <tr>
                    <td><?= $stt++ ?></td>
                    <td><?= $row['MA_THUOC'] ?></td>
                    <td><?= $row['TEN_THUOC'] ?></td>
                    <td>
                        <a href="#" data-toggle="modal" data-target="#thuoc_<?=$row['MA_THUOC']?>">Xem</a> | <a href="" >Sửa</a> | <a href="xl-thuoc-xoa.php?id=<?=$row['MA_THUOC']?>" 
                                                                                                                                      onclick="if (confirm('Bạn có muốn xóa thuốc <?=$row['MA_THUOC']?> không?')) {return true;} else {return false;}">Xóa
                        </a> 
                        <!-- Modal -->
                        <div class="modal fade" id="thuoc_<?=$row['MA_THUOC']?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">x</span></button>
                                        <h4 class="modal-title" id="myModalLabel">Thông tin thuốc <?=$row['MA_THUOC'] ?></h4>
                                    </div>
                                    <div class="modal-body">
                                        Mã thuốc: <?=$row['MA_THUOC'] ?> <br/>
                                        Tên thuốc: <?=$row['TEN_THUOC'] ?> <br/>
                                        Mô tả: <?=$row['MO_TA_THUOC'] ?> <br/>
                                        Giá bảo hiểm: <?=number_format($row['GIA_BH'],0,".",",") ?> <br/>
                                        Giá thường: <?=number_format($row['GIA_THUONG'],0,".",",") ?> <br/>
                                        Đơn vị tính: <?=$row['DVT'] ?> <br/>
                                      
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>
                </tr>
                <?php
            }
            ?>
        </tbody>
    </table>

    <div class="text-right">

    </div>	
</div>
