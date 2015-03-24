<?php
 use yii\bootstrap\ActiveForm;
 use yii\helpers\Html;
 use himiklab\thumbnail\EasyThumbnailImage;

foreach ($grp1 as $item => $value) {
?>
    <!-- begin gbox  -->
    <div class="gbox">
        <hr>
        <h1>
            <?php echo $value->name; ?>
        </h1>

        <a href="<?php echo \Yii::$app->urlManager->createUrl(['goods/view', 'id' => $value->id]);  ?>" title="">
            <?php 
                $urlarray=parse_url($value->pic);
                $fp=Yii::getAlias('@storage' . $urlarray['path']);
                echo EasyThumbnailImage::thumbnailImg(
                    $fp,
                    277,
                    200,
                    EasyThumbnailImage::THUMBNAIL_OUTBOUND,
                    ['alt' => $value->pic]
                );
            ?>
        </a>
        <!-- begin lblblock1  -->
        <div class="lblblock1">
            <div class="titlbl">Высота</div>
            <div class="titlbl">Жесткость</div>
            <div class="titlbllast">Нагрузка</div>
            <div class="val"><?php echo $value->height; ?></div>
            <div class="val"><img src="/img/hard<?php echo $value->hard; ?>.png" alt=""></div>
            <div class="val"><?php echo $value->gload; ?>кг.</div>
        </div>
        <!-- end lblblock1 -->
        <div class="clear"></div>
        <!-- begin lblblock2  -->
        <div class="lblblock2">
            Цена от <span id="cst<?php echo $value->id; ?>"><?php echo $value->cost1; ?></span>тг. 
        </div>
        <!-- end lblblock2 -->
    </div>
    <!-- end gbox -->
    <?php
}?>
<!-- <div class=" arrow"></div>                 -->
<div class="clear"></div>