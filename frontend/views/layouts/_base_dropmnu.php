<?php
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;

/* @var $this \yii\web\View */
/* @var $content string */

\frontend\assets\FrontendAsset::register($this);
$this->registerJsFile(
    'assets/js/co.js', ['depends' => [
'yii\web\YiiAsset',
'yii\bootstrap\BootstrapAsset'],
]);




?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
    <?= Html::csrfMetaTags() ?>
</head>
<body>
<?php $this->beginBody() ?>

    <div class="wrap">
        <?php include "_top.php" ?>
        <?php
        NavBar::begin([
            // 'brandLabel' => Yii::$app->name,
            // 'brandUrl' => Yii::$app->homeUrl,
            'brandLabel' => '<img src="/img/logosm.png" alt="">',
            'options' => [
                'class' => 'navbar-inverse navbar-fixed-top',
            ],
        ]);
        echo Nav::widget([
            'options' => ['class' => 'navbar-nav navbar-right'],
            'items' => [
                ['label' => Yii::t('frontend', 'Home'), 'url' => ['/site/index']],
                ['label' => Yii::t('frontend', 'About'), 'url' => ['/page/view', 'slug'=>'about']],
                ['label' => Yii::t('frontend', 'Payment and delivery'), 'url' => ['/page/view', 'slug'=>'payment']],
                ['label' => Yii::t('frontend', 'Selection of mattress'), 'url' => ['/page/view', 'slug'=>'select']],
                ['label' => Yii::t('frontend', 'Novelty'), 'url' => ['/page/view', 'slug'=>'novelty']],
                ['label' => Yii::t('frontend', 'Contacts'), 'url' => ['/page/view', 'slug'=>'contacts']],
                [
                    'label' => Yii::t('frontend', 'CallOrder'), 
                    'url' => ['callorder', 'slug'=>'callorder'], 
                    'options' => ['class' => 'callorder', 'data-userid'=>"22"]
                ],

                // ['label' => Yii::t('frontend', 'Articles'), 'url' => ['/article/index']],
                // ['label' => Yii::t('frontend', 'Contact'), 'url' => ['/site/contact']],
                // ['label' => Yii::t('frontend', 'Signup'), 'url' => ['/user/sign-in/signup'], 'visible'=>Yii::$app->user->isGuest],
                // ['label' => Yii::t('frontend', 'Login'), 'url' => ['/user/sign-in/login'], 'visible'=>Yii::$app->user->isGuest],
                // [
                //     'label' => Yii::$app->user->isGuest ? '' : Yii::$app->user->identity->getPublicIdentity(),
                //     'visible'=>!Yii::$app->user->isGuest,
                //     'items'=>[
                //         [
                //             'label' => Yii::t('frontend', 'Account'),
                //             'url' => ['/user/default/index']
                //         ],
                //         [
                //             'label' => Yii::t('frontend', 'Profile'),
                //             'url' => ['/user/default/profile']
                //         ],
                //         [
                //             'label' => Yii::t('frontend', 'Backend'),
                //             'url' => Yii::getAlias('@backendUrl'),
                //             'visible'=>Yii::$app->user->can('manager')
                //         ],
                //         [
                //             'label' => Yii::t('frontend', 'Logout'),
                //             'url' => ['/user/sign-in/logout'],
                //             'linkOptions' => ['data-method' => 'post']
                //         ]
                //     ]
                // ],
                // [
                //     'label'=>Yii::t('frontend', 'Language'),
                //     'items'=>array_map(function ($code) {
                //         return [
                //             'label' => Yii::$app->params['availableLocales'][$code],
                //             'url' => ['/site/set-locale', 'locale'=>$code],
                //             'active' => Yii::$app->language === $code
                //         ];
                //     }, array_keys(Yii::$app->params['availableLocales']))
                // ]
            ]
        ]);
        NavBar::end();
        ?>

        <?= $content ?>

    </div>

    <footer class="footer">
        <div class="container">
            <p class="pull-left">&copy; My Company <?= date('Y') ?></p>
            <p class="pull-right"><?= Yii::powered() ?></p>
        </div>
    </footer>

<?php $this->endBody() ?>
<!-- Modal -->
  <div class="modal fade" id="my-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
          <h4 class="modal-title">Заказ звонка</h4>
          Наши специалисты помогут вам с выбором
        </div>
        <div class="modal-body">
          ...
        </div>
        <div class="modal-footer">
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
  

</body>
</html>
<?php $this->endPage() ?>
