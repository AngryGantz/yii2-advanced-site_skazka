<?php
return [
    'class'=>'yii\web\UrlManager',
    'enablePrettyUrl'=>true,
    'showScriptName'=>false,
    'rules'=> [
        ['pattern'=>'page/<slug>', 'route'=>'page/view'],
        // ['pattern'=>'goods/<slug>', 'route'=>'goods/view'],
        // ['pattern'=>'goodscat/<slug>', 'route'=>'goodscat/view'],
        ['pattern'=>'callorder', 'route'=>'site/callorder'],
        ['pattern'=>'submitcallorder', 'route'=>'site/submitcallorder'],

    ]
];