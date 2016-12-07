<?php

namespace app\models;

/**
 * This is the model class for table "posts".
 *
 * @property integer $id
 * @property integer $uid
 * @property string $title
 * @property string $anons
 * @property string $text
 */
class Posts extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'posts';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['uid', 'title', 'anons', 'text'], 'required'],
            [['uid'], 'integer'],
            [['anons', 'text'], 'string'],
            [['title'], 'string', 'max' => 256],
        ];

    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'uid' => 'Uid',
            'title' => 'Title',
            'anons' => 'Anons',
            'text' => 'Text',
        ];
    }
}
