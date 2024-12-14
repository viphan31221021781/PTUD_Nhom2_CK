<?php require_once('header.php'); ?>

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
foreach ($result as $row) {
    $banner_cart = $row['banner_cart'];
}
?>

<?php
$error_message = '';
if(isset($_POST['form1'])) {

    $i = 0;
    $statement = $pdo->prepare("SELECT * FROM tbl_product");
    $statement->execute();
    $result = $statement->fetchAll(PDO::FETCH_ASSOC);
    foreach ($result as $row) {
        $i++;
        $table_product_id[$i] = $row['p_id'];
        $table_quantity[$i] = $row['p_qty'];
    }

    $i=0;
    foreach($_POST['product_id'] as $val) {
        $i++;
        $arr1[$i] = $val;
    }
    $i=0;
    foreach($_POST['quantity'] as $val) {
        $i++;
        $arr2[$i] = $val;
    }
    $i=0;
    foreach($_POST['product_name'] as $val) {
        $i++;
        $arr3[$i] = $val;
    }
    
    $allow_update = 1;
    for($i=1;$i<=count($arr1);$i++) {
        for($j=1;$j<=count($table_product_id);$j++) {
            if($arr1[$i] == $table_product_id[$j]) {
                $temp_index = $j;
                break;
            }
        }
        if($table_quantity[$temp_index] < $arr2[$i]) {
        	$allow_update = 0;
            $error_message .= '"'.$arr2[$i].'" items are not available for "'.$arr3[$i].'"\n';
        } else {
            $_SESSION['cart_p_qty'][$i] = $arr2[$i];
        }
    }
    $error_message .= '\nCác sản phẩm khác đã được cập nhật số lượng thành công!';
    ?>
    
    <?php if($allow_update == 0): ?>
    	<script>alert('<?php echo $error_message; ?>');</script>
	<?php else: ?>
		<script>alert('Tất cả sản phẩm đã được cập nhật số lượng thành công!');</script>
	<?php endif; ?>
    <?php

}
?>

<div class="page-banner" style="background-color:#6e1518">
    <!-- <div class="overlay"></div> -->
    <div class="page-banner-inner">
        <h1>Giỏ hàng</h1>
    </div>
</div>

