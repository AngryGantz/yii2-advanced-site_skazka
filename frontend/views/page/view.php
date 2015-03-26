<?php
/**
 * @var $this \yii\web\View
 * @var $model \common\models\Page
 */
$this->title = $model->title;
?>
<div class="content">
<!-- begin row (full wrap for 2-col content  -->
        <div class="row">
            <div class="col-lg-3">
                <?php include Yii::getAlias('@frontend/views/layouts/_left.php'); ?>                    
            </div>
            <!-- begin col-lg-8  -->
            <div class="col-lg-9">
			    <h1><?= $model->title ?></h1>
			    <?= $model->body ?>
            </div>
            <!-- end col-lg-8 -->
        </div>
        <!-- end row (full wrap for 2-col content -->
</div>