<?php require_once('header.php'); ?>
<?php
// Lấy thông tin banner từ cơ sở dữ liệu
$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
foreach ($result as $row) {
    $banner_checkout = $row['banner_checkout'];
}
?>


<?php
// Kiểm tra giỏ hàng
if(!isset($_SESSION['cart_p_id'])) {
    header('location: cart.php');
    exit;
}
?>


<div class="page-banner" style="background-color: #6e1518">
    <div class="page-banner-inner">
        <h1>Thanh toán</h1>
    </div>
</div>


<div class="page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
               
                <?php if(!isset($_SESSION['customer'])): ?>
                    <p>
                        <a href="login.php" class="btn btn-md btn-danger">Vui lòng đăng nhập với tư cách khách hàng để tiến hành thanh toán.</a>
                    </p>
                <?php else: ?>


                <h3 class="special"><?php echo "Chi tiết đơn hàng" ?></h3>
                <div class="cart">
                    <table class="table table-responsive table-hover table-bordered">
                        <tr>
                            <th><?php echo 'Thứ tự' ?></th>
                            <th><?php echo "Hình ảnh"; ?></th>
                            <th><?php echo "Tên sản phẩm"; ?></th>
                            <th><?php echo "Kích thước"; ?></th>
                            <th><?php echo "Màu sắc"; ?></th>
                            <th><?php echo "Giá"; ?></th>
                            <th><?php echo "Số lượng"; ?></th>
                            <th class="text-right"><?php echo "Tổng cộng"; ?></th>
                        </tr>
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
                        <?php
                        // Tính tổng đơn hàng
                        $table_total_price = 0;
                        for($i = 1; $i <= count($arr_cart_p_id); $i++) {
                            $row_total_price = intval($arr_cart_p_current_price[$i]) * intval($arr_cart_p_qty[$i]);
                            $table_total_price += $row_total_price;
                        }
                        ?>


                        <!-- Hiển thị chi tiết đơn hàng -->
                        <?php
                        for($i = 1; $i <= count($arr_cart_p_id); $i++) {
                        ?>
                            <tr>
                                <td><?php echo $i; ?></td>
                                <td><img src="assets/uploads/<?php echo $arr_cart_p_featured_photo[$i]; ?>" width="100" alt="<?php echo $arr_cart_p_name[$i]; ?>"></td>
                                <td><?php echo $arr_cart_p_name[$i]; ?></td>
                                <td><?php echo $arr_cart_size_name[$i]; ?></td>
                                <td><?php echo $arr_cart_color_name[$i]; ?></td>
                                <td><?php echo number_format($arr_cart_p_current_price[$i]); ?>₫</td>
                                <td><?php echo $arr_cart_p_qty[$i]; ?></td>
                                <td class="text-right"><?php echo number_format($arr_cart_p_current_price[$i] * $arr_cart_p_qty[$i]); ?>₫</td>
                            </tr>
                        <?php
                        }
                        ?>
                       
                        <tr>
                            <th colspan="7" class="total-text"><?php echo "Tạm tính"; ?></th>
                            <th class="total-amount"><?php echo number_format($table_total_price); ?>₫</th>
                        </tr>


                        <?php
                        // LLấy phí vận chuyển phù hợp
                        if ($table_total_price < 1500000) {
                            $statement = $pdo->prepare("SELECT * FROM tbl_shipping_cost WHERE country_id=?");
                            $statement->execute(array($_SESSION['customer']['cust_country']));
                            $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                            foreach ($result as $row) {
                                $shipping_cost = $row['amount'];
                            }
                        } else {
                            $statement = $pdo->prepare("SELECT * FROM tbl_shipping_cost_all WHERE sca_id=1");
                            $statement->execute();
                            $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                            foreach ($result as $row) {
                                $shipping_cost = $row['amount'];
                            }
                        }
                        ?>


                        <tr>
                            <td colspan="7" class="total-text"><?php echo "Phí vận chuyển"; ?></td>
                            <td class="total-amount"><?php echo number_format($shipping_cost); ?>₫</td>
                        </tr>


                        <tr>
                            <th colspan="7" class="total-text"><?php echo "Tổng cộng"; ?></th>
                            <th class="total-amount">
                                <?php
                                $final_total = $table_total_price + $shipping_cost;
                                ?>
                                <?php echo number_format($final_total); ?>₫
                            </th>
                        </tr>
                    </table>
                </div>

                <div class="billing-address">
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="special"><?php echo "Chi tiết đơn hàng"; ?></h3>
                            <table class="table table-responsive table-bordered table-hover table-striped bill-address">
                                <tr>
                                    <td><?php echo "Họ và tên"; ?></td>
                                    <td><?php echo $_SESSION['customer']['cust_name']; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo "Tên công ty"; ?></td>
                                    <td><?php echo $_SESSION['customer']['cust_cname']; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo "Số điện thoại"; ?></td>
                                    <td><?php echo $_SESSION['customer']['cust_phone']; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo "Tỉnh"; ?></td>
                                    <td>
                                        <?php
                                        $statement = $pdo->prepare("SELECT * FROM tbl_country WHERE country_id=?");
                                        $statement->execute(array($_SESSION['customer']['cust_country']));
                                        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                        foreach ($result as $row) {
                                            echo $row['country_name'];
                                        }
                                        ?>
                                    </td>
                                </tr>
                                <tr>
                                    <td><?php echo "Địa chỉ"; ?></td>
                                    <td><?php echo nl2br($_SESSION['customer']['cust_address']); ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo "Phường/Xã"; ?></td>
                                    <td><?php echo $_SESSION['customer']['cust_city']; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo "Quận/Huyện"; ?></td>
                                    <td><?php echo $_SESSION['customer']['cust_state']; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo "Mã Zip"; ?></td>
                                    <td><?php echo $_SESSION['customer']['cust_zip']; ?></td>
                                </tr>                                 
                            </table>
                        </div>
                    </div>                    
                </div>

                

                <div class="cart-buttons">
                    <ul>
                        <li><a href="cart.php" class="btn btn-primary"><?php echo "Quay lại giỏ hàng"; ?></a></li>
                    </ul>
                </div>

				<div class="clear"></div>
                <h3 class="special"><?php echo "Thanh toán"; ?></h3>
                <div class="row">
                    
                    	<?php
		                $checkout_access = 1;
		                if(
		                    ($_SESSION['customer']['cust_name']=='') ||
		                    ($_SESSION['customer']['cust_cname']=='') ||
		                    ($_SESSION['customer']['cust_phone']=='') ||
		                    ($_SESSION['customer']['cust_country']=='') ||
		                    ($_SESSION['customer']['cust_address']=='') ||
		                    ($_SESSION['customer']['cust_city']=='') ||
		                    ($_SESSION['customer']['cust_state']=='') ||
		                    ($_SESSION['customer']['cust_zip']=='') ||
		                    ($_SESSION['customer']['cust_name']=='') ||
		                    ($_SESSION['customer']['cust_cname']=='') ||
		                    ($_SESSION['customer']['cust_phone']=='') ||
		                    ($_SESSION['customer']['cust_country']=='') ||
		                    ($_SESSION['customer']['cust_address']=='') ||
		                    ($_SESSION['customer']['cust_city']=='') ||
		                    ($_SESSION['customer']['cust_state']=='') ||
		                    ($_SESSION['customer']['cust_zip']=='')
		                ) {
		                    $checkout_access = 0;
		                }
		                ?>
		                <?php if($checkout_access == 0): ?>
		                	<div class="col-md-12">
				                <div style="color:red;font-size:22px;margin-bottom:50px;">
                                Bạn phải điền đầy đủ thông tin thanh toán và vận chuyển từ bảng điều khiển của mình để có thể thanh toán đơn hàng. Vui lòng điền thông tin tại đây. <a href="customer-billing-shipping-update.php" style="color:red;text-decoration:underline;">this link</a>.
			                    </div>
	                    	</div>
	                	<?php else: ?>
		                	<div class="col-md-4">
		                		
	                            <div class="row">

	                                <div class="col-md-12 form-group">
	                                    <label for=""><?php echo "Chọn phương thức thanh toán"; ?> *</label>
	                                    <select name="payment_method" class="form-control select2" id="advFieldsStatus">
	                                        <option value=""><?php echo "Chọn một phương thức"; ?></option>
	                                        <option value="PayPal"><?php echo "Paypal"; ?></option>
	                                        <option value="Bank Deposit"><?php echo "Ngân hàng"; ?></option>
	                                        <option value="Bank Deposit"><?php echo "Tiền mặt"; ?></option>
	                                    </select>
	                                </div>

                                    

                                    <form class="paypal" action="<?php echo BASE_URL; ?>payment/paypal/payment_process.php" method="post" id="paypal_form" target="_blank">
                                        <input type="hidden" name="cmd" value="_xclick" />
                                        <input type="hidden" name="no_note" value="1" />
                                        <input type="hidden" name="lc" value="UK" />
                                        <input type="hidden" name="currency_code" value="USD" />
                                        <input type="hidden" name="bn" value="PP-BuyNowBF:btn_buynow_LG.gif:NonHostedGuest" />

                                        <input type="hidden" name="final_total" value="<?php echo $final_total; ?>">
                                        <div class="col-md-12 form-group">
                                            <input type="submit" class="btn btn-primary" value="<?php echo "Thanh toán"; ?>" name="form1">
                                        </div>
                                    </form>



                                    <form action="payment/bank/init.php" method="post" id="bank_form">
                                        <input type="hidden" name="amount" value="<?php echo $final_total; ?>">
                                        <div class="col-md-12 form-group">
                                            <label for=""><?php echo "Gửi đến tài khoản này"; ?></span></label><br>
                                            <?php
                                            $statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
                                            $statement->execute();
                                            $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                            foreach ($result as $row) {
                                                echo nl2br($row['bank_detail']);
                                            }
                                            ?>
                                        </div>
                                        <div class="col-md-12 form-group">
                                            <label for=""><?php echo "Thông tin chuyển khoản"; ?> <br><span style="font-size:12px;font-weight:normal;">(<?php echo "Bao gồm thông tin ID đơn hàng và những thông tin khác"; ?>)</span></label>
                                            <textarea name="transaction_info" class="form-control" cols="30" rows="10"></textarea>
                                        </div>
                                        <div class="col-md-12 form-group">
                                            <input type="submit" class="btn btn-primary" value="<?php echo "Thanh toán"; ?>" name="form3">
                                        </div>
                                    </form>
	                                
	                            </div>
		                            
		                        
		                    </div>
		                <?php endif; ?>
                        
                </div>
                

                <?php endif; ?>

            </div>
        </div>
    </div>
</div>


<?php require_once('footer.php'); ?>