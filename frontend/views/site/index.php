<?php
use yii\bootstrap\ActiveForm;
use yii\helpers\Html;
use yii\bootstrap\ButtonDropdown;
/* @var $this yii\web\View */
/* @var $form yii\widgets\ActiveForm */
/* @var $model \frontend\models\ContactForm */


$this->title = Yii::$app->name;?>
<div class="carouselwrap">
    <?= \common\components\widgets\DbCarousel::widget([
            'key'=>
    'index'
        ]) ?>
</div>
<div class="container">
<!-- <a class="btn btn-lg btn-success callorder" data-userid="22" >Change password</a> -->

    <!-- begin btnmenucontainer  -->
    <div class="btnmenucontainer">
        <div class="btnmenuwrap1">
            <div class="btnmenu">
                <a href="#" title="">Матрасы</a>
            </div>
        </div>
        <div class="btnmenuwrap2">
            <div class="btnmenu">
                <a href="#" title="">Топлеры</a>
            </div>
        </div>
        <div class="btnmenuwrap3">
            <div class="btnmenu">
                <a href="#" title="">Детские матрасы</a>
            </div>
        </div>
        <div class="btnmenuwrap4">
            <div class="btnmenu">
                <a href="#" title="">Кроватки манежки</a>
            </div>
        </div>
        <div class="btnmenuwrap5">
            <div class="btnmenu">
                <a href="#" title="">Одеяла и подушки</a>
            </div>
        </div>
        <div class="btnmenuwrap6">
            <div class="btnmenu">
                <a href="#" title="">Мягкая мебель</a>
            </div>
        </div>

    </div>
    <!-- end btnmenucontainer -->

    <div class="site-index">
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <div class="panel panel-primary panel-index">
              <div class="panel-heading"><h3>Пружинные Бонель</h3></div>
              <div class="panel-body">
                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
              </div>
        </div>



            <?php
                foreach ($grp1 as $item => $value) {
                    ?>
                        <!-- begin gbox  -->
                        <div class="gbox">
                            <hr>
                            <h1>
                                <?php echo $value->name; ?>
                            </h1>

                            <img class="pic" src="<?php echo $value->pic; ?>" alt="">
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
                                    class="form-control btn btn-info btn-xs dropdown-toggle" data-toggle="dropdown">
                                    160x180<span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu " id="drpdwn<?php echo $value->id; ?>"  role="menu">
                                    <li class="ddmm">160x180 <span class="hidn cst2" data-cost="<?php echo $value->cost1; ?>" data-idn="<?php echo $value->id; ?>" ></span></li>
                                    <li class="ddmm">180x220 <span class="hidn cst2" data-cost="<?php echo $value->cost2; ?>" data-idn="<?php echo $value->id; ?>" ></span></li>
                                    <li class="ddmm">200x240<span class="hidn cst2" data-cost="<?php echo $value->cost3;  ?>" data-idn="<?php echo $value->id; ?>" ></span> </li>
                                    <li class="ddmm">220x260<span class="hidn cst2" data-cost="<?php echo $value->cost4; ?>" data-idn="<?php echo $value->id; ?>" ></span></li>
                                </ul>
                            </div>
                               &nbsp;&nbsp;&nbsp;&nbsp; <span id="cst<?php echo $value->id; ?>"><?php echo $value->cost1; ?></span>тг.
                            </div>
                            <!-- end lblblock2 -->
                        </div>
                        <!-- end gbox -->
                    <?php
                }?>
                <div class=" arrow"></div>                
                <div class="clear"></div>
        
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>

        <div class="panel panel-primary panel-index">
              <div class="panel-heading"><h3>Независимые пружины</h3></div>
              <div class="panel-body">
                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
              </div>
        </div>


            <?php
                foreach ($grp2 as $item => $value) {
                    ?>
                        <!-- begin gbox  -->
                        <div class="gbox">
                            <hr>
                            <h1>
                                <?php echo $value->name; ?>
                            </h1>

                            <img class="pic" src="<?php echo $value->pic; ?>" alt="">
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
                                    class="form-control btn btn-info btn-xs dropdown-toggle" data-toggle="dropdown">
                                    160x180<span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu " id="drpdwn<?php echo $value->id; ?>"  role="menu">
                                    <li class="ddmm">160x180 <span class="hidn cst2" data-cost="<?php echo $value->cost1; ?>" data-idn="<?php echo $value->id; ?>" ></span></li>
                                    <li class="ddmm">180x220 <span class="hidn cst2" data-cost="<?php echo $value->cost2; ?>" data-idn="<?php echo $value->id; ?>" ></span></li>
                                    <li class="ddmm">200x240<span class="hidn cst2" data-cost="<?php echo $value->cost3;  ?>" data-idn="<?php echo $value->id; ?>" ></span> </li>
                                    <li class="ddmm">220x260<span class="hidn cst2" data-cost="<?php echo $value->cost4; ?>" data-idn="<?php echo $value->id; ?>" ></span></li>
                                </ul>
                            </div>
                               &nbsp;&nbsp;&nbsp;&nbsp; <span id="cst<?php echo $value->id; ?>"><?php echo $value->cost1; ?></span>тг.
                            </div>
                            <!-- end lblblock2 -->
                        </div>
                        <!-- end gbox -->
                    <?php
                }?>
                <div class=" arrow">
                    <a href="#" title=""></a>
                </div>                
        
        <p>&nbsp;</p>
     

        <div class="jumbotron">


            <h1>Мы предлагаем качество!</h1>

            <p class="lead">Только высшее качество и доступные цены! </p>

            <?php echo common\components\widgets\DbMenu::widget([
            'key'=>
            'frontend-index',
            'options'=>[
                'tag'=>'p'
            ]
        ]) ?>
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
    </div>
</div>



