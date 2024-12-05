<?php require_once('header.php'); ?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Xem Danh Mục Cấp Cao Nhất</h1>
	</div>
	<div class="content-header-right">
		<a href="top-category-add.php" class="btn btn-primary btn-sm">Thêm Mới</a>
	</div>
</section>

<section class="content">

  <div class="row">
    <div class="col-md-12">

      <div class="box box-info">
        
        <div class="box-body table-responsive">
          <table id="example1" class="table table-bordered table-hover table-striped">
			<thead>
			    <tr>
			        <th>#</th>
			        <th>Tên Danh Mục Cấp Cao Nhất</th>
                    <th>Hiển thị trên Menu?</th>
			        <th>Hành Động</th>
			    </tr>
			</thead>
            <tbody>
            	<?php
            	$i = 0;
            	$statement = $pdo->prepare("SELECT * FROM tbl_top_category ORDER BY tcat_id DESC");
            	$statement->execute();
            	$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
            	foreach ($result as $row) {
            		$i++;
            		?>
					<tr>
	                    <td><?php echo $i; ?></td>
	                    <td><?php echo $row['tcat_name']; ?></td>
                        <td>
                            <?php 
                                if ($row['show_on_menu'] == 1) {
                                    echo 'Có';
                                } else {
                                    echo 'Không';
                                }
                            ?>
                        </td>
	                    <td>
	                        <a href="top-category-edit.php?id=<?php echo $row['tcat_id']; ?>" class="btn btn-primary btn-xs">Sửa</a>
	                        <a href="#" class="btn btn-danger btn-xs" data-href="top-category-delete.php?id=<?php echo $row['tcat_id']; ?>" data-toggle="modal" data-target="#confirm-delete">Xóa</a>
	                    </td>
	                </tr>
            		<?php
            	}
            	?>
            </tbody>
          </table>
        </div>
      </div>

</section>

<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Xác Nhận Xóa</h4>
            </div>
            <div class="modal-body">
                <p>Bạn có chắc chắn muốn xóa mục này không?</p>
                <p style="color:red;">Hãy cẩn thận! Tất cả sản phẩm, danh mục cấp trung và cấp cuối thuộc danh mục cấp cao này sẽ bị xóa khỏi tất cả các bảng như bảng đơn hàng, bảng thanh toán, bảng kích thước, bảng màu, bảng đánh giá, v.v.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Hủy</button>
                <a class="btn btn-danger btn-ok">Xóa</a>
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>


