<?php

namespace frontend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Goods;

/**
 * Goodssearch represents the model behind the search form about `common\models\Goods`.
 */
class Goodssearch extends Goods
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'idcat', 'height', 'hard', 'gload', 'cost1', 'cost2', 'cost3', 'cost4', 'cost5', 'cost6'], 'integer'],
            [['name', 'sostav', 'material'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Goods::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'idcat' => $this->idcat,
            'height' => $this->height,
            'hard' => $this->hard,
            'gload' => $this->gload,
            'cost1' => $this->cost1,
            'cost2' => $this->cost2,
            'cost3' => $this->cost3,
            'cost4' => $this->cost4,
            'cost5' => $this->cost5,
            'cost6' => $this->cost6,
        ]);

        $query->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'sostav', $this->sostav])
            ->andFilterWhere(['like', 'material', $this->material]);

        return $dataProvider;
    }
}
