<?php require_once('header.php'); ?>

<?php
if(isset($_POST['form1'])) {
	$valid = 1;

	if(empty($_POST['title'])) {
		$valid = 0;
		$error_message .= 'Tiêu đề không được để trống<br>';
	}

	if(empty($_POST['content'])) {
		$valid = 0;
		$error_message .= 'Nội dung không được để trống<br>';
	}

	$path = $_FILES['photo']['name'];
    $path_tmp = $_FILES['photo']['tmp_name'];

    if($path!='') {
        $ext = pathinfo( $path, PATHINFO_EXTENSION );
        $file_name = basename( $path, '.' . $ext );
        if( $ext!='jpg' && $ext!='png' && $ext!='jpeg' && $ext!='gif' ) {
            $valid = 0;
            $error_message .= 'Bạn phải đăng tải dưới định dạng jpg, jpeg, gif hoặc png <br>';
        }
    } else {
    	$valid = 0;
        $error_message .= 'Bạn phải chọn một bức ảnh <br>';
    }

	if($valid == 1) {

		// getting auto increment id
		$statement = $pdo->prepare("SHOW TABLE STATUS LIKE 'tbl_service'");
		$statement->execute();
		$result = $statement->fetchAll();
		foreach($result as $row) {
			$ai_id=$row[10];
		}


		$final_name = 'service-'.$ai_id.'.'.$ext;
        move_uploaded_file( $path_tmp, '../assets/uploads/'.$final_name );

	
		$statement = $pdo->prepare("INSERT INTO tbl_service (title,content,photo) VALUES (?,?,?)");
		$statement->execute(array($_POST['title'],$_POST['content'],$final_name));
			
		$success_message = 'Thêm dịch vụ thành công!';

		unset($_POST['title']);
		unset($_POST['content']);
	}
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>THÊM DỊCH VỤ</h1>
	</div>
	<div class="content-header-right">
		<a href="service.php" class="btn btn-primary btn-sm">Xem tất cả</a>
	</div>
</section>


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
							<label for="" class="col-sm-2 control-label">Tiêu đề <span>*</span></label>
							<div class="col-sm-6">
								<input type="text" autocomplete="off" class="form-control" name="title" value="<?php if(isset($_POST['title'])){echo $_POST['title'];} ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Nội dung <span>*</span></label>
							<div class="col-sm-6">
								<textarea class="form-control" name="content" style="height:200px;"><?php if(isset($_POST['content'])){echo $_POST['content'];} ?></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Ảnh <span>*</span></label>
							<div class="col-sm-9" style="padding-top:5px">
								<input type="file" name="photo">(Chỉ chấp nhận định dạng jpg, jpeg, gif hoặc png)
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label"></label>
							<div class="col-sm-6">
								<button type="submit" class="btn btn-success pull-left" name="form1">Thêm</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

</section>

<?php require_once('footer.php'); ?>