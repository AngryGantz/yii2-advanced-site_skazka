        <p class="titbread"> 
            <img src="<?php echo  Yii::getAlias('@web').'/img/arrow1.png' ?>" alt="">    
            ПРУЖИННЫЕ БОНЕЛЬ     
        </p>
        <?php echo $this->render('//goods/_listcards', ['grp1' => $grp1,]); ?>
        <a href="<?php echo \Yii::$app->urlManager->createUrl(['goods/index', 'idcat' => '1']);  ?>" title=""><div class=" arrow"></div></a>
        <div class="clear"></div>
        <!-- <img src="<?php echo  Yii::getAlias('@web').'/img/arrow2.png' ?>" alt="">     -->
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p class="titbread"> 
            <img src="<?php echo  Yii::getAlias('@web').'/img/arrow1.png' ?>" alt="">    
            НЕЗАВИСИМЫЕ ПРУЖИНЫ    
        </p>
        <?php echo $this->render('//goods/_listcards', ['grp1' => $grp2,]); ?>        
        <a href="<?php echo \Yii::$app->urlManager->createUrl(['goods/index', 'idcat' => '2']);  ?>" title=""><div class=" arrow"></div></a>
        <div class="clear"></div>

        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p class="titbread"> 
            <img src="<?php echo  Yii::getAlias('@web').'/img/arrow1.png' ?>" alt="">    
            ЛАТЕКСНЫЕ И БЕСПРУЖИННЫЕ   
        </p>
        <?php echo $this->render('//goods/_listcards', ['grp1' => $grp3,]); ?>        
         <a href="<?php echo \Yii::$app->urlManager->createUrl(['goods/index', 'idcat' => '3']);  ?>" title=""><div class=" arrow"></div></a>
        <div class="clear"></div>

        <div class="jumbotron">
        <p>&nbsp;</p>
        <h1>Надежная репутация, настоящее качество!</h1>
        <p class="lead">Только высшее качество и доступные цены! </p>
        <?php 
                // echo common\components\widgets\DbMenu::widget([
                // 'key'=>
                // 'frontend-index',
                // 'options'=>[
                //     'tag'=>'p'
                //     ]
                // ]) 
        ?>
        </div>
        <div class="body-content">
            <div class="row">
                <div class="col-lg-4">
                    <h2>Сказочный сон</h2>
                    <p>
                       Сон необходим человеку на протяжении всей его жизни. Сон одна из важнейших потребностей, как пища и вода. Человеку необходим сон, чтобы физически и душевно восстановиться. Однако, не каждая спальная система может гарантировать крепкий и здоровый сон. Спокойный и глубокий сон, обеспеченный индивидуально подобранной спальной системой, заметно улучшит самочувствие человека. Таким образом, качество нашего сна должно беспокоить нас так же, как и сбалансированное и здоровое питание.
                    </p>
                    <p>
                        <a class="btn btn-default" href="#">Читать полностью &raquo;</a>
                    </p>
                </div>
                <div class="col-lg-4">
                    <h2>Ещё Для Сео</h2>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.
                                        ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.
                    </p>
                    <p>
                        <a class="btn btn-default" href="http://www.yiiframework.com/forum/">Читать полностью &raquo;</a>
                    </p>
                </div>
                <div class="col-lg-4">
                    <h2>Продукция</h2>

                    <p>
                   Все выпускаемые матрасы соответствуют нормам и стандартам качества, экологически чисты и безопасны. Мы уверены, что изготовленные нами недорогие матрасы доставят Вам удовольствие в использовании.

                    Девиз компании – НАДЕЖНАЯ РЕПУТАЦИЯ, НАСТОЯЩЕЕ КАЧЕСТВО.

                    Для изготовления подходящей Вам по цене и составу модели матраса фабрика предлагает натуральные и искусственные материалы, которые используют ортопедические производства всего мира: кокосовый лист с латексной пропиткой, натуральный и искусственный латекс....
                    </p>

                    <p>
                        <a class="btn btn-default" href="http://www.yiiframework.com/extensions/">Читать полностью &raquo;</a>
                    </p>
                </div>
            </div>

        </div>