<?php
ob_start();
session_start();
include("inc/config.php");
include("inc/functions.php");
include("inc/CSRF_Protect.php");
$csrf = new CSRF_Protect();
$error_message = '';
$success_message = '';
$error_message1 = '';
$success_message1 = '';

// Kiểm tra xem người dùng đã đăng nhập hay chưa
if(!isset($_SESSION['user'])) {
	header('location: login.php');
	exit;
}
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Bảng Quản Trị</title>

	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/ionicons.min.css">
	<link rel="stylesheet" href="css/datepicker3.css">
	<link rel="stylesheet" href="css/all.css">
	<link rel="stylesheet" href="css/select2.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.css">
	<link rel="stylesheet" href="css/jquery.fancybox.css">
	<link rel="stylesheet" href="css/AdminLTE.min.css">
	<link rel="stylesheet" href="css/_all-skins.min.css">
	<link rel="stylesheet" href="css/on-off-switch.css"/>
	<link rel="stylesheet" href="css/summernote.css">
	<link rel="stylesheet" href="style.css">
	<style>
		/* Table styles */
		table {
			width: 100%;
			border-collapse: collapse;
			margin: 20px 0;
			font-size: 15px;
			background-color: #fff;
			box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1);
		}

		table th, table td {
			border: 1px solid #ddd;
			padding: 12px;
			text-align: left;
			
		}

		table th {
			background-color: #931926;
			color: #fff;
			font-weight: bold;
			margin-right: 20px !important;
		}

		table tr:hover {
			background-color: #f4f5ff;
		}
		.btn.btn-primary.btn-xs {
			background-color: #0039a6;
			margin-bottom: 20px;
			padding:8px;
			border-radius: 8px;
		}
		.btn.btn-primary.btn-xs:hover{
			background-color: #012873;
		}
		.btn.btn-danger.btn-xs {
			background-color: #c70906;
			margin-bottom: 20px;
			padding:8px;
			border-radius: 8px;
		}
		.btn.btn-danger.btn-xs:hover {
			background-color: #910401;
		}

		.btn.btn-primary.btn-sm {
			background-color: #931926;
			margin-bottom: 20px;
			padding:8px;
			border-radius: 8px;
			font-weight: bold;
			margin-left: 20px;
		}
		h1, h1 >i{
			font-size: 48px;
			font-weight: bold;
			
		}
		.sidebar{
			background-color: #000000;
			width: 80px;
			color: #fff;
		}
		.treeview{
			font-size: 18px;
		}
		.navbar.navbar-static-top {
			background-color: #931926; /* Màu nền */}

	</style>

</head>

<body class="hold-transition fixed skin-blue sidebar-mini">

	<div class="wrapper">

		<header class="main-header" style="background-color: #931926 !important">

			<a href="index.php" class="logo">
				<span class="logo-lg">MIJU Store</span>
			</a>

			<nav class="navbar navbar-static-top">
				
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
					<span class="sr-only">Chuyển đổi điều hướng</span>
				</a>

				<span style="float:left;line-height:50px;color:#fff;padding-left:15px;font-size:18px;">Bảng quản trị</span>
     <!-- Thanh điều hướng trên cùng ... Thông tin người dùng ... Đăng nhập/Đăng xuất -->
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<li class="dropdown user user-menu">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<img src="../assets/uploads/<?php echo $_SESSION['user']['photo']; ?>" class="user-image" alt="Ảnh người dùng">
								<span class="hidden-xs"><?php echo $_SESSION['user']['full_name']; ?></span>
							</a>
							<ul class="dropdown-menu">
								<li class="user-footer">
									<div>
										<a href="profile-edit.php" class="btn btn-default btn-flat">Chỉnh sửa hồ sơ</a>
									</div>
									<div>
										<a href="logout.php" class="btn btn-default btn-flat">Đăng xuất</a>
									</div>
								</li>
							</ul>
						</li>
					</ul>
				</div>

			</nav>
		</header>

  		<?php $cur_page = substr($_SERVER["SCRIPT_NAME"],strrpos($_SERVER["SCRIPT_NAME"],"/")+1); ?>
<!-- Thanh bên để Quản lý Hoạt động Cửa hàng -->
  		<aside class="main-sidebar">
    		<section class="sidebar">
      
      			<ul class="sidebar-menu">

			        <li class="treeview <?php if($cur_page == 'index.php') {echo 'active';} ?>">
			          <a href="index.php">
			            <i class="fa fa-dashboard"></i> <span>Bảng điều khiển</span>
			          </a>
			        </li>

					
			        <li class="treeview <?php if( ($cur_page == 'settings.php') ) {echo 'active';} ?>">
			          <a href="settings.php">
			            <i class="fa fa-sliders"></i> <span>Cài đặt website</span>
			          </a>
			        </li>

                    <li class="treeview <?php if( ($cur_page == 'size.php') || ($cur_page == 'size-add.php') || ($cur_page == 'size-edit.php') || ($cur_page == 'color.php') || ($cur_page == 'color-add.php') || ($cur_page == 'color-edit.php') || ($cur_page == 'country.php') || ($cur_page == 'country-add.php') || ($cur_page == 'country-edit.php') || ($cur_page == 'shipping-cost.php') || ($cur_page == 'shipping-cost-edit.php') || ($cur_page == 'top-category.php') || ($cur_page == 'top-category-add.php') || ($cur_page == 'top-category-edit.php') || ($cur_page == 'mid-category.php') || ($cur_page == 'mid-category-add.php') || ($cur_page == 'mid-category-edit.php') || ($cur_page == 'end-category.php') || ($cur_page == 'end-category-add.php') || ($cur_page == 'end-category-edit.php') ) {echo 'active';} ?>">
                        <a href="#">
                            <i class="fa fa-cogs"></i>
                            <span>Cài đặt cửa hàng</span>
                            <span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
							</span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="size.php"><i class="fa fa-circle-o"></i> Kích thước</a></li>
                            <li><a href="color.php"><i class="fa fa-circle-o"></i> Màu sắc</a></li>
                            <li><a href="country.php"><i class="fa fa-circle-o"></i> Tỉnh thành </a></li>
                            <li><a href="shipping-cost.php"><i class="fa fa-circle-o"></i> Chi phí vận chuyển</a></li>
                            <li><a href="top-category.php"><i class="fa fa-circle-o"></i> Danh mục cấp cao nhất</a></li>
                            <li><a href="mid-category.php"><i class="fa fa-circle-o"></i> Danh mục cấp trung</a></li>
                            <li><a href="end-category.php"><i class="fa fa-circle-o"></i> Danh mục cấp dưới</a></li>
                        </ul>
                    </li>


                    <li class="treeview <?php if( ($cur_page == 'product.php') || ($cur_page == 'product-add.php') || ($cur_page == 'product-edit.php') ) {echo 'active';} ?>">
                        <a href="product.php">
                            <i class="fa fa-shopping-bag"></i> <span>Quản lý sản phẩm</span>
                        </a>
                    </li>


                    <li class="treeview <?php if( ($cur_page == 'order.php') ) {echo 'active';} ?>">
                        <a href="order.php">
                            <i class="fa fa-sticky-note"></i> <span>Quản lý đơn hàng</span>
                        </a>
                    </li>


                     <li class="treeview <?php if( ($cur_page == 'slider.php') ) {echo 'active';} ?>">
			          <a href="slider.php">
			            <i class="fa fa-picture-o"></i> <span>Quản lý thanh trượt</span>
			          </a>
			        </li>
                    <!-- Icons to be displayed on Shop -->
			        <li class="treeview <?php if( ($cur_page == 'service.php') ) {echo 'active';} ?>">
			          <a href="service.php">
			            <i class="fa fa-list-ol"></i> <span>Dịch vụ</span>
			          </a>
			        </li>

			      	<li class="treeview <?php if( ($cur_page == 'faq.php') ) {echo 'active';} ?>">
			          <a href="faq.php">
			            <i class="fa fa-question-circle"></i> <span>FAQ</span>
			          </a>
			        </li>
					<li class="treeview <?php if( ($cur_page == 'blog.php') ) {echo 'active';} ?>">
			          <a href="blog.php">
			            <i class="fa fa-question-circle"></i> <span>Blog</span>
			          </a>
			        </li>

					<li class="treeview <?php if( ($cur_page == 'customer.php') || ($cur_page == 'customer-add.php') || ($cur_page == 'customer-edit.php') ) {echo 'active';} ?>">
			          <a href="customer.php">
			            <i class="fa fa-user-plus"></i> <span>Khách hàng đã đăng ký</span>
			          </a>
			        </li>
					<li class="treeview <?php if( ($cur_page == 'user.php') ) {echo 'active';} ?>">
			          <a href="user.php">
			            <i class="fa fa-question-circle"></i> <span>Quản lý người dùng</span>
			          </a>
			        </li>
				

			        <li class="treeview <?php if( ($cur_page == 'page.php') ) {echo 'active';} ?>">
			          <a href="page.php">
			            <i class="fa fa-tasks"></i> <span>Cài đặt trang</span>
			          </a>
			        </li>

			        <li class="treeview <?php if( ($cur_page == 'social-media.php') ) {echo 'active';} ?>">
			          <a href="social-media.php">
			            <i class="fa fa-globe"></i> <span>Mạng xã hội</span>
			          </a>
			        </li>

			        <li class="treeview <?php if( ($cur_page == 'subscriber.php')||($cur_page == 'subscriber.php') ) {echo 'active';} ?>">
			          <a href="subscriber.php">
			            <i class="fa fa-hand-o-right"></i> <span>Người đăng ký</span>
			          </a>
			        </li>

      			</ul>
    		</section>
  		</aside>

  		<div class="content-wrapper">