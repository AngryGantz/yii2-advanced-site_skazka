<?php

namespace frontend\models;

use Yii;
use yii\base\Model;

class CallOrderForm extends Model
{
	public $id;
    public $name;
    public $phone;
    public $goodsarticul;

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

    public function contact($email)
    {
        if ($this->validate()) {
            $subject='Order from site Запрос с сайта Santeks на звонок';
            $body='Order from site  Внимание администратору сайта. Посетитель, назвавшийся как '.$this->name.
                ' оставил следующий номер телефона: '.$this->phone.' и заказал звонок. ENDNO';
            if ($this->goodsarticul!='') {
                    $body=$body.'Посетитель заинтересован в товаре TICUL: '.$this->goodsarticul.' END_ARTICUL';
                }    
            return Yii::$app->mailer->compose()
                ->setTo($email)
                ->setFrom(Yii::$app->params['robotEmail'])
                ->setReplyTo([Yii::$app->params['robotEmail'] => $this->name])
                ->setSubject($subject)
                ->setTextBody($body)
                ->send();
        } else {
            return false;
        }
    }


}