<div class="page">
	<div class="container">
		<div class="row">
			<div class="col-md-12">

                <?php if(!isset($_SESSION['cart_p_id'])): ?>
                    <?php echo '<h2 class="text-center">Giỏ hàng của bạn đang trống!!</h2></br>'; ?>
                    <?php echo '<h4 class="text-center">Hãy thêm sản phẩm vào giỏ hàng để xem chúng tại đây.</h4>'; ?>
                <?php else: ?>
                <form action="" method="post">
                    <?php $csrf->echoInputField(); ?>
				<div class="cart">
                    <table class="table table-responsive table-hover table-bordered">
                    <thead style="background-color: #f8f9fa; color: #931926;">
                    <tr>
                        <th>STT</th>
                        <th>Hình ảnh</th>
                        <th>Tên sản phẩm</th>
                        <th>Kích cỡ</th>
                        <th>Màu sắc</th>
                        <th>Giá</th>
                        <th>Số lượng</th>
                        <th class="text-right">Tổng</th>
                        <th class="text-center">Hành động</th>
                     </tr>
                     </thead>
                     <tbody style="background-color: #fff; box-shadow: 0px 2px 8px rgba(0, 0, 0, 0.1); border-radius: 8px;">

                        <?php
                        $table_total_price = 0;

                        $i=0;
                        foreach($_SESSION['cart_p_id'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_p_id[$i] = $value;
                        }

                        $i=0;
                        foreach($_SESSION['cart_size_id'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_size_id[$i] = $value;
                        }

                        $i=0;
                        foreach($_SESSION['cart_size_name'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_size_name[$i] = $value;
                        }

                        $i=0;
                        foreach($_SESSION['cart_color_id'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_color_id[$i] = $value;
                        }

                        $i=0;
                        foreach($_SESSION['cart_color_name'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_color_name[$i] = $value;
                        }

                        $i=0;
                        foreach($_SESSION['cart_p_qty'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_p_qty[$i] = $value;
                        }

                        $i=0;
                        foreach($_SESSION['cart_p_current_price'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_p_current_price[$i] = $value;
                        }

                        $i=0;
                        foreach($_SESSION['cart_p_name'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_p_name[$i] = $value;
                        }

                        $i=0;
                        foreach($_SESSION['cart_p_featured_photo'] as $key => $value) 
                        {
                            $i++;
                            $arr_cart_p_featured_photo[$i] = $value;
                        }
                        ?>
                        <?php for($i=1;$i<=count($arr_cart_p_id);$i++): ?>
                        <tr style="box-shadow: 0px 2px 8px rgba(0, 0, 0, 0.1); border-radius: 8px;">
                            <td><?php echo $i; ?></td>
                            <td>
                                <img src="assets/uploads/<?php echo $arr_cart_p_featured_photo[$i]; ?>" alt="" style="width: 50px; height: 50px; border-radius: 8px;">
                            </td>
                            <td><?php echo $arr_cart_p_name[$i]; ?></td>
                            <td><?php echo $arr_cart_size_name[$i]; ?></td>
                            <td><?php echo $arr_cart_color_name[$i]; ?></td>
                            <td><?php echo number_format($arr_cart_p_current_price[$i]); ?> VNĐ</td>
                            <td>
                                <input type="hidden" name="product_id[]" value="<?php echo $arr_cart_p_id[$i]; ?>">
                                <input type="hidden" name="product_name[]" value="<?php echo $arr_cart_p_name[$i]; ?>">
                                <input type="number" class="input-text qty text" step="1" min="1" max="" name="quantity[]" value="<?php echo $arr_cart_p_qty[$i]; ?>" title="Qty" size="4" pattern="[0-9]*" inputmode="numeric">
                            </td>
                            <td class="text-right">
                                <?php
                                $row_total_price = floatval($arr_cart_p_current_price[$i]) * floatval($arr_cart_p_qty[$i]);
                                $table_total_price = $table_total_price + $row_total_price;
                                ?>
                                <?php echo number_format($row_total_price); ?> VNĐ
                            </td>
                            <td class="text-center">
                                <a onclick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm này không?');" href="cart-item-delete.php?id=<?php echo $arr_cart_p_id[$i]; ?>&size=<?php echo $arr_cart_size_id[$i]; ?>&color=<?php echo $arr_cart_color_id[$i]; ?>" class="trash"><i class="fa fa-trash" style="color:red;"></i></a>
                            </td>
                        </tr>
                        <?php endfor; ?>
                        </tbody>
                            <tfoot style="background-color: #f8f9fa; color: #931926;">

                        <tr>
                            <th colspan="7" class="total-text">Tổng</th>
                            <th class="total-amount"><?php echo number_format($table_total_price); ?> VNĐ</th>
                            <th></th>
                        </tr>
                        </tfoot>
                    </table> 
                </div>

                <div class="cart-buttons text-center">
                        <ul class="list-inline">
                            <li class="list-inline-item"><input type="submit" value="Cập nhật" class="btn btn-rounded" name="form1" style="background-color: #931926; color: #fff; border-radius: 25px; padding: 10px 20px;"></li>
                            <li class="list-inline-item"><a href="index.php" class="btn btn-rounded" style="background-color: #931926; color: #fff; border-radius: 25px; padding: 10px 20px;">Tiếp tục mua sắm</a></li>
                            <li class="list-inline-item"><a href="checkout.php" class="btn btn-rounded" style="background-color: #931926; color: #fff; border-radius: 25px; padding: 10px 20px;">Thanh toán</a></li>
                        </ul>
                    </div>
                </form>
                <?php endif; ?>

                

			</div>
		</div>
	</div>
</div>


<?php require_once('footer.php'); ?>