<?php require_once('header.php'); ?>

<section>
	<h1 style="margin-left:30px;"><i class="fa fa-dashboard" style="padding-right:10px"></i>Bảng điều khiển</h1>
</section>

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_top_category");
$statement->execute();
$total_top_category = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_mid_category");
$statement->execute();
$total_mid_category = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_end_category");
$statement->execute();
$total_end_category = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_product");
$statement->execute();
$total_product = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_customer WHERE cust_status='1'");
$statement->execute();
$total_customers = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_subscriber WHERE subs_active='1'");
$statement->execute();
$total_subscriber = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_shipping_cost");
$statement->execute();
$available_shipping = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_payment WHERE payment_status=?");
$statement->execute(array('Completed'));
$total_order_completed = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_payment WHERE shipping_status=?");
$statement->execute(array('Completed'));
$total_shipping_completed = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_payment WHERE payment_status=?");
$statement->execute(array('Pending'));
$total_order_pending = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_payment WHERE payment_status=? AND shipping_status=?");
$statement->execute(array('Completed','Pending'));
$total_order_complete_shipping_pending = $statement->rowCount();
?>
<style>
.common-bg {
    background-color: #a13a3a !important; /* Màu nền bạn muốn, ví dụ: xanh lam */
    color: #fff!important; /* Màu chữ trắng */
	border-radius: 10px;
	
	text-align: center;
}
h3{
	color: #fff;
	font-size: 24px;
}

</style>

<section class="content">
    <div class="row">
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box common-bg">
                <div class="inner">
                    <h3><?php echo $total_product; ?></h3>
                    <p>Sản phẩm</p>
                </div>
                
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box common-bg">
                <div class="inner">
                    <h3><?php echo $total_order_pending; ?></h3>
                    <p>Đơn hàng chờ xử lý</p>
                </div>
                
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box common-bg">
                <div class="inner">
                    <h3><?php echo $total_order_completed; ?></h3>
                    <p>Đơn hàng hoàn thành</p>
                </div>
                
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box common-bg">
                <div class="inner">
                    <h3><?php echo $total_shipping_completed; ?></h3>
                    <p>Vận chuyển thành công</p>
                </div>
                
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box common-bg">
                <div class="inner">
                    <h3><?php echo $total_order_complete_shipping_pending; ?></h3>
                    <p>Vận chuyển chờ xử lý</p>
                </div>
                
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box common-bg">
                <div class="inner">
                    <h3><?php echo $total_customers; ?></h3>
                    <p>Khách hàng hoạt động</p>
                </div>
                
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box common-bg">
                <div class="inner">
                    <h3><?php echo $total_subscriber; ?></h3>
                    <p>Người đăng ký</p>
                </div>
               
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box common-bg">
                <div class="inner">
                    <h3><?php echo $available_shipping; ?></h3>
                    <p>Vận chuyển có sẵn</p>
                </div>
                
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box common-bg">
                <div class="inner">
                    <h3><?php echo $total_top_category; ?></h3>
                    <p>Danh mục cấp cao nhất</p>
                </div>
                
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box common-bg">
                <div class="inner">
                    <h3><?php echo $total_mid_category; ?></h3>
                    <p>Danh mục cấp trung</p>
                </div>
                
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box common-bg">
                <div class="inner">
                    <h3><?php echo $total_end_category; ?></h3>
                    <p>Danh mục cấp dưới</p>
                </div>
                
            </div>
        </div>
    </div>
</section>


<?php require_once('footer.php'); ?>