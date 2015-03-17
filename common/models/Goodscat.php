<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "goodscat".
 *
 * @property integer $id
 * @property string $name
 * @property string $note
 * @property string $pic
 *
 * @property Goods[] $goods
 */
class Goodscat extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'goodscat';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'note', 'pic'], 'required'],
            [['note'], 'string'],
            [['name', 'pic'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'note' => 'Note',
            'pic' => 'Pic',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getGoods()
    {
        return $this->hasMany(Goods::className(), ['idcat' => 'id']);
    }
}
