<?php require_once('header.php'); ?>


<?php
$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
foreach ($result as $row) {
    $banner_product_category = $row['banner_product_category'];
}
?>


<?php
if( !isset($_REQUEST['id']) || !isset($_REQUEST['type']) ) {
    header('location: index.php');
    exit;
} else {


    if( ($_REQUEST['type'] != 'top-category') && ($_REQUEST['type'] != 'mid-category') && ($_REQUEST['type'] != 'end-category') ) {
        header('location: index.php');
        exit;
    } else {


        $statement = $pdo->prepare("SELECT * FROM tbl_top_category");
        $statement->execute();
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
        foreach ($result as $row) {
            $top[] = $row['tcat_id'];
            $top1[] = $row['tcat_name'];
        }


        $statement = $pdo->prepare("SELECT * FROM tbl_mid_category");
        $statement->execute();
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
        foreach ($result as $row) {
            $mid[] = $row['mcat_id'];
            $mid1[] = $row['mcat_name'];
            $mid2[] = $row['tcat_id'];
        }


        $statement = $pdo->prepare("SELECT * FROM tbl_end_category");
        $statement->execute();
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
        foreach ($result as $row) {
            $end[] = $row['ecat_id'];
            $end1[] = $row['ecat_name'];
            $end2[] = $row['mcat_id'];
        }


        if($_REQUEST['type'] == 'top-category') {
            if(!in_array($_REQUEST['id'],$top)) {
                header('location: index.php');
                exit;
            } else {
                for ($i=0; $i < count($top); $i++) {
                    if($top[$i] == $_REQUEST['id']) {
                        $title = $top1[$i];
                        break;
                    }
                }
                $arr1 = array();
                $arr2 = array();
                for ($i=0; $i < count($mid); $i++) {
                    if($mid2[$i] == $_REQUEST['id']) {
                        $arr1[] = $mid[$i];
                    }
                }
                for ($j=0; $j < count($arr1); $j++) {
                    for ($i=0; $i < count($end); $i++) {
                        if($end2[$i] == $arr1[$j]) {
                            $arr2[] = $end[$i];
                        }
                    }  
                }
                $final_ecat_ids = $arr2;
            }  
        }


        if($_REQUEST['type'] == 'mid-category') {
            if(!in_array($_REQUEST['id'],$mid)) {
                header('location: index.php');
                exit;
            } else {
                for ($i=0; $i < count($mid); $i++) {
                    if($mid[$i] == $_REQUEST['id']) {
                        $title = $mid1[$i];
                        break;
                    }
                }
                $arr2 = array();        
                for ($i=0; $i < count($end); $i++) {
                    if($end2[$i] == $_REQUEST['id']) {
                        $arr2[] = $end[$i];
                    }
                }
                $final_ecat_ids = $arr2;
            }
        }


        if($_REQUEST['type'] == 'end-category') {
            if(!in_array($_REQUEST['id'],$end)) {
                header('location: index.php');
                exit;
            } else {
                for ($i=0; $i < count($end); $i++) {
                    if($end[$i] == $_REQUEST['id']) {
                        $title = $end1[$i];
                        break;
                    }
                }
                $final_ecat_ids = array($_REQUEST['id']);
            }
        }


    }  
}
?>
<style>
    .price-filter-form {
        background-color: #f8f9fa;
        border: 1px solid #ddd;
        border-radius: 8px;
        padding: 15px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }


    .price-filter-form h4 {
        font-size: 18px;
        font-weight: bold;
        color: #6e1518;
        margin-bottom: 15px;
    }


    .price-filter-form label {
        font-size: 14px;
        font-weight: 500;
        color: #333;
        margin-bottom: 5px;
        display: block;
    }


    .price-filter-form .form-control {
        margin-bottom: 10px;
        border-radius: 6px;
        border: 1px solid #ced4da;
        padding: 8px 10px;
        font-size: 14px;
    }


    .price-filter-form .btn {
        background-color: #6e1518;
        color: #fff;
        border: none;
        border-radius: 6px;
        padding: 8px 15px;
        font-size: 14px;
        transition: background-color 0.3s ease;
    }


    .price-filter-form .btn:hover {
        background-color: #8a1d1f;
    }
</style>




