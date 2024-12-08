<?php require_once('header.php'); ?>

<?php
// Kiểm tra xem khách hàng đã đăng nhập hay chưa
if(!isset($_SESSION['customer'])) {
    header('location: '.BASE_URL.'logout.php');
    exit;
} else {
    // Nếu khách hàng đã đăng nhập nhưng tài khoản bị admin vô hiệu hóa, buộc phải đăng xuất
    $statement = $pdo->prepare("SELECT * FROM tbl_customer WHERE cust_id=? AND cust_status=?");
    $statement->execute(array($_SESSION['customer']['cust_id'], 0));
    $total = $statement->rowCount();
    if($total) {
        header('location: '.BASE_URL.'logout.php');
        exit;
    }
}
?>

<div class="page">
    <div class="container">
        <div class="row">            
            <div class="col-md-12"> 
                <?php require_once('customer-sidebar.php'); ?>
            </div>
            <div class="col-md-12">
                <div class="user-content">
                    <h3 class="text-center">
                        <?php echo "Trang cá nhân của bạn"; ?>
                    </h3>
                    <p class="text-center">Chào mừng bạn quay lại! Đây là khu vực quản lý thông tin cá nhân và đơn hàng của bạn.</p>
                </div>                
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>
