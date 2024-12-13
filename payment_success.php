<?php require_once('header.php'); ?>

<div class="page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <!-- Đã thay đổi cấu trúc để hiển thị đẹp hơn và dễ đọc -->
                <div class="message-box text-center" style="margin-top: 50px; padding: 30px; background-color: #f8f9fa; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
                    <h3 style="color: #333;"><?php echo "Chúc mừng bạn đã thanh toán thành công"; ?></h3>
                    <p>
                        <!-- Nút "Quay lại Dashboard" đã được thiết kế lại với màu sắc và hiệu ứng hover -->
                        <a href="index.php" class="btn btn-primary" style="margin-top: 20px; padding: 12px 25px; font-size: 16px; border-radius: 25px; transition: all 0.3s ease; text-decoration: none;">
                            <?php echo "Quay lại trang chủ"; ?>
                        </a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>
