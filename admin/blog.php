<?php require_once('header.php'); ?>










<section class="content-header">
 <div class="content-header-left">
     <h1>Danh Sách Blog</h1>
 </div>
 <div class="content-header-right">
     <a href="blog-add.php" class="btn btn-primary btn-sm">Thêm Mới</a>
 </div>
</section>










<section class="content">
 <div class="row">
     <div class="col-md-12">
         <div class="box box-info">
             <div class="box-body table-responsive">
                 <table id="example1" class="table table-bordered table-hover table-striped">
                     <thead>
                         <tr>
                             <th>STT</th>
                             <th>Tiêu Đề</th>
                             <th>Tác Giả</th>
                             <th>Ngày Đăng</th>
                             <th>Ảnh</th>  <!-- Cột ảnh -->
                             <th>Hành Động</th>
                         </tr>
                     </thead>
                     <tbody>
                         <?php
                         $i = 0;
                         $statement = $pdo->prepare("SELECT * FROM tbl_blog ORDER BY blog_id DESC");
                         $statement->execute();
                         $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                         foreach ($result as $row) {
                             $i++;
                         ?>
                             <tr>
                                 <td><?php echo $i; ?></td>
                                 <td><?php echo $row['blog_title']; ?></td>
                                 <td><?php echo $row['blog_author']; ?></td>
                                 <td><?php echo $row['blog_date']; ?></td>
                                 <td>
                                 

                                    <?php if ($row['blog_image']): ?>
                                        
                                        <img
                                        src="../assets/uploads/<?php echo htmlspecialchars($row['blog_image']); ?>"
                                        alt="<?php echo htmlspecialchars($row['blog_title']); ?>" style="width:50px">
                                        
                                     <?php else: ?>
                                         Không có ảnh
                                     <?php endif; ?>
                                 </td>  <!-- Hiển thị ảnh nếu có -->
                                 <td>
                                     <a href="blog-edit.php?id=<?php echo $row['blog_id']; ?>" class="btn btn-primary btn-xs">Sửa</a>
                                     <a href="#" class="btn btn-danger btn-xs" data-href="blog-delete.php?id=<?php echo $row['blog_id']; ?>" data-toggle="modal" data-target="#confirm-delete">Xóa</a>
                                 </td>
                             </tr>
                         <?php } ?>
                     </tbody>
                 </table>
             </div>
         </div>
     </div>
 </div>
</section>










<!-- Modal xác nhận Xóa -->
<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 <div class="modal-dialog">
     <div class="modal-content">
         <div class="modal-header">
             <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
             <h4 class="modal-title" id="myModalLabel">Xác Nhận Xóa</h4>
         </div>
         <div class="modal-body">
             Bạn có chắc chắn muốn xóa mục này không?
         </div>
         <div class="modal-footer">
             <button type="button" class="btn btn-default" data-dismiss="modal">Hủy</button>
             <a id="confirm" href="" class="btn btn-danger btn-ok">Xóa</a>
         </div>
     </div>
 </div>
</div>










<script>
// Khi nhấn nút Xóa, cập nhật đường dẫn trong modal
$('#confirm-delete').on('show.bs.modal', function(e) {
 var href = $(e.relatedTarget).data('href');
 $('#confirm').attr('href', href);
});
</script>










<?php require_once('footer.php'); ?>
