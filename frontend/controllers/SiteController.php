<?php
namespace frontend\controllers;

use Yii;
use frontend\models\ContactForm;
use frontend\models\CallOrderForm;
use common\models\Goods;
use yii\web\Controller;

/**
 * Site controller
 */
class SiteController extends Controller
{

    public $layout = 'home';
    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction'
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null
            ],
            'set-locale'=>[
                'class'=>'common\components\action\SetLocaleAction',
                'locales'=>array_keys(Yii::$app->params['availableLocales'])
            ]
        ];
    }

    public function actionIndex()
    {
        $l=3;
        $grp1=Goods::find()->where(['idcat' => 1])->limit($l)->all();
        $grp2=Goods::find()->where(['idcat' => 2])->limit($l)->all();
        $grp3=Goods::find()->where(['idcat' => 3])->limit($l)->all();
        return $this->render('index', 
            [
                'grp1'=>$grp1,
                'grp2'=>$grp2,
                'grp3'=>$grp3,
            ]);
    }

    public function actionContact()
    {
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post())) {
            if ($model->contact(Yii::$app->params['adminEmail'])) {
                Yii::$app->getSession()->setFlash('alert', [
                    'body'=>Yii::t('frontend', 'Thank you for contacting us. We will respond to you as soon as possible.'),
                    'options'=>['class'=>'alert-success']
                ]);
                return $this->refresh();
            } else {
                Yii::$app->getSession()->setFlash('alert', [
                    'body'=>\Yii::t('frontend', 'There was an error sending email.'),
                    'options'=>['class'=>'alert-danger']
                ]);
            }
        }

        return $this->render('contact', [
            'model' => $model
        ]);
    }

    public function actionCallorder($articul)
            {
                $model = new CallOrderForm();
                $model->goodsarticul =$articul;
                return $this->renderPartial('callorder', [
                    'model' => $model,
                ]);
            }
             
    public function actionSubmitcallorder()
            {
                $model = new CallOrderForm();
                // $model->load(Yii::$app->request->post());
                 
                if ($model->load(Yii::$app->request->post()) && $model->validate(null, false)) {
                    if ($model->contact(Yii::$app->params['adminEmail'])) {

                    $success=true;
                    return json_encode($success);


                        // Yii::$app->getSession()->setFlash('alert', [
                        //     'body'=>Yii::t('frontend', 'Thank you for contacting us. We will respond to you as soon as possible.'),
                        //     'options'=>['class'=>'alert-success']
                        // ]);
                    }
                }                 
                // if($model->load(Yii::$app->request->post())  && $model->validate(null, false)) {
                     
                //     //save the password
                //     $success=true;
                //     return json_encode($success);
                // }
                else
                {
                    return $this->renderPartial('callorder', [
                    'model' => $model,
                    ]);
                 
                }
            }



}
