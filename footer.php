<?php
$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $row)
{
    $footer_about = $row['footer_about'];
    $contact_email = $row['contact_email'];
    $contact_phone = $row['contact_phone'];
    $contact_address = $row['contact_address'];
    $footer_copyright = $row['footer_copyright'];
    $total_recent_post_footer = $row['total_recent_post_footer'];
    $total_popular_post_footer = $row['total_popular_post_footer'];
    $newsletter_on_off = $row['newsletter_on_off'];
    $before_body = $row['before_body'];
}
?>
<style>
    .home-newsletter {
    background-color: #f5f5f5; /* Thay đổi màu nền quanh phần đăng ký */
    padding: 30px 0; /* Thêm khoảng cách trên dưới */
}
    /* Khung bên trong */
    .home-newsletter .container {
    background-color: #c18d8f;
    border-radius: 10px;
    padding: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}
















.home-newsletter .single {
    background-color: #ffffff; /* Màu nền trắng cho phần form */
    padding: 20px; /* Khoảng cách trong form */
    border-radius: 8px; /* Bo góc */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Tạo bóng cho phần form */
}








/* Tiêu đề */
.home-newsletter h2 {
    color: #000000 !important;
    font-size: 24px;
    font-weight: bold;
    margin-bottom: 20px;
}








.home-newsletter .input-group input {
    border-radius: 4px; /* Bo góc cho ô nhập liệu */
}








.home-newsletter .btn-theme {
    background-color: #931926; /* Màu nền cho nút đăng ký */
    border: none;
    color: #fff; /* Màu chữ nút */
}
/* Nút Subscribe */
.home-newsletter .input-group-btn button {
    background-color: #931926 !important;
    color: #ffffff;
    border: none;
    border-radius: 5px;
    padding: 10px 20px;
}








.home-newsletter .btn-theme:hover {
    background-color: #e67e22; /* Màu nền khi hover nút đăng ký */
}
/* Nút Subscribe hover */
.home-newsletter .input-group-btn button:hover {
    background-color: #d8c7c3 !important; /* Màu sáng hơn khi hover */
    color: #000;
}








</style>
<?php if($newsletter_on_off == 1): ?>
<section class="home-newsletter">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="single">
                    <?php
            if(isset($_POST['form_subscribe']))
            {
                if(empty($_POST['email_subscribe']))
                {
                    $valid = 0;
                    $error_message1 .= "Email không được để trống";
                }
                else
                {
                    if (filter_var($_POST['email_subscribe'], FILTER_VALIDATE_EMAIL) === false)
                    {
                        $valid = 0;
                        $error_message1 .= "Email không hợp lệ";
                    }
                    else
                    {
                        $statement = $pdo->prepare("SELECT * FROM tbl_subscriber WHERE subs_email=?");
                        $statement->execute(array($_POST['email_subscribe']));
                        $total = $statement->rowCount();                            
                        if($total)
                        {
                            $valid = 0;
                            $error_message1 .= "Email này đã được sử dụng, vui lòng nhập email mới";
                        }
                        else
                        {
                            // Sending email to the requested subscriber for email confirmation
                            // Getting activation key to send via email. also it will be saved to database until user click on the activation link.
                            $key = md5(uniqid(rand(), true));








                            // Getting current date
                            $current_date = date('Y-m-d');








                            // Getting current date and time
                            $current_date_time = date('Y-m-d H:i:s');








                            // Inserting data into the database
                            $statement = $pdo->prepare("INSERT INTO tbl_subscriber (subs_email,subs_date,subs_date_time,subs_hash,subs_active) VALUES (?,?,?,?,?)");
                            $statement->execute(array($_POST['email_subscribe'],$current_date,$current_date_time,$key,0));








                            // Sending Confirmation Email
                            $to = $_POST['email_subscribe'];
                            $subject = 'Xác nhận đăng ký email';
                           
                            // Getting the url of the verification link
                            $verification_url = BASE_URL.'verify.php?email='.$to.'&key='.$key;








                            $message = '
Chân thành cảm ơn bạn đã quan tâm và đăng ký nhận thông báo từ chúng tôi!<br><br>
Vui lòng nhấp vào liên kết này để xác nhận đăng ký của bạn:
                    '.$verification_url.'<br><br>
Liên kết này chỉ có hiệu lực trong 24 giờ.
                    ';








                            $headers = 'From: ' . $contact_email . "\r\n" .
                                   'Reply-To: ' . $contact_email . "\r\n" .
                                   'X-Mailer: PHP/' . phpversion() . "\r\n" .
                                   "MIME-Version: 1.0\r\n" .
                                   "Content-Type: text/html; charset=ISO-8859-1\r\n";








                            // Sending the email
                            mail($to, $subject, $message, $headers);








                            $success_message1 = "Bạn đã đăng ký thành công";
                        }
                    }
                }
            }
            if($error_message1 != '') {
                echo "<script>alert('".$error_message1."')</script>";
            }
            if($success_message1 != '') {
                echo "<script>alert('".$success_message1."')</script>";
            }
            ?>
                <form action="" method="post">
                    <?php $csrf->echoInputField(); ?>
                    <h2>Đăng ký để nhận thông báo sớm nhất</h2>
                    <div class="input-group">
                        <input type="email" class="form-control" placeholder="<?php echo "Nhập Email của bạn vào"; ?>" name="email_subscribe">
                        <span class="input-group-btn">
                        <button class="btn btn-theme" type="submit" name="form_subscribe"><?php echo "Đăng ký"; ?></button>
                        </span>
                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
