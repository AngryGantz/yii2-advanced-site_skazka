<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Goods */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => $catname, 'url' => ['/goods/index', 'idcat'=>$model->idcat]];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="goods-view">

    

    <div class="row">
        <div class="col-lg-8">
            <img src="<?= $model->pic ?>" class="viewpic">
            <table class="viewtbl1">
                <tr class="viewtr1">
                    <td class="viewtd1"><?php if (!empty($model->bl1pic)) { ?><img src="<?= $model->bl1pic ?>" alt=""><?php } ?></td>
                    <td class="viewtd1"><?= $model->bl1 ?></td>
                    <td class="viewtd1"><?php if (!empty($model->bl2pic)) { ?><img src="<?= $model->bl2pic ?>" alt=""><?php } ?></td>
                    <td class="viewtd1"><?= $model->bl2 ?></td>
                    <td class="viewtd1"><?php if (!empty($model->bl3pic)) { ?><img src="<?= $model->bl3pic ?>" alt=""><?php } ?></td>
                    <td class="viewtd1"><?= $model->bl3 ?></td>
                </tr>
                <tr class="viewtr1">
                    <td class="viewtd1"><?php if (!empty($model->bl4pic)) { ?><img src="<?= $model->bl4pic ?>" alt=""><?php } ?></td>
                    <td class="viewtd1"><?= $model->bl4 ?></td>
                    <td class="viewtd1"><?php if (!empty($model->bl5pic)) { ?><img src="<?= $model->bl5pic ?>" alt=""><?php } ?></td>
                    <td class="viewtd1"><?= $model->bl5 ?></td>
                    <td class="viewtd1"><?php if (!empty($model->bl6pic)) { ?><img src="<?= $model->bl6pic ?>" alt=""><?php } ?></td>
                    <td class="viewtd1"><?= $model->bl6 ?></td>
                </tr>
                <tr class="viewtr1">
                    <td class="viewtd1"><?php if (!empty($model->bl7pic)) { ?><img src="<?= $model->bl7pic ?>" alt=""><?php } ?></td>
                    <td class="viewtd1"><?= $model->bl7 ?></td>
                    <td class="viewtd1"><?php if (!empty($model->bl8pic)) { ?><img src="<?= $model->bl8pic ?>" alt=""><?php } ?></td>
                    <td class="viewtd1"><?= $model->bl8 ?></td>
                    <td class="viewtd1"><?php if (!empty($model->bl9pic)) { ?><img src="<?= $model->bl9pic ?>" alt=""><?php } ?></td>
                    <td class="viewtd1"><?= $model->bl9 ?></td>
                </tr>
            </table>
        </div>    
        <div class="col-lg-4">
            <div class="rcol">

                <h1><?= Html::encode($this->title) ?></h1>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>
                    <?php $idcat=$model->idcat; 
                        if ($idcat==1) echo $this->render('//goods/_card', ['value' => $model,]); 
                        if ($idcat==2) echo $this->render('//goods/_card', ['value' => $model,]); 
                        if ($idcat==3) echo $this->render('//goods/_card', ['value' => $model,]); 
                        if ($idcat==4) echo $this->render('//goods/_topler', ['value' => $model,]); 
                        if ($idcat==5) echo $this->render('//goods/_child', ['value' => $model,]); 
                        $cats = array(6,7,8,9,10);
                        if (in_array($idcat, $cats)) echo $this->render('//goods/_other', ['value' => $model,]); 
                    ?>   
                    <div class="clear"></div>
                    <p>&nbsp;</p>
                    <p><?= $model->note1 ?></p>    
                    <p>&nbsp;</p>
                    <img src="<?= $model->pic2 ?>" class="viewpic2">
                    <p>&nbsp;</p>
                    <p><?= $model->note2 ?></p>    
                    <p>&nbsp;</p>
                    <?php echo '<td class="difftd"><button class="callorder viewbtn btn btn-danger btn-lg" data-articul="'.$model->name.'">Заказать</button></td>'; ?>
                    <div class="clear"></div>
            </div>
        </div>    
    </div>

</div>
