<?php require_once('header.php'); ?>


<?php
$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
foreach ($result as $row) {
    $banner_registration = $row['banner_registration'];
}
?>


<?php
if (isset($_POST['form1'])) {


    $valid = 1;


    if(empty($_POST['cust_name'])) {
        $valid = 0;
        $error_message .= "Vui lòng nhập tên khách hàng.<br>";
    }


    if(empty($_POST['cust_email'])) {
        $valid = 0;
        $error_message .= "Vui lòng nhập email khách hàng.<br>";
    } else {
        if (filter_var($_POST['cust_email'], FILTER_VALIDATE_EMAIL) === false) {
            $valid = 0;
            $error_message .= "Email không hợp lệ.<br>";
        } else {
            $statement = $pdo->prepare("SELECT * FROM tbl_customer WHERE cust_email=?");
            $statement->execute(array($_POST['cust_email']));
            $total = $statement->rowCount();                            
            if($total) {
                $valid = 0;
                $error_message .= "Email này đã được đăng ký.<br>";
            }
        }
    }


    if(empty($_POST['cust_phone'])) {
        $valid = 0;
        $error_message .= "Vui lòng nhập số điện thoại.<br>";
    }


    if(empty($_POST['cust_address'])) {
        $valid = 0;
        $error_message .= "Vui lòng nhập địa chỉ.<br>";
    }


    if(empty($_POST['cust_country'])) {
        $valid = 0;
        $error_message .= "Vui lòng chọn Tỉnh/Thành phố.<br>";
    }


    if(empty($_POST['cust_city'])) {
        $valid = 0;
        $error_message .= "Vui lòng nhập Phường/Xã.<br>";
    }


    if(empty($_POST['cust_state'])) {
        $valid = 0;
        $error_message .= "Vui lòng nhập Quận/Huyện.<br>";
    }


    if(empty($_POST['cust_zip'])) {
        $valid = 0;
        $error_message .= "Vui lòng nhập mã bưu điện.<br>";
    }


    if( empty($_POST['cust_password']) || empty($_POST['cust_re_password']) ) {
        $valid = 0;
        $error_message .= "Vui lòng nhập mật khẩu.<br>";
    }


    if( !empty($_POST['cust_password']) && !empty($_POST['cust_re_password']) ) {
        if($_POST['cust_password'] != $_POST['cust_re_password']) {
            $valid = 0;
            $error_message .= "Mật khẩu không khớp.<br>";
        }
    }


    if($valid == 1) {


        $token = md5(time());
        $cust_datetime = date('Y-m-d h:i:s');
        $cust_timestamp = time();


        // saving into the database
        $statement = $pdo->prepare("INSERT INTO tbl_customer (
            cust_name,
            cust_cname,
            cust_email,
            cust_phone,
            cust_country,
            cust_address,
            cust_city,
            cust_state,
            cust_zip,
            cust_password,
            cust_token,
            cust_datetime,
            cust_timestamp,
            cust_status
        ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        
        $statement->execute(array(
            strip_tags($_POST['cust_name']),
            strip_tags($_POST['cust_cname']),
            strip_tags($_POST['cust_email']),
            strip_tags($_POST['cust_phone']),
            strip_tags($_POST['cust_country']),
            strip_tags($_POST['cust_address']),
            strip_tags($_POST['cust_city']),
            strip_tags($_POST['cust_state']),
            strip_tags($_POST['cust_zip']),
            md5($_POST['cust_password']),
            $token,
            $cust_datetime,
            $cust_timestamp,
            0
        ));
        


        // Send email for confirmation of the account
        $to = $_POST['cust_email'];
       
        $subject = "Xác nhận tài khoản";
        $verify_link = BASE_URL.'verify.php?email='.$to.'&token='.$token;
        $message = '
Vui lòng nhấp vào liên kết bên dưới để xác nhận tài khoản của bạn:<br><br>


<a href="'.$verify_link.'">'.$verify_link.'</a>';




        $headers = "From: noreply@" . BASE_URL . "\r\n" .
                   "Reply-To: noreply@" . BASE_URL . "\r\n" .
                   "X-Mailer: PHP/" . phpversion() . "\r\n" .
                   "MIME-Version: 1.0\r\n" .
                   "Content-Type: text/html; charset=ISO-8859-1\r\n";
       
        // Sending Email
        // mail($to, $subject, $message, $headers);




        unset($_POST['cust_name']);
        unset($_POST['cust_cname']);
        unset($_POST['cust_email']);
        unset($_POST['cust_phone']);
        unset($_POST['cust_address']);
        unset($_POST['cust_city']);
        unset($_POST['cust_state']);
        unset($_POST['cust_zip']);


        $success_message = "Đăng ký thành công. Vui lòng kiểm tra email để xác nhận tài khoản.";
    }
}
?>


<div class="page-banner" style="background-color: #6e1518">
    <div class="inner">
        <h1>Đăng ký tài khoản</h1>
    </div>
</div>


<div class="page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="user-content" style="padding: 20px; background: #fdfdfd; border: 1px solid #ddd; border-radius: 10px;">
                    <form action="" method="post">
                        <?php $csrf->echoInputField(); ?>
                        <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                            <?php
                            if($error_message != '') {
                                echo "<div class='error' style='padding: 10px;background:#f1f1f1;margin-bottom:20px;'>".$error_message."</div>";
                            }
                            if($success_message != '') {
                                echo "<div class='success' style='padding: 10px;background:#f1f1f1;margin-bottom:20px;'>".$success_message."</div>";
                            }
                            ?>


                            <div class="col-md-6 form-group">
                                <label for="">Tên khách hàng *</label>
                                <input type="text" class="form-control" name="cust_name" value="<?php if(isset($_POST['cust_name'])){echo $_POST['cust_name'];} ?>" style="border: 2px solid #931926;">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="">Tên công ty</label>
                                <input type="text" class="form-control" name="cust_cname" value="<?php if(isset($_POST['cust_cname'])){echo $_POST['cust_cname'];} ?>" style="border: 2px solid #931926;">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="">Email *</label>
                                <input type="email" class="form-control" name="cust_email" value="<?php if(isset($_POST['cust_email'])){echo $_POST['cust_email'];} ?>" style="border: 2px solid #931926;">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="">Số điện thoại *</label>
                                <input type="text" class="form-control" name="cust_phone" value="<?php if(isset($_POST['cust_phone'])){echo $_POST['cust_phone'];} ?>" style="border: 2px solid #931926;">
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="">Địa chỉ *</label>
                                <textarea name="cust_address" class="form-control" cols="30" rows="10" style="height:70px;border: 2px solid #931926;"><?php if(isset($_POST['cust_address'])){echo $_POST['cust_address'];} ?></textarea>
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="">Tỉnh/thành phố *</label>
                                <select name="cust_country" class="form-control select2" style="border: 2px solid #931926;">
                                    <option value="">Chọn tỉnh/thành phố</option>
                                <?php
                                $statement = $pdo->prepare("SELECT * FROM tbl_country ORDER BY country_name ASC");
                                $statement->execute();
                                $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                foreach ($result as $row) {
                                ?>
                                    <option value="<?php echo $row['country_id']; ?>" <?php if(isset($_POST['cust_country']) && $_POST['cust_country'] == $row['country_id']){echo 'selected';} ?>><?php echo $row['country_name']; ?></option>
                                <?php
                                }
                                ?>    
                                </select>                                
                            </div>
                           
                            <div class="col-md-6 form-group">
                                <label for="">Phường/Xã *</label>
                                <input type="text" class="form-control" name="cust_city" value="<?php if(isset($_POST['cust_city'])){echo $_POST['cust_city'];} ?>" style="border: 2px solid #931926;">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="">Quận/Huyện *</label>
                                <input type="text" class="form-control" name="cust_state" value="<?php if(isset($_POST['cust_state'])){echo $_POST['cust_state'];} ?>" style="border: 2px solid #931926;">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="">Mã bưu điện *</label>
                                <input type="text" class="form-control" name="cust_zip" value="<?php if(isset($_POST['cust_zip'])){echo $_POST['cust_zip'];} ?>" style="border: 2px solid #931926;">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="">Mật khẩu *</label>
                                <input type="password" class="form-control" name="cust_password" style="border: 2px solid #931926;">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="">Xác nhận mật khẩu *</label>
                                <input type="password" class="form-control" name="cust_re_password" style="border: 2px solid #931926;">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for=""></label>
                                <input type="submit" class="btn btn-danger" value="Đăng ký" name="form1" style="background-color: #931926; border: none;">
                            </div>
                        </div>
                    </form>
                </div>                
            </div>
        </div>
    </div>
</div>


<?php require_once('footer.php'); ?>



