<?php require_once('header.php'); ?>

<?php
if(isset($_POST['form1'])) {
	$valid = 1;

    if(empty($_POST['tcat_name'])) {
        $valid = 0;
        $error_message .= "Tên danh mục cấp cao không thể để trống<br>";
    } else {
		// Kiểm tra danh mục cấp cao trùng lặp
    	// Lấy tên danh mục cấp cao hiện tại trong cơ sở dữ liệu
    	$statement = $pdo->prepare("SELECT * FROM tbl_top_category WHERE tcat_id=?");
		$statement->execute(array($_REQUEST['id']));
		$result = $statement->fetchAll(PDO::FETCH_ASSOC);
		foreach($result as $row) {
			$current_tcat_name = $row['tcat_name'];
		}

		$statement = $pdo->prepare("SELECT * FROM tbl_top_category WHERE tcat_name=? and tcat_name!=?");
    	$statement->execute(array($_POST['tcat_name'],$current_tcat_name));
    	$total = $statement->rowCount();							
    	if($total) {
    		$valid = 0;
        	$error_message .= 'Tên danh mục cấp cao đã tồn tại<br>';
    	}
    }

    if($valid == 1) {    	
		// Cập nhật vào cơ sở dữ liệu
		$statement = $pdo->prepare("UPDATE tbl_top_category SET tcat_name=?,show_on_menu=? WHERE tcat_id=?");
		$statement->execute(array($_POST['tcat_name'],$_POST['show_on_menu'],$_REQUEST['id']));

    	$success_message = 'Danh mục cấp cao đã được cập nhật thành công.';
    }
}
?>

<?php
if(!isset($_REQUEST['id'])) {
	header('location: logout.php');
	exit;
} else {
	// Kiểm tra id có hợp lệ không
	$statement = $pdo->prepare("SELECT * FROM tbl_top_category WHERE tcat_id=?");
	$statement->execute(array($_REQUEST['id']));
	$total = $statement->rowCount();
	$result = $statement->fetchAll(PDO::FETCH_ASSOC);
	if( $total == 0 ) {
		header('location: logout.php');
		exit;
	}
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Chỉnh sửa Danh mục cấp cao</h1>
	</div>
	<div class="content-header-right">
		<a href="top-category.php" class="btn btn-primary btn-sm">Xem tất cả</a>
	</div>
</section>


<?php							
foreach ($result as $row) {
	$tcat_name = $row['tcat_name'];
    $show_on_menu = $row['show_on_menu'];
}
?>

<section class="content">

  <div class="row">
    <div class="col-md-12">

		<?php if($error_message): ?>
		<div class="callout callout-danger">
		
		<p>
		<?php echo $error_message; ?>
		</p>
		</div>
		<?php endif; ?>

		<?php if($success_message): ?>
		<div class="callout callout-success">
		
		<p><?php echo $success_message; ?></p>
		</div>
		<?php endif; ?>

        <form class="form-horizontal" action="" method="post">

        <div class="box box-info">

            <div class="box-body">
                <div class="form-group">
                    <label for="" class="col-sm-2 control-label">Tên danh mục cấp cao <span>*</span></label>
                    <div class="col-sm-4">
                        <input type="text" class="form-control" name="tcat_name" value="<?php echo $tcat_name; ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-2 control-label">Hiển thị trên Menu? <span>*</span></label>
                    <div class="col-sm-4">
                        <select name="show_on_menu" class="form-control" style="width:auto;">
                            <option value="0" <?php if($show_on_menu == 0) {echo 'selected';} ?>>Không</option>
                            <option value="1" <?php if($show_on_menu == 1) {echo 'selected';} ?>>Có</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                	<label for="" class="col-sm-2 control-label"></label>
                    <div class="col-sm-6">
                      <button type="submit" class="btn btn-success pull-left" name="form1">Cập nhật</button>
                    </div>
                </div>

            </div>

        </div>

        </form>

    </div>
  </div>

</section>

<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Xác nhận xóa</h4>
            </div>
            <div class="modal-body">
                Bạn có chắc muốn xóa mục này không?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Hủy</button>
                <a class="btn btn-danger btn-ok">Xóa</a>
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>


