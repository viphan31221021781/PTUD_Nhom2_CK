<?php require_once('header.php'); ?>

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_page WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
foreach ($result as $row) {
    $about_title = $row['about_title'];
    $about_content = $row['about_content'];
    $about_banner = $row['about_banner'];
}
?>

<div class="page-banner" style="background-color:#6e1518;">
    <div class="inner text-center">
        <h1><?php echo $about_title; ?></h1>
    </div>
</div>

<div class="page">
    <div class="container my-5">
        <div class="row justify-content-center"> <!-- Căn giữa nội dung -->
            <div class="col-md-10"> <!-- Giới hạn chiều rộng nội dung -->
                <div class="content-box p-4 bg-light shadow-sm rounded">
                    <p>
                        <?php echo nl2br($about_content); ?> <!-- Bảo toàn xuống dòng trong nội dung -->
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>
