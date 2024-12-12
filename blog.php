<?php require_once('header.php'); ?>


<style>
/* Thiết kế cho trang blog.php */
body {
   font-family: Arial, sans-serif;
   background-color: #d8c7c3;
   color: #484241;
   margin: 0;
   padding: 0;
}


.page-banner {
   background-color: #6e1518;
   color: #ffffff;
   padding: 50px 0;
   text-align: center;
}


.page-banner h1 {
   font-size: 36px;
   margin: 0;
}


.page {
   padding: 20px 0;
}


.card {
   border: 1px solid #c18d8f;
   border-radius: 8px;
   background-color: #ffffff;
   transition: transform 0.3s, box-shadow 0.3s;
   text-align: center; /* Căn giữa nội dung trong thẻ card */
}
.card:hover {
   transform: translateY(-10px);
   box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
}


.card-title {
   color: #931926;
   font-weight: bold;
   font-size: 18px;
   margin-top: 15px;
}


.card-text {
   color: #908582;
   font-size: 14px;
   margin-bottom: 15px;
}


.btn-primary {
   background-color: #aa535a;
   border-color: #aa535a;
}


.btn-primary:hover {
   background-color: #931926;
   border-color: #931926;
}


.card-img-top {
   width: 100%;
   height: 200px;
   object-fit: cover;
   border-top-left-radius: 8px;
   border-top-right-radius: 8px;
}
</style>


<?php
// Lấy danh sách bài viết từ cơ sở dữ liệu
$statement = $pdo->prepare("SELECT * FROM tbl_blog ORDER BY blog_id DESC");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
?>


<div class="page-banner">
  <div class="inner text-center">
      <h1>Blog</h1>
  </div>
</div>


<div class="page">
  <div class="container my-5">
      <div class="row justify-content-center">
          <?php foreach ($result as $row): ?>
              <div class="col-md-4 mb-4">
                  <div class="card shadow-sm">
                      <!-- Hiển thị ảnh blog -->
                      <?php if (!empty($row['blog_image'])): ?>
                          <img
                             src="assets/uploads/<?php echo htmlspecialchars($row['blog_image']); ?>?<?php echo time(); ?>"
                              class="card-img-top"
                              alt="<?php echo htmlspecialchars($row['blog_title']); ?>">
                      <?php endif; ?>
                      <div class="card-body">
                          <h5 class="card-title"><?php echo htmlspecialchars($row['blog_title']); ?></h5>
                          <p class="card-text">
                              <?php echo substr(strip_tags($row['blog_content']), 0, 150); ?>...
                          </p>
                          <a href="blog-detail.php?id=<?php echo $row['blog_id']; ?>" class="btn btn-primary btn-sm">Xem chi tiết</a>
                      </div>
                  </div>
              </div>
          <?php endforeach; ?>
      </div>
  </div>
</div>


<?php require_once('footer.php'); ?>
