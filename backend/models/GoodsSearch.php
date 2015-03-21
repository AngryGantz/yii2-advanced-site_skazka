<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Goods;

/**
 * GoodsSearch represents the model behind the search form about `common\models\Goods`.
 */
class GoodsSearch extends Goods
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'idcat', 'hard', 'gload', 'cost1', 'cost2', 'cost3', 'cost4', 'cost5', 'cost6'], 'integer'],
            [['name', 'height', 'sostav', 'material', 'pic', 'note1', 'note2', 'pic2', 'bl1', 'bl1pic', 'bl2', 'bl2pic', 'bl3', 'bl3pic', 'bl4', 'bl4pic', 'bl5', 'bl5pic', 'bl6', 'bl6pic', 'bl7', 'bl7pic', 'bl8', 'bl8pic', 'bl9', 'bl9pic'], 'safe'],
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
            ->andFilterWhere(['like', 'height', $this->height])
            ->andFilterWhere(['like', 'sostav', $this->sostav])
            ->andFilterWhere(['like', 'material', $this->material])
            ->andFilterWhere(['like', 'pic', $this->pic])
            ->andFilterWhere(['like', 'note1', $this->note1])
            ->andFilterWhere(['like', 'note2', $this->note2])
            ->andFilterWhere(['like', 'pic2', $this->pic2])
            ->andFilterWhere(['like', 'bl1', $this->bl1])
            ->andFilterWhere(['like', 'bl1pic', $this->bl1pic])
            ->andFilterWhere(['like', 'bl2', $this->bl2])
            ->andFilterWhere(['like', 'bl2pic', $this->bl2pic])
            ->andFilterWhere(['like', 'bl3', $this->bl3])
            ->andFilterWhere(['like', 'bl3pic', $this->bl3pic])
            ->andFilterWhere(['like', 'bl4', $this->bl4])
            ->andFilterWhere(['like', 'bl4pic', $this->bl4pic])
            ->andFilterWhere(['like', 'bl5', $this->bl5])
            ->andFilterWhere(['like', 'bl5pic', $this->bl5pic])
            ->andFilterWhere(['like', 'bl6', $this->bl6])
            ->andFilterWhere(['like', 'bl6pic', $this->bl6pic])
            ->andFilterWhere(['like', 'bl7', $this->bl7])
            ->andFilterWhere(['like', 'bl7pic', $this->bl7pic])
            ->andFilterWhere(['like', 'bl8', $this->bl8])
            ->andFilterWhere(['like', 'bl8pic', $this->bl8pic])
            ->andFilterWhere(['like', 'bl9', $this->bl9])
            ->andFilterWhere(['like', 'bl9pic', $this->bl9pic]);

        return $dataProvider;
    }
}
