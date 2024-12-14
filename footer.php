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

.footer-static-block.footer-certificate {
    display: block; /* Đảm bảo nội dung hiển thị dạng khối */
    text-align: left; /* Canh trái nội dung */
    padding-left: 30px; /* Cách lề trái 30px */
}

.footer-static-block.footer-certificate div {
    margin-bottom: 10px; /* Tạo khoảng cách giữa các đoạn văn */
    display: block; /* Đảm bảo nội dung không nằm ngang */
}

.footer-static-block.footer-certificate img {
    max-width: 100%; /* Hình ảnh tự động điều chỉnh kích thước */
    height: auto; /* Duy trì tỉ lệ hình ảnh */
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


/* Đối với chế độ mặc định (mobile-first) */
.flex {
   display: flex; /* Thiết lập flexbox */
}


.flex-col {
   flex-direction: column; /* Đặt các phần tử trong container theo chiều dọc */
}


/* Đối với chế độ màn hình rộng hơn (đối với kích thước màn hình lớn hơn 'md') */
@media (min-width: 768px) {
   .md\:flex-row {
       flex-direction: row; /* Đặt các phần tử trong container theo chiều ngang khi màn hình lớn hơn hoặc bằng 768px */
   }
}


/* Căn chỉnh các phần tử theo chiều ngang với khoảng cách đều */
.justify-between {
   justify-content: space-between; /* Tạo khoảng cách đều giữa các phần tử trong container */
}


/* Khoảng cách giữa các phần tử */
.gap-6 {
   gap: 3.5rem; /* Khoảng cách giữa các phần tử trong container */
}
footer {
   /* display: flex;  */
   justify-content: space-between;
   padding: 20px;
   background-color: #f8f8f8;
   width: 100%;
}
/* Các lớp của footer-static-block */
.footer-static-block {
   font-size: 13px;
   overflow: hidden;
   width: 100%;
}


.footer-static-block div {
   display: flex;
   justify-content: space-between;
}


.footer-static-block ul {
   list-style: none;
   padding: 0;
}


.footer-static-block ul li {
   margin-bottom: 8px;
}


.footer-static-block ul li strong {
   display: block;
   margin-bottom: 16px;
}


.footer-static-block ul:nth-child(2) {
   margin-bottom: 24px;
}




/* Các lớp của footer-menu */
.footer-menu {
   /* Cỡ chữ 13px */
   font-size: 13px;
   /* Thêm các thuộc tính khác nếu cần */
}


/* Các lớp của text-[13px] */
.text-[13px] {
   font-size: 13px; /* Cài đặt kích thước chữ 13px */
}


/* Các lớp của overflow-hidden */
.overflow-hidden {
   overflow: hidden; /* Ẩn phần nội dung vượt ra ngoài container */
}


/* Các lớp của w-full */
.w-full {
   width: 100%; /* Đặt chiều rộng của phần tử chiếm 100% chiều rộng của phần tử cha */
}


/* Lớp undefined có thể bị loại bỏ vì nó không có tác dụng gì trong Tailwind CSS */
.undefined {
   /* Không cần phải khai báo gì nếu không có thuộc tính nào */
}


</style>
<?php if($newsletter_on_off == 1): ?>
<section class="home-newsletter">
   <footer>
       <div class="flex flex-col md:flex-row justify-between gap-6">
       <!-- Logo and Certification Section -->
           <div class="footer-logo-wrapper">
               <div class="footer-static-block footer-logo text-[13px] overflow-hidden w-full mb-6 md:mb-12">
               </div>
               <div class="footer-static-block footer-certificate text-[13px] overflow-hidden w-full undefined">
               <div style="flex: 1;">
                   <img src="assets/uploads/logo.png" alt="MUJI Logo" style="width: 200px; height: 200px;">
               </div>
               <div>
                <p style="font-size: 16px; text-align: left;"><b>CÔNG TY TNHH MIJU RETAIL</b></p>
                <p style="font-size: 14px; text-align: left;">ĐKKD SỐ 0123456789 do sở KH & ĐT TP.HCM cấp ngày: 01/01/2024</p>
                <p style="font-size: 14px; text-align: left;">Trụ sở chính: Phòng N1-306, Tầng 3, Đại học Kinh Tế, Nguyễn Văn Linh, Bình Chánh, TP.HCM</p>
                </div>
               <div>
                   <p>
                   <a href="http://online.gov.vn/Home/WebDetails/123273">
                       <img src="https://api.muji.com.vn/media/wysiwyg/home_block/logoSaleNoti.png" alt="Đã thông báo bộ công thương" width="195" height="74" loading="lazy">
                   </a>
                   </p>
               </div>
               </div>
           </div>
           <!-- Footer Menu Section -->
           <div class="footer-static-block footer-menu text-[13px] overflow-hidden w-full undefined" style="justify-content: space-between;
   padding: 20px; ">
               <div style="font-size: 18px;">
               <ul>
                   <li style="color: #931926"><strong>Về Miju</strong></li>
                   <li><a title="Miju là gì?" href="/ptud_nhom2_ck/about.php">Miju là gì?</a></li>
                   <li><a href=#>Thông báo</a></li>
                   <li><a title="Câu hỏi thường gặp" href="/ptud_nhom2_ck/faq.php">Câu hỏi thường gặp</a></li>
               </ul>
               <ul style="margin-bottom: 24px;">
                   <li style="color: #931926"><strong>Cửa hàng Bán lẻ</strong></li>
                   <li><a title="Chính sách Đổi, Trả, Hoàn tiền" href=#>Chính sách Đổi, Trả, Hoàn tiền</a></li>
                   <li><a title="Danh sách cửa hàng" href=#>Danh sách cửa hàng</a></li>
               </ul>
               <ul>
                   <li style="color: #931926"><strong>Cửa hàng Trực tuyến</strong></li>
                   <li><a title="Chính sách Bán hàng" href=#>Chính sách Bán hàng</a></li>
                   <li><a title="Chính sách Giao hàng" href=#>Chính sách Giao hàng</a></li>
                   <li><a title="Chính sách Trả hàng Hoàn tiền" href=#>Chính sách Trả hàng, Hoàn tiền</a></li>
                   <li><a title="Chính sách Đổi hàng" href=#>Chính sách Đổi hàng</a></li>
                   <li><a title="Chính sách Bảo hành" href=#>Chính sách Bảo hành</a></li>
                   <li><a title="Chính sách Bảo mật" href=#>Chính sách Bảo mật</a></li>
               </ul>
               </div>
           </div>
           <!-- Subscribe Section -->
           <div class="footer-subscribe-wrapper" style="padding-top: 20px; width: 40%; padding-right: 30px; ">
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
                           $subject = 'Subscriber Email Confirmation';
                         
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
                        //    mail($to, $subject, $message, $headers);




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
                   <p style="color: #931926; font-size: 18px"><strong>Đăng ký nhận tin từ Miju</strong></p>
                   <div class="input-group">
                       <input type="email" class="form-control" placeholder="<?php echo "Nhập Email của bạn vào"; ?>" name="email_subscribe">
                       <span class="input-group-btn">
                       <button class="btn btn-theme" type="submit" name="form_subscribe" style="padding: 7px;"><?php echo "Đăng ký"; ?></button>
                       </span>
                   </div>
               </div>
               </form>
           </div>
       </div>
   </div>
           </div>
       </div>
   </footer>
  <!--<div style="padding:50px">
               <p style="font-size: 13px; text-align: centercenter;"><em>Bản quyền thuộc © Miju Co., Ltd.</em></p>
           </div>-->
</section>
<?php endif; ?>








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



