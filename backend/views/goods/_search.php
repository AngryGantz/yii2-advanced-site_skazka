<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\GoodsSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="goods-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'idcat') ?>

    <?= $form->field($model, 'name') ?>

    <?= $form->field($model, 'height') ?>

    <?= $form->field($model, 'hard') ?>

    <?php // echo $form->field($model, 'gload') ?>

    <?php // echo $form->field($model, 'cost1') ?>

    <?php // echo $form->field($model, 'cost2') ?>

    <?php // echo $form->field($model, 'cost3') ?>

    <?php // echo $form->field($model, 'cost4') ?>

    <?php // echo $form->field($model, 'cost5') ?>

    <?php // echo $form->field($model, 'cost6') ?>

    <?php // echo $form->field($model, 'sostav') ?>

    <?php // echo $form->field($model, 'material') ?>

    <?php // echo $form->field($model, 'pic') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
