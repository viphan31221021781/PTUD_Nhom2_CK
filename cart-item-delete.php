<?php require_once('header.php'); ?>

<?php

// Kiểm tra tính hợp lệ của sản phẩm
if( !isset($_REQUEST['id']) || !isset($_REQUEST['size']) || !isset($_REQUEST['color']) ) {
    header('location: cart.php');
    exit;
}

// Khởi tạo biến lưu trữ thông tin giỏ hàng
$cart_product_ids = [];
$cart_size_ids = [];
$cart_size_names = [];
$cart_color_ids = [];
$cart_color_names = [];
$cart_quantities = [];
$cart_prices = [];
$cart_product_names = [];
$cart_featured_photos = [];

foreach($_SESSION['cart_p_id'] as $key => $value) {
    $cart_product_ids[] = $value;
}

foreach($_SESSION['cart_size_id'] as $key => $value) {
    $cart_size_ids[] = $value;
}

foreach($_SESSION['cart_size_name'] as $key => $value) {
    $cart_size_names[] = $value;
}

foreach($_SESSION['cart_color_id'] as $key => $value) {
    $cart_color_ids[] = $value;
}

foreach($_SESSION['cart_color_name'] as $key => $value) {
    $cart_color_names[] = $value;
}

foreach($_SESSION['cart_p_qty'] as $key => $value) {
    $cart_quantities[] = $value;
}

foreach($_SESSION['cart_p_current_price'] as $key => $value) {
    $cart_prices[] = $value;
}

foreach($_SESSION['cart_p_name'] as $key => $value) {
    $cart_product_names[] = $value;
}

foreach($_SESSION['cart_p_featured_photo'] as $key => $value) {
    $cart_featured_photos[] = $value;
}

// Xóa tất cả các sản phẩm trong giỏ hàng
unset($_SESSION['cart_p_id']);
unset($_SESSION['cart_size_id']);
unset($_SESSION['cart_size_name']);
unset($_SESSION['cart_color_id']);
unset($_SESSION['cart_color_name']);
unset($_SESSION['cart_p_qty']);
unset($_SESSION['cart_p_current_price']);
unset($_SESSION['cart_p_name']);
unset($_SESSION['cart_p_featured_photo']);

// Cập nhật giỏ hàng sau khi xóa sản phẩm
$k = 1;
foreach ($cart_product_ids as $i => $product_id) {
    if ($product_id == $_REQUEST['id'] && $cart_size_ids[$i] == $_REQUEST['size'] && $cart_color_ids[$i] == $_REQUEST['color']) {
        // Bỏ qua sản phẩm bị xóa
        continue;
    } else {
        // Lưu lại sản phẩm không bị xóa vào giỏ hàng
        $_SESSION['cart_p_id'][$k] = $product_id;
        $_SESSION['cart_size_id'][$k] = $cart_size_ids[$i];
        $_SESSION['cart_size_name'][$k] = $cart_size_names[$i];
        $_SESSION['cart_color_id'][$k] = $cart_color_ids[$i];
        $_SESSION['cart_color_name'][$k] = $cart_color_names[$i];
        $_SESSION['cart_p_qty'][$k] = $cart_quantities[$i];
        $_SESSION['cart_p_current_price'][$k] = $cart_prices[$i];
        $_SESSION['cart_p_name'][$k] = $cart_product_names[$i];
        $_SESSION['cart_p_featured_photo'][$k] = $cart_featured_photos[$i];
        $k++;
    }
}

// Chuyển hướng người dùng về trang giỏ hàng
header('location: cart.php');
?>
