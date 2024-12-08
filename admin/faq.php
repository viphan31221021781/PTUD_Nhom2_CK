<?php require_once('header.php'); ?>


<section>
   <div class="content-header-left">
       <h1 style="margin-left:30px;"><i class="fa fa-question-circle" style="padding-right:10px"></i>Xem Câu Hỏi Thường Gặp (FAQs)</h1>
   </div>
   <div class="content-header-right">
       <a href="faq-add.php" class="btn btn-primary btn-sm">Thêm FAQ</a>
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
                               <th width="30">STT</th>
                               <th width="100">Câu hỏi</th>
                               <th width="80">Chỉnh sửa/xoá</th>
                           </tr>
                       </thead>
                       <tbody>
                           <?php
                           $i=0;
                           $statement = $pdo->prepare("SELECT * FROM tbl_faq");
                           $statement->execute();
                           $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                           foreach ($result as $row) {
                               $i++;
                               ?>
                               <tr>
                                   <td><?php echo $i; ?></td>
                                   <td><?php echo $row['faq_title']; ?></td>
                                   <td>                                       
                                       <a href="faq-edit.php?id=<?php echo $row['faq_id']; ?>" class="btn btn-primary btn-xs">Chỉnh Sửa</a>
                                       <a href="#" class="btn btn-danger btn-xs" data-href="faq-delete.php?id=<?php echo $row['faq_id']; ?>" data-toggle="modal" data-target="#confirm-delete">Xoá</a> 
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




</section>




<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">
       <div class="modal-content">
           <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
               <h4 class="modal-title" id="myModalLabel">Xác nhận xóa</h4>
           </div>
           <div class="modal-body">
               <p>Bạn có chắc chắn muốn xóa mục này không?</p>
           </div>
           <div class="modal-footer">
               <button type="button" class="btn btn-default" data-dismiss="modal">Huỷ</button>
               <a class="btn btn-danger btn-ok">Xoá</a>
           </div>
       </div>
   </div>
</div>




<?php require_once('footer.php'); ?>
