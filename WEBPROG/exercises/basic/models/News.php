<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "news".
 *
 * @property integer $id
 * @property string $title
 * @property string $slug
 * @property string $text
 * @property string $name
 * @property string $nickname
 * @property string $email
 * @property string $address
 * @property string $gender
 * @property string $cellno
 * @property string $comments
 */
class News extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'news';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'slug', 'text', 'name', 'nickname', 'email', 'gender', 'cellno'], 'required'],
            [['text'], 'string'],
            [['cellno'], 'integer'],
            [['title', 'slug', 'email', 'address'], 'string', 'max' => 128],
            [['name', 'nickname'], 'string', 'max' => 20],
            [['gender'], 'string', 'max' => 6],
            [['comments'], 'string', 'max' => 255],
            [['email'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'slug' => 'Slug',
            'text' => 'Text',
            'name' => 'Name',
            'nickname' => 'Nickname',
            'email' => 'Email',
            'address' => 'Address',
            'gender' => 'Gender',
            'cellno' => 'Cellno',
            'comments' => 'Comments',
        ];
    }
}
