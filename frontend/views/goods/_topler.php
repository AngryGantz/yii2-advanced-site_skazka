<!-- begin gbox  -->
<div class="gbox">
    <hr>
<!--     <h1>
        <?php echo $value->name; ?>
    </h1>
 -->
    <!-- begin lblblock1  -->
    <div class="lblblock1">
       <p> <span class="titblue">Материал: &nbsp;</span>
        <span><?php echo $value->material; ?></span></p>
    </div>
    <!-- end lblblock1 -->
    <div class="clear"></div>
    <!-- begin lblblock2  -->
    <div class="lblblock2">
        Цена <span id="cst<?php echo $value->id; ?>"><?php echo $value->cost1; ?></span>тг. 
    </div>
    <!-- end lblblock2 -->
</div>
<!-- end gbox -->
