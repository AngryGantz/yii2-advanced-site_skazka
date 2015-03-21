<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\GoodcatSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Категории товаров';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="goodscat-index">
    

    <div class="alert alert-danger">
        <strong>Внимание! Только для разработчиков! </strong>Предопределенные 10 категорий привязаны к логике проекта.
        Если вы добавите новую категорию. она нигде не проявится. Если вы удалите одну из предопределенных категорий,
        вы сломаете структуру сайта и получите ошибки выполнения на ряде страниц. Вы должны очень хорошо понимать,
        что вы делаете, изменяя или удаляя предопределенные категории.
    

    </div>
    
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Создать категорию', ['create'], ['class' => 'btn btn-success']) ?>
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
