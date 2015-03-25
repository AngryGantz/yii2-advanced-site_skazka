<!-- begin gbox  -->
<div class="gbox">
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
        Цена &nbsp;

    <div class="btn-group">
        <button type="button" 
            id="btn<?php echo $value->id; ?>"
            class="form-control btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
            80x200<span class="caret"></span>
        </button>
        <ul class="dropdown-menu " id="drpdwn<?php echo $value->id; ?>"  role="menu">
            <li class="ddmm">80x200 <span class="hidn cst2" data-cost="<?php echo $value->cost1; ?>" data-idn="<?php echo $value->id; ?>" ></span></li>
            <li class="ddmm">90x200 <span class="hidn cst2" data-cost="<?php echo $value->cost2; ?>" data-idn="<?php echo $value->id; ?>" ></span></li>
            <li class="ddmm">120x200<span class="hidn cst2" data-cost="<?php echo $value->cost3;  ?>" data-idn="<?php echo $value->id; ?>" ></span> </li>
            <li class="ddmm">140x200<span class="hidn cst2" data-cost="<?php echo $value->cost4; ?>" data-idn="<?php echo $value->id; ?>" ></span></li>
            <li class="ddmm">160x200<span class="hidn cst2" data-cost="<?php echo $value->cost5; ?>" data-idn="<?php echo $value->id; ?>" ></span></li>            
            <li class="ddmm">180x200<span class="hidn cst2" data-cost="<?php echo $value->cost6; ?>" data-idn="<?php echo $value->id; ?>" ></span></li>            
        </ul>
    </div>
       &nbsp;&nbsp;&nbsp;&nbsp; <span id="cst<?php echo $value->id; ?>"><?php echo $value->cost1; ?></span>тг.
    </div>
    <!-- end lblblock2 -->
    <div class="lincdiffwrap">
        <span class="paradddiff"> 
            <a class="adddiff" 
               data-userid="<?php echo $value->id; ?>" 
               data-url="<?php echo Yii::getAlias('@frontend/views/goods/addtodiff'); ?>" 
               href="addtodiff" title="">Добавить для сравнения</a>
        </span>
    </div>
</div>
<!-- end gbox -->