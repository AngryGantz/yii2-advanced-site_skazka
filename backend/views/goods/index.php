<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\GoodsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('backend', 'Goods');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="goods-index">

<!--     <h1><?= Html::encode($this->title) ?></h1> -->
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a(
            Yii::t('backend', 'Create {modelClass}', ['modelClass' => 'Goods']),
            ['create'],
            ['class' => 'btn btn-success']) ?>
    </p>


    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'idcat',
            'name',
            'height',
            'hard',
            // 'gload',
            // 'cost1',
            // 'cost2',
            // 'cost3',
            // 'cost4',
            // 'cost5',
            // 'cost6',
            // 'sostav',
            // 'material',
            // 'pic',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