<div class="page-banner" style="background-color:#6e1518">
    <div class="inner">
        <h1><?php echo "Danh mục"; ?> <?php echo $title; ?></h1>
    </div>
</div>


<div class="page">
    <div class="container">
        <div class="row">
        <div class="col-md-3">
        <?php require_once('sidebar-category.php'); ?>
        <form method="get" action="" class="price-filter-form">
            <h4>Lọc theo giá</h4>
            <input type="hidden" name="id" value="<?php echo $_REQUEST['id']; ?>">
            <input type="hidden" name="type" value="<?php echo $_REQUEST['type']; ?>">
            <label for="min_price">Giá từ:</label>
            <input type="number" name="min_price" id="min_price" class="form-control" placeholder="VNĐ">
            <label for="max_price">Giá đến:</label>
            <input type="number" name="max_price" id="max_price" class="form-control" placeholder="VNĐ">
            <button type="submit" class="btn mt-2">Áp dụng</button>
            <button type="submit" class="btn mt-2">Đặt lại</button>
        </form>
    </div>




            <div class="col-md-9">
                <h3>Sản phẩm thuộc danh mục "<?php echo $title; ?>"</h3>
                <div class="product product-cat">
                    <div class="row">
                        <?php
                        $prod_count = 0;
                        $query = "SELECT * FROM tbl_product WHERE ecat_id IN (" . implode(',', $final_ecat_ids) . ") AND p_is_active=1";


                        if(isset($_GET['min_price']) && is_numeric($_GET['min_price'])) {
                            $query .= " AND p_current_price >= " . $_GET['min_price'];
                        }


                        if(isset($_GET['max_price']) && is_numeric($_GET['max_price'])) {
                            $query .= " AND p_current_price <= " . $_GET['max_price'];
                        }


                        $statement = $pdo->prepare($query);
                        $statement->execute();
                        $result = $statement->fetchAll(PDO::FETCH_ASSOC);


                        if(empty($result)) {
                            echo '<div class="pl_15">"Không có sản phẩm nào được tìm thấy"</div>';
                        } else {
                            foreach ($result as $row) {
                                ?>
                                <div class="col-md-4 item item-product-cat">
                                    <div class="inner">
                                        <div class="thumb" style="border: 2px solid #936921; border-radius: 12px; overflow: hidden;">
                                            <div class="photo" style="background-image:url(assets/uploads/<?php echo $row['p_featured_photo']; ?>); border-radius: 12px;"></div>
                                            <div class="overlay"></div>
                                        </div>
                                        <div class="text">
                                            <h3><a href="product.php?id=<?php echo $row['p_id']; ?>"><?php echo $row['p_name']; ?></a></h3>
                                            <h4>
                                                <?php echo number_format($row['p_current_price']); ?><?php echo "₫"; ?>
                                                <?php if($row['p_old_price'] != ''): ?>
                                                <del>
                                                    <?php echo number_format($row['p_old_price']); ?><?php echo "₫"; ?>
                                                </del>
                                                <?php endif; ?>
                                            </h4>
                                            <?php if($row['p_qty'] == 0): ?>
                                                <div class="out-of-stock">
                                                    <div class="inner">
                                                        Hết Hàng
                                                    </div>
                                                </div>
                                            <?php else: ?>
                                                <p><a href="product.php?id=<?php echo $row['p_id']; ?>" class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</a></p>
                                            <?php endif; ?>
                                            </div>
                                        </div>
                                    </div>
                                    <?php
                                }
                            }
                       
                        ?>
                    </div>




                </div>




            </div>
        </div>
    </div>
</div>




<?php require_once('footer.php'); ?>




<!-- CSS -->
<style>
.add-to-cart-btn {
    display: inline-block;
    padding: 10px 20px; /* Soft padding */
    background-color: #aa535a !important; /* Button color updated */
    color: white; /* Text color */
    border-radius: 30px; /* Rounded corners */
    text-decoration: none;
    font-size: 16px; /* Adjust font size */
    font-weight: bold; /* Optional: Bold text */
    transition: background-color 0.3s ease, transform 0.2s ease; /* Smooth hover transition */
}




.add-to-cart-btn:hover {
    background-color: #7c5e3b; /* Slightly darker shade on hover */
    transform: scale(1.05); /* Slightly enlarge the button */
}
</style>



