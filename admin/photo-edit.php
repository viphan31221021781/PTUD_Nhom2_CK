<?php require_once('header.php'); ?>

<?php
if(isset($_POST['form1'])) {
	$valid = 1;

	if(empty($_POST['caption'])) {
        $valid = 0;
        $error_message .= "Tên mô tả ảnh không thể để trống<br>";
    }

    $path = $_FILES['photo']['name'];
    $path_tmp = $_FILES['photo']['tmp_name'];

    if($path != '') {
    	$ext = pathinfo( $path, PATHINFO_EXTENSION );
        $file_name = basename( $path, '.' . $ext );
        if( $ext!='jpg' && $ext!='png' && $ext!='jpeg' && $ext!='gif' ) {
            $valid = 0;
            $error_message .= 'Bạn chỉ có thể tải lên ảnh với định dạng jpg, jpeg, gif hoặc png<br>';
        }
    }
       
    if($valid == 1) {

    	if($path == '') {
    		// Cập nhật vào cơ sở dữ liệu
			$statement = $pdo->prepare("UPDATE tbl_photo SET caption=? WHERE id=?");
			$statement->execute(array($_POST['caption'],$_REQUEST['id']));
    	} else {
    		unlink('../assets/uploads/'.$_POST['previous_photo']);

    		$final_name = 'photo-'.$_REQUEST['id'].'.'.$ext;
        	move_uploaded_file( $path_tmp, '../assets/uploads/'.$final_name );

        	// Cập nhật vào cơ sở dữ liệu
			$statement = $pdo->prepare("UPDATE tbl_photo SET caption=?, photo=? WHERE id=?");
			$statement->execute(array($_POST['caption'],$final_name,$_REQUEST['id']));
    	}
    	
    	$success_message = 'Ảnh đã được cập nhật thành công.';
    }
}
?>

<?php
if(!isset($_REQUEST['id'])) {
	header('location: logout.php');
	exit;
} else {
	// Kiểm tra id hợp lệ
	$statement = $pdo->prepare("SELECT * FROM tbl_photo WHERE id=?");
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
		<h1>Chỉnh sửa ảnh</h1>
	</div>
	<div class="content-header-right">
		<a href="photo.php" class="btn btn-primary btn-sm">Xem tất cả</a>
	</div>
</section>

<?php							
foreach ($result as $row) {
	$caption = $row['caption'];
	$photo = $row['photo'];
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

			<form class="form-horizontal" action="" method="post" enctype="multipart/form-data">

				<div class="box box-info">
					<div class="box-body">
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Mô tả Ảnh <span>*</span></label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="caption" value="<?php echo $caption; ?>">
							</div>
						</div>
						<div class="form-group">
				            <label for="" class="col-sm-2 control-label">Ảnh Hiện Tại</label>
				            <div class="col-sm-6" style="padding-top:6px;">
				                <img src="../assets/uploads/<?php echo $photo; ?>" class="existing-photo" style="width:300px;">

				                <input type="hidden" name="previous_photo" value="<?php echo $photo; ?>">
				            </div>
				        </div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Tải Ảnh Mới <span>*</span></label>
							<div class="col-sm-4" style="padding-top:6px;">
								<input type="file" name="photo">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label"></label>
							<div class="col-sm-6">
								<button type="submit" class="btn btn-success pull-left" name="form1">Gửi</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</section>

<?php require_once('footer.php'); ?>
