<?php require_once('header.php'); ?>


<?php
$statement = $pdo->prepare("SELECT * FROM tbl_page WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
foreach ($result as $row) {
    $faq_title = $row['faq_title'];
    $faq_banner = $row['faq_banner'];
}
?>


<style>
    .page-banner {
        background-color: #6e1518;
        text-align: center;
        padding: 50px 0;
        color: #fff;
    }


    .panel-title {
        color: #931926;
        font-size: 18px;
        font-weight: bold;
    }


    .panel-heading {
        border: 1px solid #931926;
        border-radius: 5px;
        background-color: #fff;
        cursor: pointer;
        transition: all 0.3s ease;
        padding: 15px;
    }


    .panel-heading:hover {
        background-color: #931926;
        color: #fff;
    }


    .panel-body {
        border: 1px solid #931926;
        border-radius: 5px;
        padding: 15px;
        background-color: #fdf5f5;
    }


    .label-primary {
        background-color: #931926;
        color: #fff;
        font-size: 14px;
        padding: 5px 10px;
        border-radius: 3px;
    }


    .panel-group .panel {
        margin-bottom: 15px;
        border: none;
    }
</style>


<div class="page-banner">
    <div class="inner">
        <h1><?php echo $faq_title; ?></h1> <!-- Tiêu đề của trang FAQ -->
    </div>
</div>


<div class="page">
    <div class="container">
        <div class="row">            
            <div class="col-md-12">
               
                <div class="panel-group" id="faqAccordion">                    


                    <?php
                    $statement = $pdo->prepare("SELECT * FROM tbl_faq");
                    $statement->execute();
                    $result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
                    foreach ($result as $row) {
                        ?>
                        <div class="panel panel-default">
                            <div class="panel-heading accordion-toggle question-toggle collapsed" data-toggle="collapse" data-parent="#faqAccordion" data-target="#question<?php echo $row['faq_id']; ?>">
                                <h4 class="panel-title">
                                    Câu hỏi: <?php echo $row['faq_title']; ?>
                                </h4>
                            </div>
                            <div id="question<?php echo $row['faq_id']; ?>" class="panel-collapse collapse" style="height: 0px;">
                                <div class="panel-body">
                                    <h5><span class="label label-primary">Câu trả lời</span></h5>
                                    <p>
                                        <?php echo $row['faq_content']; ?>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <?php
                    }
                    ?>
                   
                </div>


            </div>
        </div>
    </div>
</div>


<?php require_once('footer.php'); ?>

