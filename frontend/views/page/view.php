<?php
/**
 * @var $this \yii\web\View
 * @var $model \common\models\Page
 */
$this->title = $model->title;
?>
<div class="content">
<!-- begin row (full wrap for 2-col content  -->
        <div class="row">
            <div class="col-lg-3">
                <?php include Yii::getAlias('@frontend/views/layouts/_left.php'); ?>                    
            </div>
            <!-- begin col-lg-8  -->
            <div class="col-lg-9">
			    <h1><?= $model->title ?></h1>
			    <?= $model->body ?>

<?php if ($slug=='contacts'): ?>
    
  <script src="http://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
  <script type="text/javascript">
var myMap;
 
// Дождёмся загрузки API и готовности DOM.
ymaps.ready(init);
function init () {
    // Создание экземпляра карты и его привязка к контейнеру с
    // заданным id ("map").
    myMap = new ymaps.Map('map', {
        // При инициализации карты обязательно нужно указать
        // её центр и коэффициент масштабирования.
        center: [43.257589,76.874035], 
        zoom: 17
    }),
      myGeoObject = new ymaps.GeoObject({
            // Описание геометрии.
            geometry: {
                type: "Point",
                coordinates: [43.257589,76.874035]
            },  
            // Свойства.
            properties: {
                // Контент метки.
                iconContent: 'Наш офис',
                hintContent: ''
            }
        }, {
            // Опции.
            // Иконка метки будет растягиваться под размер ее содержимого.
            preset: 'islands#blackStretchyIcon',
            // Метку можно перемещать.
            draggable: true
        });  
        myMap.geoObjects
        .add(myGeoObject);            
}
</script>
<div id="map"></div>   
<?php endif ?>



            </div>
            <!-- end col-lg-8 -->
        </div>
        <!-- end row (full wrap for 2-col content -->
</div>