</section>
<?php endif; ?>








<!-- <div class="footer-bottom">
    <div class="container">
        <div class="row">
            <div class="col-md-12 copyright">
                <?php echo $footer_copyright; ?>
            </div>
        </div>
    </div>
</div> -->








<!-- <a href="#" class="scrollup">
    <i class="fa fa-angle-up"></i>
</a> -->








<?php
$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
foreach ($result as $row) {
    $stripe_public_key = $row['stripe_public_key'];
    $stripe_secret_key = $row['stripe_secret_key'];
}
?>








<script src="assets/js/jquery-2.2.4.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="https://js.stripe.com/v2/"></script>
<script src="assets/js/megamenu.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/owl.animate.js"></script>
<script src="assets/js/jquery.bxslider.min.js"></script>
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<script src="assets/js/rating.js"></script>
<script src="assets/js/jquery.touchSwipe.min.js"></script>
<script src="assets/js/bootstrap-touch-slider.js"></script>
<script src="assets/js/select2.full.min.js"></script>
<script src="assets/js/custom.js"></script>
<script>
    function confirmDelete()
    {
        return confirm("Bạn có chắc chắn muốn xóa dữ liệu này không?");
    }
    $(document).ready(function () {
        advFieldsStatus = $('#advFieldsStatus').val();








        $('#paypal_form').hide();
        $('#stripe_form').hide();
        $('#bank_form').hide();








        $('#advFieldsStatus').on('change',function() {
            advFieldsStatus = $('#advFieldsStatus').val();
            if ( advFieldsStatus == '' ) {
                $('#paypal_form').hide();
                $('#stripe_form').hide();
                $('#bank_form').hide();
            } else if ( advFieldsStatus == 'PayPal' ) {
                $('#paypal_form').show();
                $('#stripe_form').hide();
                $('#bank_form').hide();
            } else if ( advFieldsStatus == 'Stripe' ) {
                $('#paypal_form').hide();
                $('#stripe_form').show();
                $('#bank_form').hide();
            } else if ( advFieldsStatus == 'Bank Deposit' ) {
                $('#paypal_form').hide();
                $('#stripe_form').hide();
                $('#bank_form').show();
            }
        });
    });








    $(document).on('submit', '#stripe_form', function () {
        // createToken returns immediately - the supplied callback submits the form if there are no errors
        $('#submit-button').prop("disabled", true);
        $("#msg-container").hide();
        Stripe.card.createToken({
            number: $('.card-number').val(),
            cvc: $('.card-cvc').val(),
            exp_month: $('.card-expiry-month').val(),
            exp_year: $('.card-expiry-year').val()
            // name: $('.card-holder-name').val()
        }, stripeResponseHandler);
        return false;
    });
    Stripe.setPublishableKey('<?php echo $stripe_public_key; ?>');
    function stripeResponseHandler(status, response) {
        if (response.error) {
            $('#submit-button').prop("disabled", false);
            $("#msg-container").html('<div style="color: red;border: 1px solid;margin: 10px 0px;padding: 5px;"><strong>Error:</strong> ' + response.error.message + '</div>');
            $("#msg-container").show();
        } else {
            var form$ = $("#stripe_form");
            var token = response['id'];
            form$.append("<input type='hidden' name='stripeToken' value='" + token + "' />");
            form$.get(0).submit();
        }
    }
</script>
<?php echo $before_body; ?>
</body>
</html>









