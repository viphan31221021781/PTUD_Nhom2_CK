<?php require_once('header.php'); ?>

<?php
if(isset($_POST['form1'])) {
	$valid = 1;

    if(empty($_POST['country_name'])) {
        $valid = 0;
        $error_message .= "Tên tỉnh thành không được để trống<br>";
    } else {
    	// Kiểm tra tỉnh thành trùng lặp
    	$statement = $pdo->prepare("SELECT * FROM tbl_country WHERE country_name=?");
    	$statement->execute(array($_POST['country_name']));
    	$total = $statement->rowCount();
    	if($total)
    	{
    		$valid = 0;
        	$error_message .= "Tên tỉnh thành đã tồn tại<br>";
    	}
    }

    if($valid == 1) {

		// Lưu dữ liệu vào bảng chính tbl_country
		$statement = $pdo->prepare("INSERT INTO tbl_country (country_name) VALUES (?)");
		$statement->execute(array($_POST['country_name']));
	
    	$success_message = 'tỉnh thành đã được thêm thành công.';
    }
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Thêm tỉnh thành</h1>
	</div>
	<div class="content-header-right">
		<a href="country.php" class="btn btn-primary btn-sm">Xem Tất Cả</a>
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

			<form class="form-horizontal" action="" method="post">

				<div class="box box-info">
					<div class="box-body">
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Tên tỉnh thành <span>*</span></label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="country_name">
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