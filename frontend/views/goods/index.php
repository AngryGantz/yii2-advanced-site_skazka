<?php
use yii\helpers\Html;
use yii\grid\GridView;
use yii\web\Session;
use yii\bootstrap\ActiveForm;

/* @var $this yii\web\View */
/* @var $searchModel app\models\Goodssearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
$this->title = $catname;

if ($sort=='cost1') $msgbtn='цене';
if ($sort=='hard') $msgbtn='жесткости';
?>
<!-- Кнопка определения типа сортировки. По умолчанию по цене -->
<div class="btn-group">
  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Сортировка по <?php echo $msgbtn ?> <span class="caret"></span></button>
  <ul class="dropdown-menu" role="menu">
    <li><a href="<?php echo \Yii::$app->urlManager->createUrl(['goods/index', 'idcat' => $idcat , 'sort' => 'cost1']);  ?>">Сортировка по цене</a></li>    
    <li><a href="<?php echo \Yii::$app->urlManager->createUrl(['goods/index', 'idcat' => $idcat, 'sort' => 'hard']);  ?>">Сортировка по жесткости</a></li>
  </ul>
</div>
<?php


$this->params['breadcrumbs'][] = $this->title;
?>
<div class="goods-index">
<!--<h1><?= Html::encode($this->title) ?></h1>  -->
    <!-- begin row (full wrap for 2-col content  -->
    <div class="row">
        <!-- Левый сайдбар -->    
        <div class="col-lg-3">
            <?php include Yii::getAlias('@frontend/views/layouts/_left.php'); ?>                    
        </div>
        <!-- begin col-lg-8  -->
        <!-- Основной контент -->
        <div class="col-lg-9">
            <p class="titbread"> 
            <?php
               if ($idcat==1) echo '
                    ПРУЖИННЫЕ БОНЕЛЬ /
                    <a href="index?idcat=2" title="">НЕЗАВИСИМЫЕ ПРУЖИНЫ / </a>&nbsp;
                    <a href="index?idcat=3" title="">ЛАТЕКСНЫЕ И БЕСПРУЖИННЫЕ</a>';
               if ($idcat==2) echo '
                    НЕЗАВИСИМЫЕ ПРУЖИНЫ /
                    <a href="index?idcat=1" title="">ПРУЖИННЫЕ БОНЕЛЬ / </a>&nbsp;
                    <a href="index?idcat=3" title="">ЛАТЕКСНЫЕ И БЕСПРУЖИННЫЕ</a>';
               if ($idcat==3) echo '
                    ЛАТЕКСНЫЕ И БЕСПРУЖИННЫЕ /
                    <a href="index?idcat=1" title="">ПРУЖИННЫЕ БОНЕЛЬ / </a>&nbsp;
                    <a href="index?idcat=2" title="">НЕЗАВИСИМЫЕ ПРУЖИНЫ</a>';
                $cats = array(4, 5, 6, 7,8,9,10);
                if (in_array($idcat, $cats)) echo $catname;
             ?>   
            </p>
            <?php 
                if ($idcat==1) echo $this->render('//goods/_listcards', ['grp1' => $model,]); 
                if ($idcat==2) echo $this->render('//goods/_listcards', ['grp1' => $model,]); 
                if ($idcat==3) echo $this->render('//goods/_listcards', ['grp1' => $model,]); 
                if ($idcat==4) echo $this->render('//goods/_listtoplers', ['grp1' => $model,]); 
                if ($idcat==5) echo $this->render('//goods/_listchild', ['grp1' => $model,]); 
                $cats = array(6,7,8,9,10);
                if (in_array($idcat, $cats)) echo $this->render('//goods/_listother', ['grp1' => $model,]); 

            ?>
        </div>
        <!-- end col-lg-8 -->
    </div>
    <!-- end row (full wrap for 2-col content -->
</div>
