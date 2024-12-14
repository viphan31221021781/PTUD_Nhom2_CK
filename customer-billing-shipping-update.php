<?php require_once('header.php'); ?>

<?php
// Kiểm tra xem khách hàng đã đăng nhập hay chưa
if(!isset($_SESSION['customer'])) {
    header('location: '.BASE_URL.'logout.php');
    exit;
} else {
    // Nếu khách hàng đã đăng nhập, nhưng admin đã làm khách hàng không hoạt động, buộc phải đăng xuất
    $statement = $pdo->prepare("SELECT * FROM tbl_customer WHERE cust_id=? AND cust_status=?");
    $statement->execute(array($_SESSION['customer']['cust_id'], 0));
    $total = $statement->rowCount();
    if($total) {
        header('location: '.BASE_URL.'logout.php');
        exit;
    }
}
?>

<?php
if (isset($_POST['form1'])) {
    // Cập nhật thông tin khách hàng vào cơ sở dữ liệu
    $statement = $pdo->prepare("UPDATE tbl_customer SET 
                            cust_name=?, 
                            cust_cname=?, 
                            cust_phone=?, 
                            cust_email=?, 
                            cust_country=?, 
                            cust_address=?, 
                            cust_city=?, 
                            cust_state=?, 
                            cust_zip=?
                            WHERE cust_id=?");
    $statement->execute(array(
                            strip_tags($_POST['cust_name']),
                            strip_tags($_POST['cust_cname']),
                            strip_tags($_POST['cust_phone']),
                            strip_tags($_POST['cust_email']),
                            strip_tags($_POST['cust_country']),
                            strip_tags($_POST['cust_address']),
                            strip_tags($_POST['cust_city']),
                            strip_tags($_POST['cust_state']),
                            strip_tags($_POST['cust_zip']),
                            $_SESSION['customer']['cust_id']
                        ));
   
    $success_message = "Cập nhật thông tin thành công.";

    $_SESSION['customer']['cust_name'] = strip_tags($_POST['cust_name']);
    $_SESSION['customer']['cust_cname'] = strip_tags($_POST['cust_cname']);
    $_SESSION['customer']['cust_phone'] = strip_tags($_POST['cust_phone']);
    $_SESSION['customer']['cust_email'] = strip_tags($_POST['cust_email']);
    $_SESSION['customer']['cust_country'] = strip_tags($_POST['cust_country']);
    $_SESSION['customer']['cust_address'] = strip_tags($_POST['cust_address']);
    $_SESSION['customer']['cust_city'] = strip_tags($_POST['cust_city']);
    $_SESSION['customer']['cust_state'] = strip_tags($_POST['cust_state']);
    $_SESSION['customer']['cust_zip'] = strip_tags($_POST['cust_zip']);
}
?>
<div class="page">
    <div class="container">
        <div class="row justify-content-center"> 
        <div class="col-md-12"> 
                <?php require_once('customer-sidebar.php'); ?>
            </div>
            <div class="col-md-8"> 
                <div class="user-content" style="background: #f4f4f4; padding: 30px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
                    <?php 
                    if($error_message != '') {
                        echo "<div class='error' style='padding: 15px; background:#f8d7da; border-left: 5px solid #dc3545; margin-bottom:20px; font-size: 16px;'>".$error_message."</div>";
                    }
                    if($success_message != '') {
                        echo "<div class='success' style='padding: 15px; background:#d4edda; border-left: 5px solid #28a745; margin-bottom:20px; font-size: 16px;'>".$success_message."</div>";
                    }
                    ?>
                    <form action="" method="post">
                        <?php $csrf->echoInputField(); ?>
                        <div class="row">
                            <div class="col-md-12">
                                <h3>Thông tin hóa đơn</h3>
                                <div class="form-group">
                                    <label for="cust_name">Tên người nhận *</label>
                                    <input type="text" class="form-control" name="cust_name" value="<?php echo $_SESSION['customer']['cust_name']; ?>" required; style="border: 2px solid #931926;">
                                </div>
                                <div class="form-group">
                                    <label for="cust_cname">Công ty </label>
                                    <input type="text" class="form-control" name="cust_cname" value="<?php echo $_SESSION['customer']['cust_cname']; ?>" style="border: 2px solid #931926;">
                                </div>
                                <div class="form-group">
                                    <label for="cust_phone">Số điện thoại *</label>
                                    <input type="text" class="form-control" name="cust_phone" value="<?php echo $_SESSION['customer']['cust_phone']; ?>" required; style="border: 2px solid #931926;">
                                </div>
                                <div class="form-group">
                                    <label for="">Email *</label>
                                    <input type="text" class="form-control" name="cust_email" value="<?php echo $_SESSION['customer']['cust_email']; ?>"; style="border: 2px solid #931926;">
                                </div>
                                <div class="form-group">
                                    <label for="cust_country">Tỉnh/Thành phố *</label>
                                    <select name="cust_country" class="form-control" required; style="border: 2px solid #931926;">
                                        <?php
                                        $statement = $pdo->prepare("SELECT * FROM tbl_country ORDER BY country_name ASC");
                                        $statement->execute();
                                        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                        foreach ($result as $row) {
                                            ?>
                                            <option value="<?php echo $row['country_id']; ?>" <?php if($row['country_id'] == $_SESSION['customer']['cust_country']) {echo 'selected';} ?>><?php echo $row['country_name']; ?></option>
                                            <?php
                                        }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="cust_city">Quận/Huyện *</label>
                                    <input type="text" class="form-control" name="cust_state" value="<?php echo $_SESSION['customer']['cust_state']; ?>" required; style="border: 2px solid #931926;">
                                    
                                </div>
                                <div class="form-group">
                                    <label for="cust_state">Phường/Xã *</label>
                                    <input type="text" class="form-control" name="cust_city" value="<?php echo $_SESSION['customer']['cust_city']; ?>" required; style="border: 2px solid #931926;">
                                </div>
                                <div class="form-group">
                                    <label for="cust_address">Địa chỉ *</label>
                                    <input type="text" class="form-control" name="cust_address" value="<?php echo $_SESSION['customer']['cust_address']; ?>" required; style="border: 2px solid #931926;">
                                </div>
                                <div class="form-group">
                                    <label for="cust_zip">Mã bưu điện *</label>
                                    <input type="text" class="form-control" name="cust_zip" value="<?php echo $_SESSION['customer']['cust_zip']; ?>" required; style="border: 2px solid #931926;">
                                </div>
                            </div>
                        </div>
                        <input type="submit" class="btn btn-primary" value="Cập nhật" name="form1" style="background-color:#931926">
                    </form>
                </div> 
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>
