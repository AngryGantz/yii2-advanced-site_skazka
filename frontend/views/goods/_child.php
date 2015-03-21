    <!-- begin gbox  -->
    <div class="gbox">
        <hr>
        <h1>
            <?php echo $value->name; ?>
        </h1>
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

