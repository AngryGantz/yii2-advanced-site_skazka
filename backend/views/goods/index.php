<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\GoodsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('common', 'Goods');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="goods-index">

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a(Yii::t('common', 'Create Goods'), ['create'], ['class' => 'btn btn-success']) ?>
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
            // 'note1:ntext',
            // 'note2:ntext',
            // 'pic2',
            // 'bl1:ntext',
            // 'bl1pic',
            // 'bl2:ntext',
            // 'bl2pic',
            // 'bl3:ntext',
            // 'bl3pic',
            // 'bl4:ntext',
            // 'bl4pic',
            // 'bl5:ntext',
            // 'bl5pic',
            // 'bl6:ntext',
            // 'bl6pic',
            // 'bl7:ntext',
            // 'bl7pic',
            // 'bl8:ntext',
            // 'bl8pic',
            // 'bl9:ntext',
            // 'bl9pic',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
