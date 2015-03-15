<?php
 use yii\bootstrap\ActiveForm;
use yii\helpers\Html;
/* @var $this yii\web\View */
/* @var $form yii\widgets\ActiveForm */
/* @var $model \frontend\models\ContactForm */
$this->title = Yii::$app->name;
?>


<?php



//$form = ActiveForm::begin(); //Default Active Form begin
$form = ActiveForm::begin([
    'id' => 'active-form',
    'options' => [
                'class' => 'form-horizontal',
                'enctype' => 'multipart/form-data'
                ],
])
?>

<?= $form->field($model,'name'); ?>

<?
ActiveForm::end();
?>


<!-- begin btnmenucontainer  -->
<div class="btnmenucontainer">
    <div class="btnmenuwrap1">
        <div class="btnmenu"><a href="#" title="">Матрасы</a></div>
    </div>
    <div class="btnmenuwrap2">
        <div class="btnmenu"><a href="#" title="">Топлеры</a></div>
    </div>
    <div class="btnmenuwrap3">
        <div class="btnmenu"><a href="#" title="">Детские матрасы</a></div>
    </div>
    <div class="btnmenuwrap4">
        <div class="btnmenu"><a href="#" title="">Кроватки манежки</a></div>
    </div>
    <div class="btnmenuwrap5">
        <div class="btnmenu"><a href="#" title="">Одеяла и подушки</a></div>
    </div>
    <div class="btnmenuwrap6">
        <div class="btnmenu"><a href="#" title="">Мягкая мебель</a></div>
    </div>
    
</div>
<!-- end btnmenucontainer -->




<div class="site-index">



    <div class="jumbotron">


        <h1>Congratulations!</h1>

        <p class="lead">You have successfully created your Yii-powered application.</p>

        <?php echo common\components\widgets\DbMenu::widget([
            'key'=>'frontend-index',
            'options'=>[
                'tag'=>'p'
            ]
        ]) ?>

    </div>

    <div class="body-content">

        <div class="row">
            <div class="col-lg-4">
                <h2>Heading</h2>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                <p><a class="btn btn-default" href="http://www.yiiframework.com/doc/">Yii Documentation &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <h2>Heading</h2>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                <p><a class="btn btn-default" href="http://www.yiiframework.com/forum/">Yii Forum &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <h2>Heading</h2>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                <p><a class="btn btn-default" href="http://www.yiiframework.com/extensions/">Yii Extensions &raquo;</a></p>
            </div>
        </div>

    </div>
</div>
