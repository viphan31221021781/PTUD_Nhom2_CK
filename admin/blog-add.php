<?php require_once('header.php'); ?>
<?php
if (isset($_POST['form1'])) {
   $valid = 1;
   $error_message = '';
   if (empty($_POST['blog_title'])) {
       $valid = 0;
       $error_message .= "Vui lòng nhập tiêu đề Blog<br>";
   }
   if (empty($_POST['blog_content'])) {
       $valid = 0;
       $error_message .= "Vui lòng nhập nội dung Blog<br>";
   }
   // Kiểm tra nếu có file ảnh
   $path = $_FILES['blog_image']['name'];
   $path_tmp = $_FILES['blog_image']['tmp_name'];
   if ($path != '') {
       $ext = pathinfo($path, PATHINFO_EXTENSION);
       $file_name = basename($path, '.' . $ext);
       // Kiểm tra định dạng ảnh
       $allowed_extensions = ['jpg', 'jpeg', 'png', 'gif'];
       if (!in_array(strtolower($ext), $allowed_extensions)) {
           $valid = 0;
           $error_message .= "Chỉ cho phép tải lên ảnh JPG, JPEG, PNG, GIF.<br>";
       }
       // Kiểm tra kích thước ảnh
       $image_size = $_FILES['blog_image']['size'];
       if ($image_size > 2000000) { // 2MB
           $valid = 0;
           $error_message .= "Ảnh không được lớn hơn 2MB.<br>";
       }
   } else {
       $valid = 0;
       $error_message .= "Bạn phải chọn một ảnh Blog<br>";
   }
   if ($valid == 1) {
       // Lấy ID tự động tăng tiếp theo
       $statement = $pdo->prepare("SHOW TABLE STATUS LIKE 'tbl_blog'");
       $statement->execute();
       $result = $statement->fetchAll();
       foreach ($result as $row) {
           $ai_id = $row[10];
       }
       $final_name = 'blog-' . $ai_id . '.' . $ext;
       move_uploaded_file($path_tmp, '../assets/uploads/' . $final_name);
       // Lưu dữ liệu vào bảng blog
       $statement = $pdo->prepare("INSERT INTO tbl_blog (blog_title, blog_content, blog_author, blog_image) VALUES (?, ?, ?, ?)");
       $statement->execute(array($_POST['blog_title'], $_POST['blog_content'], $_POST['blog_author'], $final_name));
       $success_message = "Blog đã được thêm thành công.";
   }
}
?>


<section class="content-header">
   <div class="content-header-left">
       <h1>Thêm Blog</h1>
   </div>
   <div class="content-header-right">
       <a href="blog.php" class="btn btn-primary btn-sm">Xem tất cả</a>
   </div>
</section>
<section class="content">
   <div class="row">
       <div class="col-md-12">
           <?php if ($error_message): ?>
               <div class="callout callout-danger">
                   <p><?php echo $error_message; ?></p>
               </div>
           <?php endif; ?>
           <?php if ($success_message): ?>
               <div class="callout callout-success">
                   <p><?php echo $success_message; ?></p>
               </div>
           <?php endif; ?>
           <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
               <div class="box box-info">
                   <div class="box-body">
                       <div class="form-group">
                           <label for="" class="col-sm-2 control-label">Tiêu Đề <span>*</span></label>
                           <div class="col-sm-4">
                               <input type="text" class="form-control" name="blog_title">
                           </div>
                       </div>
                       <div class="form-group">
                           <label for="" class="col-sm-2 control-label">Nội Dung <span>*</span></label>
                           <div class="col-sm-8">
                               <textarea class="form-control" name="blog_content" id="editor1" rows="10"></textarea>
                           </div>
                       </div>
                       <div class="form-group">
                           <label for="" class="col-sm-2 control-label">Tác Giả</label>
                           <div class="col-sm-4">
                               <input type="text" class="form-control" name="blog_author">
                           </div>
                       </div>
                       <div class="form-group">
                           <label for="" class="col-sm-2 control-label">Ảnh Blog <span>*</span></label>
                           <div class="col-sm-4">
                               <input type="file" name="blog_image" class="form-control">
                           </div>
                       </div>
                       <div class="form-group">
                           <label for="" class="col-sm-2 control-label"></label>
                           <div class="col-sm-6">
                               <button type="submit" class="btn btn-success pull-left" name="form1">Xác nhận</button>
                           </div>
                       </div>
                   </div>
               </div>
           </form>
       </div>
   </div>
</section>


<?php require_once('footer.php'); ?>


<script src="https://cdn.ckeditor.com/4.25.0/standard/ckeditor.js"></script>
<script>
   CKEDITOR.replace('editor1');
</script>
