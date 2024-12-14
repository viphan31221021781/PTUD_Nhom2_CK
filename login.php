<?php require_once('header.php'); ?>
<!-- fetching row banner login -->
<?php
$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
foreach ($result as $row) {
    $banner_login = $row['banner_login'];
}
?>
<!-- form đăng nhập -->
<?php
if(isset($_POST['form1'])) {
       
    if(empty($_POST['cust_email']) || empty($_POST['cust_password'])) {
        $error_message = "Vui lòng điền đầy đủ thông tin.<br>";
    } else {
       
        $cust_email = strip_tags($_POST['cust_email']);
        $cust_password = strip_tags($_POST['cust_password']);


        $statement = $pdo->prepare("SELECT * FROM tbl_customer WHERE cust_email=?");
        $statement->execute(array($cust_email));
        $total = $statement->rowCount();
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
        foreach($result as $row) {
            $cust_status = $row['cust_status'];
            $row_password = $row['cust_password'];
        }


        if($total==0) {
            $error_message .= "Email không tồn tại trong hệ thống.<br>";
        } else {
            // sử dụng MD5 để mã hóa mật khẩu
            if( $row_password != md5($cust_password) ) {
                $error_message .= "Mật khẩu không chính xác.<br>";
            } else {
                if($cust_status == 0) {
                    $error_message .= "Tài khoản của bạn đã bị khóa.<br>";
                } else {
                    $_SESSION['customer'] = $row;
                    header("location: ".BASE_URL."dashboard.php");
                }
            }
           
        }
    }
}
?>
<div class="page-banner" style="background-color:#6e1518; background-size: cover; display: flex; justify-content: center; align-items: center; text-align: center;">
    <!-- <div class="inner" style="background-color: #d8c7c3; padding: 10px 20px; border-radius: 10px; margin: 0 auto;"> -->
        <h1 style="color: #fff; font-size: 48px; font-family: 'Arial', sans-serif; margin: 0;">ĐĂNG NHẬP</h1>
    <!-- </div> -->
</div>


<div class="page" style="display: flex; justify-content: center; align-items: center; height: 100vh; background-color: #f0f0f0; margin: 0; padding: 0;">
    <div style="width: 100%; max-width: 600px;"> <!-- Đặt giới hạn chiều rộng -->
        <div class="user-content" style="border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); padding: 30px; background: #f8f9fa;">
            <form action="" method="post">
                <?php $csrf->echoInputField(); ?>                  
                <div>
                    <?php
                    if($error_message != '') {
                        echo "<div class='error' style='padding: 15px; background:#f8d7da; border-left: 5px solid #dc3545; margin-bottom:20px; font-size: 16px;'>".$error_message."</div>";
                    }
                    if($success_message != '') {
                        echo "<div class='success' style='padding: 15px; background:#d4edda; border-left: 5px solid #28a745; margin-bottom:20px; font-size: 16px;'>".$success_message."</div>";
                    }
                    ?>
                    <div class="form-group">
                        <label for="" style="font-size: 18px; color: #333; font-weight: bold;">Email *</label>
                        <input type="email" class="form-control" name="cust_email" style="border: 2px solid #931926; border-radius: 5px; padding: 15px;">
                    </div>
                    <div class="form-group">
                        <label for="" style="font-size: 18px; color: #333; font-weight: bold;">Mật khẩu *</label>
                        <input type="password" class="form-control" name="cust_password" style="border: 2px solid #931926; border-radius: 5px; padding: 15px;">
                    </div>
                    <div class="form-group text-center">
                        <input type="submit" class="btn btn-success btn-lg" value="Đăng nhập" name="form1" style="background-color: #931926; color: white; border-radius: 50px; padding: 15px 30px; width: 100%; border: none; transition: background-color 0.3s;">
                    </div>
                    <div class="text-center">
                        <a href="forget-password.php" style="color:#dc3545; font-size: 16px;">Quên mật khẩu?</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>


<?php require_once('footer.php'); ?>
