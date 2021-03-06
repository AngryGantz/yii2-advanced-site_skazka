<?php

namespace frontend\controllers;

use Yii;
use common\models\Goods;
use frontend\models\Goodssearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * GoodsController implements the CRUD actions for Goods model.
 */
class GoodsController extends Controller
{

    public $layout = 'main';

    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    /**
     * Lists all Goods models.
     * @return mixed
     */
    public function actionIndex($idcat, $sort='cost1')
    {

        $searchModel = new Goodssearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $model=Goods::find()->where(['idcat' => $idcat])->orderBy($sort)->all();
        $catname=Goods::getCatnamebyid($idcat);
        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'model' => $model,
            'idcat' => $idcat,
            'catname' => $catname,
            'sort'=>$sort,
        ]);
    }

    /**
     * Displays a single Goods model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        $model = $this->findModel($id);
        $catname=Goods::getCatnamebyid($model->idcat);    
        return $this->render('view', [
            'model' => $model,
            'catname' => $catname,
        ]);
    }

    /**
     * Creates a new Goods model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Goods();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Goods model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Goods model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Goods model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Goods the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Goods::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    public function actionAddtodiff($userid)
    {

       $b= Yii::$app->session->get('goodsForDiff');
       if (count($b)>0) {
           if (!in_array($userid, $b)){
               $b[] = $userid;
               Yii::$app->session->set('goodsForDiff', $b);
           }    
       } else {
               $b[] = $userid;
               Yii::$app->session->set('goodsForDiff', $b);
       }  
       $success=true;
       return "Добавлено для сравнения";
      
    }

    public function actionDiff()
    {
        $this->layout = 'home';
        $searchModel = new Goodssearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $gfd= Yii::$app->session->get('goodsForDiff');
        $model=Goods::find()->where(['id' => $gfd])->all();
        return $this->render('diff', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'model' => $model,
        ]);
    }
}
