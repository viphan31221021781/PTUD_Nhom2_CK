<?php require_once('header.php'); ?>
<style>
/* Định dạng cho nút */
.login-button {
    display: inline-block;
    padding: 10px 20px;
    background-color: #931926; /* Màu nền nút */
    color: #fff; /* Màu chữ */
    text-decoration: none;
    font-weight: bold;
    border-radius: 5px; /* Bo góc nút */
    transition: background-color 0.3s ease; /* Hiệu ứng chuyển màu nền khi hover */
}

/* Hiệu ứng hover */
.login-button:hover {
    background-color: #d8c7c3; /* Màu nền thay đổi khi di chuột */
}
</style>

<?php
if ( (!isset($_REQUEST['email'])) || (isset($_REQUEST['token'])) )
{
    $var = 1;

    // check if the token is correct and match with database.
    $statement = $pdo->prepare("SELECT * FROM tbl_customer WHERE cust_email=?");
    $statement->execute(array($_REQUEST['email']));
    $result = $statement->fetchAll(PDO::FETCH_ASSOC);                           
    foreach ($result as $row) {
        if($_REQUEST['token'] != $row['cust_token']) {
            header('location: '.BASE_URL);
            exit;
        }
    }

    // everything is correct. now activate the user removing token value from database.
    if($var != 0)
    {
        $statement = $pdo->prepare("UPDATE tbl_customer SET cust_token=?, cust_status=? WHERE cust_email=?");
        $statement->execute(array('',1,$_GET['email']));

        $success_message = '<p style="color:green; text-align: center;">Email của bạn đã được xác minh thành công. Bây giờ bạn có thể đăng nhập vào trang web của chúng tôi.</p>
        <p style="text-align: center;">
            <a href="'.BASE_URL.'login.php" class="login-button">Đăng nhập</a>
        </p>';
        

    }
}
?>

<div class="page-banner" style="background-color: #c18d8f;">
    <div class="inner">
        <h1 style="color:#fff">Đăng ký thành công</h1>
    </div>
</div>

<div class="page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="user-content">
                    <?php 
                        echo $error_message;
                        echo $success_message;
                    ?>
                </div>                
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>