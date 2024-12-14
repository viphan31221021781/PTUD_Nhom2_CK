<?php
require_once('header.php');

// Kiểm tra nếu form đã được gửi
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Lấy dữ liệu từ form
    $full_name = $_POST['full_name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $password = $_POST['password'];
    $role = $_POST['role'];
    $status = $_POST['status']; // "active" or "inactive"

    // Mã hóa mật khẩu sử dụng password_hash
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    // Thực hiện thao tác thêm người dùng vào cơ sở dữ liệu
    $statement = $pdo->prepare("INSERT INTO tbl_user (full_name, email, phone, password, role, status, photo) VALUES (?, ?, ?, ?, ?, ?, ?)");
    $statement->execute(array($full_name, $email, $phone, $hashed_password, $role, $status, 'default.jpg')); // Hoặc NULL nếu cho phép

    // Sau khi thêm người dùng, chuyển hướng về trang người dùng
    header('location: user.php');
    exit();  // Đảm bảo rằng script dừng lại sau khi chuyển hướng
}
?>

<section class="form-container">
    <h1 class="form-title">Thêm Người Dùng Mới</h1>
    <form method="POST" class="user-form">
        <div class="form-group">
            <label for="full_name">Tên</label><br>
            <input type="text" name="full_name" required class="form-input"><br><br>
        </div>

        <div class="form-group">
            <label for="email">Email</label><br>
            <input type="email" name="email" required class="form-input"><br><br>
        </div>

        <div class="form-group">
            <label for="phone">Số Điện Thoại</label><br>
            <input type="text" name="phone" required class="form-input"><br><br>
        </div>

        <div class="form-group">
            <label for="password">Mật Khẩu</label><br>
            <input type="password" name="password" required class="form-input"><br><br>
        </div>

        <div class="form-group">
            <label for="role">Vai Trò</label><br>
            <select name="role" required class="form-input">
                <option value="Quản Trị Viên Cấp Cao">Quản Trị Viên Cấp Cao</option>
                <option value="Quản Trị Viên">Quản Trị Viên</option>
                <option value="Quản Lý Sản Phẩm">Quản Lý Sản Phẩm</option>
                <option value="Quản Lý Đơn Hàng">Quản Lý Đơn Hàng</option>
                <option value="Chăm Sóc Khách Hàng">Chăm Sóc Khách Hàng</option>
            </select><br><br>
        </div>

        <div class="form-group">
            <label for="status">Trạng Thái</label><br>
            <select name="status" required class="form-input">
                <option value="active">Hoạt Động</option>
                <option value="inactive">Không Hoạt Động</option>
            </select><br><br>
        </div>

        <div class="form-group">
            <input type="submit" value="Thêm Người Dùng" class="submit-btn">
        </div>
    </form>
</section>

<style>
    .form-container {
        width: 80%;
        margin: 0 auto;
        padding: 20px;
        background-color: #f9f9f9;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .form-title {
        text-align: center;
        margin-bottom: 20px;
        font-size: 24px;
        font-weight: bold;
    }

    .user-form {
        max-width: 600px;
        margin: 0 auto;
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-input {
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
    }

    .form-input:focus {
        border-color: #007bff;
        outline: none;
    }

    .submit-btn {
        width: 100%;
        padding: 10px;
        background-color: #28a745;
        color: white;
        border: none;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
    }

    .submit-btn:hover {
        background-color: #218838;
    }
</style>

<?php require_once('footer.php'); ?>
