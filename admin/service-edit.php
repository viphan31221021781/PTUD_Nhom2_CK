<?php require_once('header.php'); ?>

<?php
if(isset($_POST['form1'])) {
    $valid = 1;
    $error_message = '';

    // Kiểm tra tiêu đề
    if(empty($_POST['title'])) {
        $valid = 0;
        $error_message .= 'Vui lòng nhập tiêu đề Dịch vụ<br>';
    }

    // Kiểm tra nội dung
    if(empty($_POST['content'])) {
        $valid = 0;
        $error_message .= 'Vui lòng nhập nội dung Dịch vụ<br>';
    }

    // Xử lý ảnh
    $path = $_FILES['photo']['name'];
    $path_tmp = $_FILES['photo']['tmp_name'];

    if($path != '') {
        $ext = pathinfo($path, PATHINFO_EXTENSION);
        $file_name = basename($path, '.' . $ext);
        $allowed_extensions = ['jpg', 'jpeg', 'png', 'gif'];
        
        if(!in_array(strtolower($ext), $allowed_extensions)) {
            $valid = 0;
            $error_message .= 'Chỉ cho phép tải lên ảnh JPG, JPEG, PNG, GIF.<br>';
        }

        $image_size = $_FILES['photo']['size'];
        if($image_size > 2000000) { // 2MB
            $valid = 0;
            $error_message .= 'Ảnh không được lớn hơn 2MB.<br>';
        }
    }

    if($valid == 1) {
        // Lấy thông tin hiện tại của dịch vụ
        $statement = $pdo->prepare("SELECT * FROM tbl_service WHERE id=?");
        $statement->execute(array($_REQUEST['id']));
        $result = $statement->fetch(PDO::FETCH_ASSOC);

        // Cập nhật thông tin
        if($path != '') {
            // Xóa ảnh cũ nếu có
            $old_photo_path = '../assets/uploads/'.$result['photo'];
            if(file_exists($old_photo_path)) {
                unlink($old_photo_path); // Xóa ảnh cũ
            }
            
            // Lưu ảnh mới
            $final_name = 'service-' . $_REQUEST['id'] . '.' . $ext;
            if(move_uploaded_file($path_tmp, '../assets/uploads/'.$final_name)) {
                // Cập nhật cả ảnh và thông tin
                $statement = $pdo->prepare("UPDATE tbl_service SET title=?, content=?, photo=? WHERE id=?");
                $statement->execute(array($_POST['title'], $_POST['content'], $final_name, $_REQUEST['id']));
                $success_message = 'Cập nhật dịch vụ thành công!';
            } else {
                $valid = 0;
                $error_message .= 'Lỗi khi tải ảnh lên.<br>';
            }
        } else {
            // Chỉ cập nhật thông tin (không có ảnh mới)
            $statement = $pdo->prepare("UPDATE tbl_service SET title=?, content=? WHERE id=?");
            $statement->execute(array($_POST['title'], $_POST['content'], $_REQUEST['id']));
            $success_message = 'Cập nhật dịch vụ thành công!';
        }
    }
}

// Kiểm tra ID
if(!isset($_REQUEST['id'])) {
    header('location: logout.php');
    exit;
} else {
    $statement = $pdo->prepare("SELECT * FROM tbl_service WHERE id=?");
    $statement->execute(array($_REQUEST['id']));
    $total = $statement->rowCount();
    if($total == 0) {
        header('location: logout.php');
        exit;
    }
    $result = $statement->fetch(PDO::FETCH_ASSOC);
}
?>

<section class="content-header">
    <div class="content-header-left">
        <h1>CẬP NHẬT DỊCH VỤ</h1>
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
                    <p><?php echo $error_message; ?></p>
                </div>
            <?php endif; ?>
            <?php if($success_message): ?>
                <div class="callout callout-success">
                    <p><?php echo $success_message; ?></p>
                </div>
            <?php endif; ?>

            <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
                <input type="hidden" name="current_photo" value="<?php echo $result['photo']; ?>">
                <div class="box box-info">
                    <div class="box-body">
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Tiêu đề <span>*</span></label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" name="title" value="<?php echo $result['title']; ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Nội dung <span>*</span></label>
                            <div class="col-sm-6">
                                <textarea class="form-control" name="content" rows="10"><?php echo $result['content']; ?></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Ảnh hiện tại</label>
                            <div class="col-sm-6">
                                <img src="../assets/uploads/<?php echo $result['photo']; ?>" alt="Service Photo" style="width:180px;">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Ảnh mới</label>
                            <div class="col-sm-6">
                                <input type="file" name="photo">
                                <span>(Chỉ chấp nhận định dạng JPG, JPEG, PNG, GIF)</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label"></label>
                            <div class="col-sm-6">
                                <button type="submit" class="btn btn-success" name="form1">Cập nhật</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>

<?php require_once('footer.php'); ?>
