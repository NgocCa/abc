<form class="form-horizontal" method="post" action="xl-thuoc-them.php" role="form">
    <div class="modal fade" id="them_thuoc" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">x</span></button>
                    <h4 class="modal-title" id="myModalLabel">Chỉnh sửa thông tin thuốc</h4>
                </div>
                <div class="modal-body">
                   
                        <div class="form-group">
                            <label for="ma_thuoc" class="col-sm-3 control-label">Mã thuốc</label>
                            <div class="col-sm-9">
                                <input name="ma_thuoc" type="text" value="" class="form-control" id="name" placeholder="Nhập mã thuốc" required ="this.setCustomValidity('Nhap ma thuoc!')"/>
                            </div>
                        </div>     
                        <div class="form-group">
                            <label for="ten_thuoc" class="col-sm-3 control-label">Tên thuốc</label>
                            <div class="col-sm-9">
                                <input name="ten_thuoc" type="text" value="" class="form-control" id="name" placeholder="Nhập tên thuốc" required="" />
                            </div>
                        </div>      
                        <div class="form-group">
                            <label for="mo_ta_thuoc" class="col-sm-3 control-label">Mô tả thuốc</label>
                            <div class="col-sm-9">
                                <textarea name="mo_ta_thuoc" rows="5" cols="20" class="form-control" placeholder="Nhập mô tả thuốc" required="required"></textarea>
                            </div>
                        </div>  

                        <div class="form-group">
                            <label for="gia_bh" class="col-sm-3 control-label">Giá thuốc bảo hiểm</label>
                            <div class="col-sm-9">
                                <input name="gia_bh" type="text" value="" class="form-control" id="name" placeholder="Nhập giá bảo hiểm" required=""/>
                            </div>
                        </div>   
                        <div class="form-group">
                            <label for="gia_thuong" class="col-sm-3 control-label">Giá thuốc bình thường</label>
                            <div class="col-sm-9">
                                <input name="gia_thuong" type="text" value="" class="form-control" id="name" placeholder="Nhập giá thường" required=""/>
                            </div>
                        </div> 
                        <div class="form-group">
                            <label for="dvt" class="col-sm-3 control-label">Đơn vị tính</label>
                            <div class="col-sm-9">
                                <select class="form-control" name="dvt">
                                    <option>-Chọn-</option>
                                    <option>Chai</option>
                                    <option>Tube</option>
                                    <option>Viên</option>
                                    <option>Vỉ</option>
                                </select>
                            </div>
                        </div> 
                </div>
               
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Lưu</button>
                    <button type="reset" class="btn btn-warning">Làm lại</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
                </div>
            </div>
        </div>
    </div>
</form>