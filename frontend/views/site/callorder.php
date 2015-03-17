<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
/**
 * @var yii\web\View $this
 * @var app\models\gbUser $model
 * @var yii\widgets\ActiveForm $form
 */
?>

<div class="gb-user-form">

    <?php $form = ActiveForm::begin(['options' => ['class' => 'update-password-form']]); ?>


<?= $form->field($model, 'name', 
	[	
		'template'=>' <div class="input-group"><span class="input-group-addon">
		<span class="glyphicon glyphicon-user"></span></span>{input}</div>{error}'
	])->textInput(['placeholder' => $model->getAttributeLabel( 'name' )]) 
?>

<?= $form->field($model, 'phone', 
	[	
		'template'=>' <div class="input-group"><span class="input-group-addon">
		<span class="glyphicon glyphicon-earphone"></span></span>{input}</div>{error}'
	])->textInput(['placeholder' => $model->getAttributeLabel( 'phone' )]) 
?>

   
    <?= Html::activeHiddenInput($model, 'id') ?>


    <div class="form-group text-right">
        <?= Html::submitButton('Заказать', ['class' => 'btn btn-primary btn-update-password']) ?>
        <button type="button" class="btn btn-default" data-dismiss="modal">Закрыть</button>
    </div>

    <?php ActiveForm::end(); ?>


 </div>







