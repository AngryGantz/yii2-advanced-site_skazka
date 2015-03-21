<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel \backend\models\search\PageSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('backend', 'Pages');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="page-index">
    <div class="alert alert-danger">
        <strong>Внимание! Создание и удаление только для разработчиков! </strong>Предопределенные 6 страниц привязаны к логике проекта.
        Если вы добавите новую страницу. она нигде не проявится. Если вы удалите одну из предопределенных страниц,
        вы сломаете структуру сайта и получите ошибки выполнения на ряде страниц. Вы должны очень хорошо понимать,
        что вы делаете, удаляя предопределенные страницы.
    </div>
    <div class="alert alert-success">
        Изменять информацию на предопределенных страницах можно в любое время без последствий для логики проекта.
        При этом нельзя менять поле "ЧПУ". К этому полю привязаны ссылки меню сайта. Если вы измените это поле, ссылки
        меню станут нерабочими.
    </div>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
    <p>
        <?= Html::a(Yii::t('backend', 'Create {modelClass}', [
    'modelClass' => 'Page',
]), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            'id',
            'title',
            'slug',
            'status',

            [
                'class' => 'yii\grid\ActionColumn',
                'template'=>'{update} {delete}'
            ],
        ],
    ]); ?>

</div>
