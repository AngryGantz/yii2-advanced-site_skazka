<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "goods".
 *
 * @property integer $id
 * @property integer $idcat
 * @property string $name
 * @property string $height
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
 * @property string $pic
 * @property string $note1
 * @property string $note2
 * @property string $pic2
 * @property string $bl1
 * @property string $bl1pic
 * @property string $bl2
 * @property string $bl2pic
 * @property string $bl3
 * @property string $bl3pic
 * @property string $bl4
 * @property string $bl4pic
 * @property string $bl5
 * @property string $bl5pic
 * @property string $bl6
 * @property string $bl6pic
 * @property string $bl7
 * @property string $bl7pic
 * @property string $bl8
 * @property string $bl8pic
 * @property string $bl9
 * @property string $bl9pic
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
            [['note1', 'note2', 'bl1', 'bl2', 'bl3', 'bl4', 'bl5', 'bl6', 'bl7', 'bl8', 'bl9'], 'string'],
            [['name', 'height', 'sostav', 'material', 'pic2', 'bl1pic', 'bl2pic', 'bl3pic', 'bl4pic', 'bl5pic', 'bl6pic', 'bl7pic', 'bl8pic', 'bl9pic'], 'string', 'max' => 255],
            [['pic'], 'string', 'max' => 2048]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('common', 'ID'),
            'idcat' => Yii::t('common', 'Idcat'),
            'name' => Yii::t('common', 'Name'),
            'height' => Yii::t('common', 'Height'),
            'hard' => Yii::t('common', 'Hard'),
            'gload' => Yii::t('common', 'Gload'),
            'cost1' => Yii::t('common', 'Cost1'),
            'cost2' => Yii::t('common', 'Cost2'),
            'cost3' => Yii::t('common', 'Cost3'),
            'cost4' => Yii::t('common', 'Cost4'),
            'cost5' => Yii::t('common', 'Cost5'),
            'cost6' => Yii::t('common', 'Cost6'),
            'sostav' => Yii::t('common', 'Sostav'),
            'material' => Yii::t('common', 'Material'),
            'pic' => Yii::t('common', 'Pic'),
            'note1' => Yii::t('common', 'Note1'),
            'note2' => Yii::t('common', 'Note2'),
            'pic2' => Yii::t('common', 'Pic2'),
            'bl1' => Yii::t('common', 'Bl1'),
            'bl1pic' => Yii::t('common', 'Bl1pic'),
            'bl2' => Yii::t('common', 'Bl2'),
            'bl2pic' => Yii::t('common', 'Bl2pic'),
            'bl3' => Yii::t('common', 'Bl3'),
            'bl3pic' => Yii::t('common', 'Bl3pic'),
            'bl4' => Yii::t('common', 'Bl4'),
            'bl4pic' => Yii::t('common', 'Bl4pic'),
            'bl5' => Yii::t('common', 'Bl5'),
            'bl5pic' => Yii::t('common', 'Bl5pic'),
            'bl6' => Yii::t('common', 'Bl6'),
            'bl6pic' => Yii::t('common', 'Bl6pic'),
            'bl7' => Yii::t('common', 'Bl7'),
            'bl7pic' => Yii::t('common', 'Bl7pic'),
            'bl8' => Yii::t('common', 'Bl8'),
            'bl8pic' => Yii::t('common', 'Bl8pic'),
            'bl9' => Yii::t('common', 'Bl9'),
            'bl9pic' => Yii::t('common', 'Bl9pic'),
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
 
    
}
