<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\Goodscat */

$this->title = 'Create Goodscat';
$this->params['breadcrumbs'][] = ['label' => 'Goodscats', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="goodscat-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
