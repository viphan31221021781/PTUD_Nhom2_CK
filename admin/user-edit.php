<?php
require_once('header.php');

if (!isset($_REQUEST['id'])) {
    header('location: logout.php');
    exit;
} else {
    $statement = $pdo->prepare("SELECT * FROM tbl_user WHERE id=?");
    $statement->execute(array($_REQUEST['id']));
    $total = $statement->rowCount();
    if ($total == 0) {
        header('location: logout.php');
        exit;
    } else {
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
        $row = $result[0];
    }
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $full_name = $_POST['full_name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $role = $_POST['role'];
    $status = $_POST['status'];

    $statement = $pdo->prepare("UPDATE tbl_user SET full_name=?, email=?, phone=?, role=?, status=? WHERE id=?");
    $statement->execute(array($full_name, $email, $phone, $role, $status, $_REQUEST['id']));

    header('location: user.php');
}
?>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chỉnh Sửa Người Dùng</title>
    <style>
        /* Styles for the Edit User Page */
        .edit-user-section {
            margin: 20px;
            font-family: Arial, sans-serif;
        }

        h1 {
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .edit-user-form {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"], input[type="email"], select {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #218838;
            color: white;
            padding: 12px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #28a745;
        }
    </style>
</head>
<body>

<section class="edit-user-section">
    <h1>Chỉnh Sửa Người Dùng</h1>
    <form method="POST" class="edit-user-form">
        <div class="form-group">
            <label for="full_name">Tên</label>
            <input type="text" name="full_name" value="<?php echo htmlspecialchars($row['full_name']); ?>" required>
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" name="email" value="<?php echo htmlspecialchars($row['email']); ?>" required>
        </div>

        <div class="form-group">
            <label for="phone">Số Điện Thoại</label>
            <input type="text" name="phone" value="<?php echo htmlspecialchars($row['phone']); ?>" required>
        </div>

        <div class="form-group">
            <label for="role">Vai Trò</label>
            <select name="role" required>
                <option value="Quản Trị Viên Cấp Cao" <?php if ($row['role'] == 'super admin') echo 'selected'; ?>>Quản Trị Viên Cấp Cao</option>    
                <option value="Quản Trị Viên" <?php if ($row['role'] == 'admin') echo 'selected'; ?>>Quản Trị Viên</option>
                <option value="Quản Lý Sản Phẩm" <?php if ($row['role'] == 'product_manager') echo 'selected'; ?>>Quản Lý Sản Phẩm</option>
                <option value="Quản Lý Đơn Hàng" <?php if ($row['role'] == 'order_manager') echo 'selected'; ?>>Quản Lý Đơn Hàng</option>
                <option value="Chăm Sóc Khách Hàng" <?php if ($row['role'] == 'customer_support') echo 'selected'; ?>>Chăm Sóc Khách Hàng</option>
            </select>
        </div>

        <div class="form-group">
            <label for="status">Trạng Thái</label>
            <select name="status" required>
                <option value="active" <?php if ($row['status'] == 'active') echo 'selected'; ?>>Hoạt Động</option>
                <option value="inactive" <?php if ($row['status'] == 'inactive') echo 'selected'; ?>>Không Hoạt Động</option>
            </select>
        </div>

        <input type="submit" value="Cập Nhật Người Dùng" class="submit-btn">
    </form>
</section>

</body>
</html>

<?php require_once('footer.php'); ?>
