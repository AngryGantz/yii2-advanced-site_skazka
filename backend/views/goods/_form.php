<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Goods */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="goods-form">

    <?php $form = ActiveForm::begin(); ?>



    <?= $form->field($model, 'idcat')->dropDownList(\yii\helpers\ArrayHelper::map(
            $goodscat,
            'id',
            'name'
        ), ['prompt'=>'']) ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => 255]) ?>

<table class="">
    <tr>
        <td><?= $form->field($model, 'height')->textInput(['maxlength' => 255]) ?></td>
        <td><?= $form->field($model, 'hard')->textInput() ?></td>
        <td><?= $form->field($model, 'gload')->textInput() ?></td>
    </tr>
</table>

<table class="cost">
        <tr>
            <td><?= $form->field($model, 'cost1')->textInput() ?></td>
            <td><?= $form->field($model, 'cost2')->textInput() ?></td>
            <td><?= $form->field($model, 'cost3')->textInput() ?></td>
            <td><?= $form->field($model, 'cost4')->textInput() ?></td>
            <td><?= $form->field($model, 'cost5')->textInput() ?></td>
            <td><?= $form->field($model, 'cost6')->textInput() ?></td>
        </tr>
</table>    

    <?= $form->field($model, 'sostav')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'material')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'pic')->widget(\trntv\filekit\widget\SingleFileUpload::classname(), [
       'url'=>['/file-storage/upload'],
       'fileuploadOptions'=>[
                'maxFileSize'=>2000000 // 0.2 MiB
            ]        
    ]) ?>

    <?= $form->field($model, 'note1')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'note2')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'pic2')->widget(\trntv\filekit\widget\SingleFileUpload::classname(), [
       'url'=>['/file-storage/upload'],
       'fileuploadOptions'=>[
                'maxFileSize'=>2000000 // 0.2 MiB
            ]        
    ]) ?>


<table class="blk">
    <tr class="blktr">
        <td class="blktd">    <?= $form->field($model, 'bl1pic')->widget(\trntv\filekit\widget\SingleFileUpload::classname(), [
       'url'=>['/file-storage/upload'],
       'fileuploadOptions'=>[
                'maxFileSize'=>2000000 // 0.2 MiB
            ]        
    ]) ?>
</td>
        <td class="blktd">    <?= $form->field($model, 'bl1')->textarea(['rows' => 6]) ?></td>
    </tr>
    <tr class="blktr">
        <td class="blktd">    <?= $form->field($model, 'bl2pic')->widget(\trntv\filekit\widget\SingleFileUpload::classname(), [
       'url'=>['/file-storage/upload'],
       'fileuploadOptions'=>[
                'maxFileSize'=>2000000 // 0.2 MiB
            ]        
    ]) ?>
</td>
        <td class="blktd">    <?= $form->field($model, 'bl2')->textarea(['rows' => 6]) ?></td>
    </tr>
    <tr class="blktr">
        <td class="blktd">    <?= $form->field($model, 'bl3pic')->widget(\trntv\filekit\widget\SingleFileUpload::classname(), [
       'url'=>['/file-storage/upload'],
       'fileuploadOptions'=>[
                'maxFileSize'=>2000000 // 0.2 MiB
            ]        
    ]) ?>
</td>
        <td class="blktd">    <?= $form->field($model, 'bl3')->textarea(['rows' => 6]) ?></td>
    </tr>
    <tr class="blktr">
        <td class="blktd">    <?= $form->field($model, 'bl4pic')->widget(\trntv\filekit\widget\SingleFileUpload::classname(), [
       'url'=>['/file-storage/upload'],
       'fileuploadOptions'=>[
                'maxFileSize'=>2000000 // 0.2 MiB
            ]        
    ]) ?>
</td>
        <td class="blktd">    <?= $form->field($model, 'bl4')->textarea(['rows' => 6]) ?></td>
    </tr>
    <tr class="blktr">
        <td class="blktd">    <?= $form->field($model, 'bl5pic')->widget(\trntv\filekit\widget\SingleFileUpload::classname(), [
       'url'=>['/file-storage/upload'],
       'fileuploadOptions'=>[
                'maxFileSize'=>2000000 // 0.2 MiB
            ]        
    ]) ?>
</td>
        <td class="blktd">    <?= $form->field($model, 'bl5')->textarea(['rows' => 6]) ?></td>
    </tr>
    <tr class="blktr">
        <td class="blktd">    <?= $form->field($model, 'bl6pic')->widget(\trntv\filekit\widget\SingleFileUpload::classname(), [
       'url'=>['/file-storage/upload'],
       'fileuploadOptions'=>[
                'maxFileSize'=>2000000 // 0.2 MiB
            ]        
    ]) ?>

</td>
        <td class="blktd">    <?= $form->field($model, 'bl6')->textarea(['rows' => 6]) ?></td>
    </tr>
    <tr class="blktr">
        <td class="blktd">    <?= $form->field($model, 'bl7pic')->widget(\trntv\filekit\widget\SingleFileUpload::classname(), [
       'url'=>['/file-storage/upload'],
       'fileuploadOptions'=>[
                'maxFileSize'=>2000000 // 0.2 MiB
            ]        
    ]) ?>
</td>
        <td class="blktd">    <?= $form->field($model, 'bl7')->textarea(['rows' => 6]) ?></td>
    </tr>
    <tr class="blktr">
        <td class="blktd">    <?= $form->field($model, 'bl8pic')->widget(\trntv\filekit\widget\SingleFileUpload::classname(), [
       'url'=>['/file-storage/upload'],
       'fileuploadOptions'=>[
                'maxFileSize'=>2000000 // 0.2 MiB
            ]        
    ]) ?>
</td>
        <td class="blktd">    <?= $form->field($model, 'bl8')->textarea(['rows' => 6]) ?></td>
    </tr>
    <tr class="blktr">
        <td class="blktd">    <?= $form->field($model, 'bl9pic')->widget(\trntv\filekit\widget\SingleFileUpload::classname(), [
       'url'=>['/file-storage/upload'],
       'fileuploadOptions'=>[
                'maxFileSize'=>2000000 // 0.2 MiB
            ]        
    ]) ?>

</td>
        <td class="blktd">    <?= $form->field($model, 'bl9')->textarea(['rows' => 6]) ?></td>
    </tr>
</table>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('common', 'Create') : Yii::t('common', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>