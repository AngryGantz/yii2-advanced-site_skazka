

<?php
/*
require "admin/connect.php";
	$queryl="SELECT * FROM cat ORDER BY id";
  	$resultl = mysql_query($queryl);
  	while($catsl=mysql_fetch_array($resultl)) {
  		echo'<li class="leftlimnu">';
  			echo'<a href="index.php?idcat='.$catsl['id'].'">';
  			echo $catsl['name'].'</a></li>';
	}
*/
?>
<!-- begin leftwrap  -->
<div class="leftwrap pull-left">
	
	<ul class="leftmnuul">
		<li class="leftlimnu"><a href="<?php echo \Yii::$app->urlManager->createUrl(['goods/index', 'idcat' => '1']);  ?>" title="">Матрасы</a></li>
		<li class="leftlimnu"><a href="<?php echo \Yii::$app->urlManager->createUrl(['goods/index', 'idcat' => '4']);  ?>" title="">Топлеры</a></li>
		<li class="leftlimnu"><a href="<?php echo \Yii::$app->urlManager->createUrl(['goods/index', 'idcat' => '5']);  ?>" title="">Детские матрасы</a></li>
		<li class="leftlimnu"><a href="<?php echo \Yii::$app->urlManager->createUrl(['goods/index', 'idcat' => '6']);  ?>" title="">Кроватки-манежи</a></li>
		<li class="leftlimnu"><a href="<?php echo \Yii::$app->urlManager->createUrl(['goods/index', 'idcat' => '7']);  ?>" title="">Одеяла и подушки</a></li>
		<li class="leftlimnu"><a href="<?php echo \Yii::$app->urlManager->createUrl(['goods/index', 'idcat' => '8']);  ?>" title="">Мягкая мебель</a></li>
		<li class="leftlimnu"><a href="<?php echo \Yii::$app->urlManager->createUrl(['goods/index', 'idcat' => '9']);  ?>" title="">Кровати</a></li>
		<li class="leftlimnu"><a href="<?php echo \Yii::$app->urlManager->createUrl(['goods/index', 'idcat' => '10']);  ?>" title="">Ткани</a></li>
		<!-- <li class="leftlimnu"><a href="index.php?idcat=999999" title="">Все</a></li> -->
	</ul>
	<img class="points" src="/img/points.png" alt="">
	<a class="diffleft" href="<?php echo \Yii::$app->urlManager->createUrl(['goods/diff']);  ?>" title="">сравнить выбранные</a>
	<img class="points" src="/img/points.png" alt="">
	<ul class="lm">
		<li><a href="<?php echo \Yii::$app->urlManager->createUrl(['/page/view', 'slug'=>'about']);  ?>" title="">О компании</a></li>
		<li><a href="<?php echo \Yii::$app->urlManager->createUrl(['/page/view', 'slug'=>'payment']);  ?>" title="">Оплата и доставка</a></li>
		<li><a href="<?php echo \Yii::$app->urlManager->createUrl(['/page/view', 'slug'=>'select']);?>" title="">Как выбрать матрас</a></li>
		<li><a href="<?php echo \Yii::$app->urlManager->createUrl(['/page/view', 'slug'=>'novelty']); ?>" title="">Новинки</a></li>
		<li><a href="<?php echo \Yii::$app->urlManager->createUrl(['/site/contact']);  ?>" title="">Контакты</a></li>
	</ul>
	<img class="points" src="/img/points.png" alt="">
	<div class="leftcall">
		<a name="order"></a>
		<p class="titl">Заказать звонок</p>
		<p class="desc">Наши специалисты помогут вам с выбором</p>
			<div class="frm">
				<input id="user_name" type="text" class="inp1" size="10" name="username" value="Ваше имя">
				<input id="user_email" type="text" class="inp2" size="10" name="phone" value="Телефон" >
				<input id="btn_submit" type="submit" class="btn" name="oreder" value="Сделать заказ">
				<input id="text_comment" type="hidden" name="id" value="Общий заказ">
			</div>
	</div>
	<!-- <div class="leftplacehold"></div> -->

</div>
<!-- end leftwrap -->
