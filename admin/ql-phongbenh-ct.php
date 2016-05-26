<?php
include('xl-phong-ht.php')
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
            <input type="button" value="Thêm" class="btn-primary"/>
        </div>
        <table class="table table-bordered table-hover table-responsive">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Số phòng</th>
                    <th>Tên phòng</th>
                    <th>Giá</th>
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
                    <td><?= $row['SO_PHONG'] ?></td>
                    <td><?= $row['TEN_PHONG'] ?></td>
                    <td><?= $row['GIA'] ?></td>
                    
                    
                    <td>
                        <a href="#" data-toggle="modal" data-target="#phong_<?=$row['SO_PHONG']?>">Xem</a> | <a href="" >Sửa</a> | <a href=""> Xóa</a>
                        <!-- Modal -->
                        <div class="modal fade" id="phong_<?=$row['SO_PHONG']?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">x</span></button>
                                        <h4 class="modal-title" id="myModalLabel">Thông tin Phòng <?=$row['SO_PHONG'] ?></h4>
                                    </div>
                                    <div class="modal-body">
                                        Mã phòng: <?=$row['SO_PHONG'] ?> <br/>
                                        Tên phòng: <?=$row['TEN_PHONG'] ?> <br/>
                                        Giá: <?=number_format($row['GIA'],0,".",",") ?> <br/>
                                        
                                      
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
