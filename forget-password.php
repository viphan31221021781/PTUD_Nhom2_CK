<?php require_once('header.php'); ?>

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                             
foreach ($result as $row) {
    $banner_forget_password = $row['banner_forget_password'];
}
?>

<?php
if(isset($_POST['form1'])) {

    $valid = 1;
        
    if(empty($_POST['cust_email'])) {
        $valid = 0;
        $error_message .= "Vui lòng nhập địa chỉ email.\\n";
    } else {
        if (filter_var($_POST['cust_email'], FILTER_VALIDATE_EMAIL) === false) {
            $valid = 0;
            $error_message .= "Địa chỉ email không hợp lệ.\\n";
        } else {
            $statement = $pdo->prepare("SELECT * FROM tbl_customer WHERE cust_email=?");
            $statement->execute(array($_POST['cust_email']));
            $total = $statement->rowCount();                        
            if(!$total) {
                $valid = 0;
                $error_message .= "Email này không tồn tại trong hệ thống.\\n";
            }
        }
    }

    if($valid == 1) {

        $statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
        $statement->execute();
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);                           
        foreach ($result as $row) {
            $forget_password_message = $row['forget_password_message'];
        }

        $token = md5(rand());
        $now = time();

        $statement = $pdo->prepare("UPDATE tbl_customer SET cust_token=?,cust_timestamp=? WHERE cust_email=?");
        $statement->execute(array($token, $now, strip_tags($_POST['cust_email'])));
        
        $message = '<p>Bạn đã yêu cầu đặt lại mật khẩu. Nhấn vào liên kết bên dưới để tiếp tục:<br> 
                    <a href="'.BASE_URL.'reset-password.php?email='.$_POST['cust_email'].'&token='.$token.'">Nhấn vào đây</a></p>';
        
        $to      = $_POST['cust_email'];
        $subject = "Đặt lại mật khẩu của bạn";
        $headers = "From: noreply@" . BASE_URL . "\r\n" .
                   "Reply-To: noreply@" . BASE_URL . "\r\n" .
                   "X-Mailer: PHP/" . phpversion() . "\r\n" . 
                   "MIME-Version: 1.0\r\n" . 
                   "Content-Type: text/html; charset=UTF-8\r\n";

        mail($to, $subject, $message, $headers);

        $success_message = $forget_password_message;
    }
}
?>

<div class="page-banner" style="background-color:#c18d8f">
    <div class="inner text-center">
        <h1 style="color: #fff;">Quên mật khẩu</h1>
    </div>
</div>

<div class="page">
    <div class="container my-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="user-content">
                    <?php
                    if($error_message != '') {
                        echo "<div class='alert alert-danger'>$error_message</div>";
                    }
                    if($success_message != '') {
                        echo "<div class='alert alert-success'>$success_message</div>";
                    }
                    ?>
                    <form action="" method="post">
                        <?php $csrf->echoInputField(); ?>
                        <div class="form-group mb-3">
                            <label for="cust_email">Email của bạn *</label>
                            <input type="email" class="form-control" name="cust_email" placeholder="Nhập email của bạn" style="border: 2px solid #931926;">
                        </div>
                        <div class="form-group mb-3">
                            <input type="submit" class="btn" value="Gửi yêu cầu" name="form1" style="background-color: #931926; color: #fff; width: 100%; border: none; padding: 10px;">
                        </div>
                        <div class="text-center mt-3">
                            <a href="login.php" style="color:#931926;">Quay lại đăng nhập</a>
                        </div>
                    </form>
                </div>                
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>

