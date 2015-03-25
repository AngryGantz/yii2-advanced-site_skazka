<?php
use yii\bootstrap\ActiveForm;
use yii\helpers\Html;
use yii\bootstrap\ButtonDropdown;
/* @var $this yii\web\View */
/* @var $form yii\widgets\ActiveForm */
/* @var $model \frontend\models\ContactForm */
$this->title = Yii::$app->name;?>
<div class="carouselwrap">
    <?= \common\components\widgets\DbCarousel::widget([
            'key'=>
    'index'
        ]) ?>
</div>
<?php echo $this->render('//layouts/_btnmenu'); ?>
<div class="container">
<!-- <a class="btn btn-lg btn-success callorder" data-userid="22" >Change password</a> -->
    
    <div class="site-index">
        <!-- begin row (full wrap for 2-col content  -->
        <div class="row">
            <div class="col-lg-3">
                <?php include Yii::getAlias('@frontend/views/layouts/_left.php'); ?>                    
            </div>
            <!-- begin col-lg-8  -->
            <div class="col-lg-9">
               <?php include '_homecontent.php'; ?> 
            </div>
            <!-- end col-lg-8 -->
        </div>
        <!-- end row (full wrap for 2-col content -->
    </div>
    <!-- end site-index -->
</div>



