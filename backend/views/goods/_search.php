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

    <?php // echo $form->field($model, 'note1') ?>

    <?php // echo $form->field($model, 'note2') ?>

    <?php // echo $form->field($model, 'pic2') ?>

    <?php // echo $form->field($model, 'bl1') ?>

    <?php // echo $form->field($model, 'bl1pic') ?>

    <?php // echo $form->field($model, 'bl2') ?>

    <?php // echo $form->field($model, 'bl2pic') ?>

    <?php // echo $form->field($model, 'bl3') ?>

    <?php // echo $form->field($model, 'bl3pic') ?>

    <?php // echo $form->field($model, 'bl4') ?>

    <?php // echo $form->field($model, 'bl4pic') ?>

    <?php // echo $form->field($model, 'bl5') ?>

    <?php // echo $form->field($model, 'bl5pic') ?>

    <?php // echo $form->field($model, 'bl6') ?>

    <?php // echo $form->field($model, 'bl6pic') ?>

    <?php // echo $form->field($model, 'bl7') ?>

    <?php // echo $form->field($model, 'bl7pic') ?>

    <?php // echo $form->field($model, 'bl8') ?>

    <?php // echo $form->field($model, 'bl8pic') ?>

    <?php // echo $form->field($model, 'bl9') ?>

    <?php // echo $form->field($model, 'bl9pic') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('common', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('common', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
