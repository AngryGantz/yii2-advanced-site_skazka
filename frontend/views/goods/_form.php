<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Goods */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="goods-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'idcat')->textInput() ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'height')->textInput() ?>

    <?= $form->field($model, 'hard')->textInput() ?>

    <?= $form->field($model, 'gload')->textInput() ?>

    <?= $form->field($model, 'cost1')->textInput() ?>

    <?= $form->field($model, 'cost2')->textInput() ?>

    <?= $form->field($model, 'cost3')->textInput() ?>

    <?= $form->field($model, 'cost4')->textInput() ?>

    <?= $form->field($model, 'cost5')->textInput() ?>

    <?= $form->field($model, 'cost6')->textInput() ?>

    <?= $form->field($model, 'sostav')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'material')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'pic')->textInput(['maxlength' => 255]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
