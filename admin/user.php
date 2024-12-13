<?php
require_once('header.php');
?>

<!-- CSS cho trạng thái Kích Hoạt và Vô Hiệu Hóa -->
<style>
    
    /* Cấu hình chung cho các nút */
    .btn {
        display: inline-block;
        font-size: 16px;
        font-weight: 600;
        padding: 12px 20px;
        border-radius: 6px;
        text-align: center;
        transition: all 0.3s ease-in-out;
        cursor: pointer;
        text-decoration: none;
        text-transform: uppercase;
    }

    /* Nút trạng thái Kích Hoạt */
    .btn-activate {
        background-color: #28a745; /* Xanh lá cho trạng thái Kích Hoạt */
        color: white;
        border: 1px solid #28a745;
    }

    .btn-activate:hover {
        background-color: #218838;
        border-color: #218838;
        transform: translateY(-2px);
    }

    .btn-activate:active {
        background-color: #1e7e34;
        border-color: #1e7e34;
        transform: translateY(0);
    }

    /* Nút trạng thái Vô Hiệu Hóa */
    .btn-deactivate {
        background-color: #dc3545; /* Đỏ cho trạng thái Vô Hiệu Hóa */
        color: white;
        border: 1px solid #dc3545;
    }

    .btn-deactivate:hover {
        background-color: #c82333;
        border-color: #c82333;
        transform: translateY(-2px);
    }

    .btn-deactivate:active {
        background-color: #bd2130;
        border-color: #bd2130;
        transform: translateY(0);
    }

    /* Nút xóa và chỉnh sửa */
    .btn-danger, .btn-info {
        font-weight: bold;
        padding: 10px 15px;
        border-radius: 5px;
        transition: background-color 0.3s ease-in-out;
    }

    .btn-danger {
        background-color: #dc3545;
        color: white;
    }

    .btn-danger:hover {
        background-color: #c82333;
    }

    .btn-info {
        background-color: #17a2b8;
        color: white;
    }

    .btn-info:hover {
        background-color: #138496;
    }

    .btn-xs {
        padding: 5px 10px;
        font-size: 14px;
    }

    /* Nút thêm người dùng mới */
    .btn-primary {
        background-color: #aa535a;
        color: white;
        border: none;
    }

    .btn-primary:hover {
        background-color: #931926;
        transform: translateY(-2px);
    }

    .btn-primary:active {
        background-color: #931926;
        transform: translateY(0);
    }

</style>

<section>
   <div class="content-header-left">
       <h1 style="margin-left:30px;"><i class="fa fa-users" style="padding-right:10px"></i>Quản Lý Người Dùng</h1>
   </div>
</section>

<section class="content">
   <div class="row">
       <div class="col-md-12">
           <div class="box box-info">
               <div class="box-body">
                   <!-- Nút Thêm Người Dùng Mới -->
                   <a href="user-add.php" class="btn btn-primary">Thêm Người Dùng Mới</a>
                   <div class="table-responsive">
                       <table id="example1" class="table table-bordered table-hover table-striped">
                           <thead>
                               <tr>
                                   <th width="10">STT</th>
                                   <th width="180">Tên</th>
                                   <th width="150">Email</th>
                                   <th width="150">Số Điện Thoại</th>
                                   <th width="150">Vai Trò</th>
                                   <th width="150">Trạng Thái</th>
                            
                                   <th width="100">Thay Đổi Trạng Thái</th>
                                   <th width="100">Hành Động</th>
                               </tr>
                           </thead>
                           <tbody>
                               <?php
                               $i = 0;
                               $statement = $pdo->prepare("SELECT * FROM tbl_user");
                               $statement->execute();
                               $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                               foreach ($result as $row) {
                                   $i++;
                                   ?>
                                   <tr>
                                       <td><?php echo $i; ?></td>
                                       <td><?php echo $row['full_name']; ?></td>
                                       <td><?php echo $row['email']; ?></td>
                                       <td><?php echo $row['phone']; ?></td>
                                       <td><?php echo $row['role']; ?></td>
                                       <td>
                                           <?php echo ($row['status'] == 'active') ? 'Hoạt Động' : 'Không Hoạt Động'; ?>
                                       </td>
                                       <td>
                                           <a href="user-change-status.php?id=<?php echo $row['id']; ?>" 
                                              class="btn btn-xs <?php echo ($row['status'] == 'active') ? 'btn-deactivate' : 'btn-activate'; ?>">
                                               <?php echo ($row['status'] == 'active') ? 'Vô Hiệu Hóa' : 'Kích Hoạt'; ?>
                                           </a>
                                       </td>
                                       <td>
                                           <a href="#" class="btn btn-danger btn-xs" data-href="user-delete.php?id=<?php echo $row['id']; ?>" data-toggle="modal" data-target="#confirm-delete">Xóa</a>
                                           <a href="user-edit.php?id=<?php echo $row['id']; ?>" class="btn btn-info btn-xs">Chỉnh sửa</a>
                                       </td>
                                   </tr>
                               <?php
                               }
                               ?>
                           </tbody>
                       </table>
                   </div>
               </div>
           </div>
       </div>
   </div>
</section>

<!-- Modal Xác Nhận Xóa -->
<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">
       <div class="modal-content">
           <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
               <h4 class="modal-title" id="myModalLabel">Xác Nhận Xóa</h4>
           </div>
           <div class="modal-body">
               <p>Bạn có chắc chắn muốn xóa mục này không?</p>
           </div>
           <div class="modal-footer">
               <button type="button" class="btn btn-default" data-dismiss="modal">Hủy</button>
               <a class="btn btn-danger btn-ok">Xóa</a>
           </div>
       </div>
   </div>
</div>

<?php require_once('footer.php'); ?>
