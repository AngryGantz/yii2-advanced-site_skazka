<?php

namespace app\models;

use Yii;
use yii\base\Model;

class CallOrderForm extends Model
{
	public $id;
    public $name;
    public $phone;

    public function rules()
    {
        return [
            [['name', 'phone'], 'required'],
        ];
    }

    public function attributeLabels()
    {
        return [
            'name' => Yii::t('frontend', 'Name'),
            'phone' => Yii::t('frontend', 'Phone')
        ];
    }

}