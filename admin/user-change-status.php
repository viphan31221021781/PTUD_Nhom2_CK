<?php
require_once('header.php');

if (!isset($_REQUEST['id'])) {
    header('location: logout.php');
    exit;
} else {
    // Kiểm tra id người dùng có hợp lệ hay không
    $statement = $pdo->prepare("SELECT * FROM tbl_user WHERE id=?");
    $statement->execute(array($_REQUEST['id']));
    $total = $statement->rowCount();
    if ($total == 0) {
        header('location: logout.php');
        exit;
    } else {
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
        foreach ($result as $row) {
            $status = $row['status'];
        }
    }
}

// Thay đổi trạng thái người dùng
$new_status = ($status == 'active') ? 'inactive' : 'active';
$statement = $pdo->prepare("UPDATE tbl_user SET status=? WHERE id=?");
$statement->execute(array($new_status, $_REQUEST['id']));

header('location: user.php');
?>
