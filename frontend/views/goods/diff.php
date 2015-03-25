<?php
use yii\bootstrap\ActiveForm;
use yii\helpers\Html;
use yii\bootstrap\ButtonDropdown;
use common\models\Goods;
/* @var $this yii\web\View */
/* @var $form yii\widgets\ActiveForm */
/* @var $model \frontend\models\ContactForm */

?>
<p>&nbsp;</p>
<p>&nbsp;</p>
<?php echo $this->render('//layouts/_btnmenu'); ?>

<div class="container">
<!-- <a class="btn btn-lg btn-success callorder" data-userid="22" >Change password</a> -->
    <div class="site-index">
        <!-- begin row (full wrap for 2-col content  -->
        <div class="row">
            <div class="col-lg-3">
                <?php 
                    // include Yii::getAlias('@frontend/views/layouts/_left.php'); 
                ?>
            </div>
            <!-- begin col-lg-12  -->
            <div class="col-lg-12">
               <?php 
                    // include '_homecontent.php'; 
               ?> 
               <!-- begin difftblwrap  -->
               <div class="difftblwrap">
                   
                <table class="difftbl">
                    <tr class="difftr">
                        <td class="difftd">Наименование</td>
                        <?php foreach ($model as $item) {
                            echo'<td class="difftd"><span class="difftitle">'.$item->name.'</span> <img src="'.$item->pic.'" alt="" class="diffpic"></td>';
                        }?>
                        
                    </tr>
                    <tr class="difftr">
                        <td class="difftd">Тип</td>
                        <?php foreach ($model as $item) {
                            $catname=Goods::getCatnamebyid($item->idcat);
                            echo'<td class="difftd">'.$catname.'</td>';
                        }?>
                    </tr>
                    <tr class="difftr">
                        <td class="difftd">Высота</td>
                        <?php foreach ($model as $item) {
                           echo'<td class="difftd">'.$item->height.'</td>'; 
                        }?>
                    </tr>
                    <tr class="difftr">
                        <td class="difftd">Жесткость</td>
                        <?php foreach ($model as $item) {
                           echo'<td class="difftd">'.$item->hard.'</td>';
                        }?>
                    </tr>
                    <tr class="difftr">
                        <td class="difftd">Нагрузка</td>
                        <?php foreach ($model as $item) {
                           echo'<td class="difftd">'.$item->gload.'кг.</td>';
                        }?>
                    </tr>
                    <tr class="difftr">
                        <td class="difftd">Стоимость</td>
                        <?php foreach ($model as $item) {
                           echo'<td class="difftd">от '.$item->cost1.'тг.</td>'; 
                        }?>
                    </tr>
                    <tr class="difftr">
                        <td class="difftd">.</td>
                        <?php foreach ($model as $item) {
                            echo'<td class="difftd"><button class="callorder btn btn-danger" data-articul="'.$item->name.'">Заказать</button></td>';
                        }?>
                    </tr>
                </table>
               </div> 
               <!-- end difftblwrap -->

            </div>
            <!-- end col-lg-12 -->
        </div>
        <!-- end row (full wrap for 2-col content -->

        
    </div>
    <!-- end site-index -->
</div>



