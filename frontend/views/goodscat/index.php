<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\GoodscatSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Goodscats';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="goodscat-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Goodscat', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'name',
            'note:ntext',
            'pic',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
