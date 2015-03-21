<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Goods */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('common', 'Goods'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="goods-view">


    <p>
        <?= Html::a(Yii::t('common', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('common', 'Delete'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('common', 'Are you sure you want to delete this item?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'idcat',
            'name',
            'height',
            'hard',
            'gload',
            'cost1',
            'cost2',
            'cost3',
            'cost4',
            'cost5',
            'cost6',
            'sostav',
            'material',
            'pic',
            'note1:ntext',
            'note2:ntext',
            'pic2',
            'bl1:ntext',
            'bl1pic',
            'bl2:ntext',
            'bl2pic',
            'bl3:ntext',
            'bl3pic',
            'bl4:ntext',
            'bl4pic',
            'bl5:ntext',
            'bl5pic',
            'bl6:ntext',
            'bl6pic',
            'bl7:ntext',
            'bl7pic',
            'bl8:ntext',
            'bl8pic',
            'bl9:ntext',
            'bl9pic',
        ],
    ]) ?>

</div>
