<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "goods".
 *
 * @property integer $id
 * @property integer $idcat
 * @property string $name
 * @property integer $height
 * @property integer $hard
 * @property integer $gload
 * @property integer $cost1
 * @property integer $cost2
 * @property integer $cost3
 * @property integer $cost4
 * @property integer $cost5
 * @property integer $cost6
 * @property string $sostav
 * @property string $material
 *
 * @property Goodscat $idcat0
 */
class Goods extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'goods';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['idcat', 'name'], 'required'],
            [['idcat', 'hard', 'gload', 'cost1', 'cost2', 'cost3', 'cost4', 'cost5', 'cost6'], 'integer'],
            [['name', 'height','sostav', 'material'], 'string', 'max' => 255],
            [['pic'], 'string', 'max' => 2048]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'idcat' => 'Idcat',
            'name' => 'Name',
            'height' => 'Height',
            'hard' => 'Hard',
            'gload' => 'Gload',
            'cost1' => 'Cost1',
            'cost2' => 'Cost2',
            'cost3' => 'Cost3',
            'cost4' => 'Cost4',
            'cost5' => 'Cost5',
            'cost6' => 'Cost6',
            'sostav' => 'Sostav',
            'material' => 'Material',
            'pic' => 'Pic',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getIdcat0()
    {
        return $this->hasOne(Goodscat::className(), ['id' => 'idcat']);
    }



    public function getCatnamebyid($idcat)
    {
        $rec = Goodscat::find()->where(['id' => $idcat])->one();
        return $rec->name;
    }



    public function recently($limit=4, $idcat=1)
    {
        $this->getDbCriteria()->mergeWith(array(
            'order'=>'create_time DESC',
            'limit'=>$limit,
            'idcat'=>$idcat,
        ));
        return $this;
    }    
}
