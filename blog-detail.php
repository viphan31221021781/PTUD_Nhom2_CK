<?php
// Bắt đầu output buffering để tránh lỗi header
ob_start();
require_once('header.php');


if (!isset($_GET['id']) || empty($_GET['id'])) {
   header('location: blog.php');
   exit;
}
?>
<?php require_once('header.php'); ?>

<?php
if (!isset($_GET['id'])) {
   header('location: blog.php');
   exit;
}

// Lấy thông tin bài viết từ cơ sở dữ liệu
$statement = $pdo->prepare("SELECT * FROM tbl_blog WHERE blog_id=?");
$statement->execute(array($_GET['id']));
$result = $statement->fetch(PDO::FETCH_ASSOC);

if (!$result) {
   header('location: blog.php');
   exit;
}

$blog_title = $result['blog_title'];
$blog_content = $result['blog_content'];
?>
<style>
    .blog-content span {
    max-width: 100%;
    overflow-x: hidden; /* Ẩn bất kỳ nội dung tràn ngang nào */
    box-sizing: border-box; /* Đảm bảo padding không làm tăng kích thước tổng */
    margin: 0 auto; /* Căn giữa container nếu cần */
    }
</style>

<div style="width:100%">
<!-- Page Banner với màu đỏ -->
<div class="page-banner" style="background-color:#6e1518; text-align: center; padding: 50px 0;">
   <div class="inner">
       <h1 style="color: white;"><?php echo $blog_title; ?></h1>
   </div>
</div>

<!-- Nội dung bài viết -->
<div class="page">
   <div class="container my-5">
       <div class="row justify-content-center">
           <div class="col-md-10">
               <div class="content-box bg-light shadow-sm rounded">
                   <!-- Căn giữa nội dung bài viết -->
                   <div class="blog-content" style="padding-left: 20px; padding-right: 20px;">
                       <!-- Hiển thị nội dung bài viết với ảnh responsive -->
                       <p><?php echo nl2br($blog_content); ?></p>
                   </div>
               </div>
           </div>
       </div>
   </div>
</div>
</div>

<?php require_once('footer.php'); ?>


