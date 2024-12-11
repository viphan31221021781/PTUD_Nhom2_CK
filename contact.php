<?php require_once('header.php'); ?>

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_page WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                             
foreach ($result as $row) {
    $contact_title = $row['contact_title'];
    $contact_banner = $row['contact_banner'];
}
$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                             
foreach ($result as $row) {
    $contact_map_iframe = $row['contact_map_iframe'];

    // Thay đổi giá trị trực tiếp theo yêu cầu
    $contact_email = 'miju_support@gmail.com'; // Cập nhật email
    $contact_phone = '02873061976'; // Cập nhật số điện thoại
    $contact_address = '279 Đường Nguyễn Tri Phương. Phường 5. Quận 10. TP. Hồ Chí Minh. Việt Nam'; // Cập nhật địa chỉ
}
?>

<div class="page-banner" style="background-color:#6e1518">
    <div class="inner text-center">
        <h1><?php echo $contact_title; ?></h1>
    </div>
</div>

<div class="page">
    <div class="container my-5">
        <div class="row">            
            <div class="col-md-12">
                <h3 class="text-center mb-4">Biểu mẫu liên hệ</h3>
                <div class="row">
                    <div class="col-md-8">
                        <div class="card p-4 shadow-sm">
                            <?php
                            if(isset($_POST['form_contact'])) {
                                $error_message = '';
                                $success_message = '';
                                $statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
                                $statement->execute();
                                $result = $statement->fetchAll(PDO::FETCH_ASSOC);                           

                                foreach ($result as $row) {
                                    $receive_email = $row['receive_email'];
                                    $receive_email_subject = $row['receive_email_subject'];
                                    $receive_email_thank_you_message = $row['receive_email_thank_you_message'];
                                }

                                $valid = 1;

                                if(empty($_POST['visitor_name'])) {
                                    $valid = 0;
                                    $error_message .= 'Vui lòng nhập tên của bạn.\n';
                                }

                                if(empty($_POST['visitor_phone'])) {
                                    $valid = 0;
                                    $error_message .= 'Vui lòng nhập số điện thoại của bạn.\n';
                                }

                                if(empty($_POST['visitor_email'])) {
                                    $valid = 0;
                                    $error_message .= 'Vui lòng nhập địa chỉ email của bạn.\n';
                                } else {
                                    if(!filter_var($_POST['visitor_email'], FILTER_VALIDATE_EMAIL)) {
                                        $valid = 0;
                                        $error_message .= 'Vui lòng nhập địa chỉ email hợp lệ.\n';
                                    }
                                }

                                if(empty($_POST['visitor_message'])) {
                                    $valid = 0;
                                    $error_message .= 'Vui lòng nhập nội dung tin nhắn.\n';
                                }

                                if($valid == 1) {
                                    $visitor_name = strip_tags($_POST['visitor_name']);
                                    $visitor_email = strip_tags($_POST['visitor_email']);
                                    $visitor_phone = strip_tags($_POST['visitor_phone']);
                                    $visitor_message = strip_tags($_POST['visitor_message']);

                                    $to_admin = $receive_email;
                                    $subject = $receive_email_subject;
                                    $message = '
<html><body>
<table>
<tr><td>Họ và tên</td><td>'.$visitor_name.'</td></tr>
<tr><td>Email</td><td>'.$visitor_email.'</td></tr>
<tr><td>Số điện thoại</td><td>'.$visitor_phone.'</td></tr>
<tr><td>Tin nhắn</td><td>'.nl2br($visitor_message).'</td></tr>
</table>
</body></html>
';
                                    $headers = 'From: ' . $visitor_email . "\r\n" .
                                               'Reply-To: ' . $visitor_email . "\r\n" .
                                               'X-Mailer: PHP/' . phpversion() . "\r\n" . 
                                               "MIME-Version: 1.0\r\n" . 
                                               "Content-Type: text/html; charset=ISO-8859-1\r\n";

                                    mail($to_admin, $subject, $message, $headers); 
                                    $success_message = $receive_email_thank_you_message;
                                }
                            }
                            ?>

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
                                    <label for="name">Họ và tên</label>
                                    <input type="text" class="form-control" name="visitor_name" placeholder="Nhập họ và tên" style="border: 2px solid #931926;">
                                </div>
                                <div class="form-group mb-3">
                                    <label for="email">Địa chỉ email</label>
                                    <input type="email" class="form-control" name="visitor_email" placeholder="Nhập địa chỉ email" style="border: 2px solid #931926;">
                                </div>
                                <div class="form-group mb-3">
                                    <label for="phone">Số điện thoại</label>
                                    <input type="text" class="form-control" name="visitor_phone" placeholder="Nhập số điện thoại" style="border: 2px solid #931926;">
                                </div>
                                <div class="form-group mb-3">
                                    <label for="message">Nội dung</label>
                                    <textarea name="visitor_message" class="form-control" rows="5" placeholder="Nhập nội dung tin nhắn" style="border: 2px solid #931926;"></textarea>
                                </div>
                                <button type="submit" class="btn" style="background-color: #931926; color: #fff; width: 100%;" name="form_contact">Gửi tin nhắn</button>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card p-4 shadow-sm" style="margin-top: 40px;">
                            <h5>Văn phòng của chúng tôi</h5>
                            <p><?php echo $contact_address; ?></p>
                            <p><strong>Điện thoại:</strong> <?php echo $contact_phone; ?></p>
                            <p><strong>Email:</strong> <a href="mailto:<?php echo $contact_email; ?>"><?php echo $contact_email; ?></a></p>
                        </div>
                    </div>
                </div>

                <h3 class="text-center mt-5">Tìm chúng tôi trên bản đồ</h3>
                <div class="embed-responsive embed-responsive-16by9">
                    <?php echo $contact_map_iframe; ?>
                </div>
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>

