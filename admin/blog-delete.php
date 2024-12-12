<?php require_once('header.php'); ?>
<?php
if(!isset($_REQUEST['id'])) {
  header('location: logout.php');
  exit;
} else {
  // Kiểm tra ID hợp lệ
  $statement = $pdo->prepare("SELECT * FROM tbl_blog WHERE blog_id=?");
  $statement->execute(array($_REQUEST['id']));
  $total = $statement->rowCount();
  if($total == 0) {
      header('location: logout.php');
      exit;
  }
}
if($total > 0) {
  // Xóa bài viết
  $statement = $pdo->prepare("DELETE FROM tbl_blog WHERE blog_id=?");
  $statement->execute(array($_REQUEST['id']));
}
header('location: blog.php');
?>


