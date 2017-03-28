<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "profile".
 *
 * @property integer $id
 * @property string $slug
 * @property string $name
 * @property string $nickname
 * @property string $email
 * @property string $address
 * @property string $gender
 * @property string $cellno
 * @property string $comments
 */
class Profile extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'profile';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['slug', 'name', 'nickname', 'email', 'gender', 'cellno'], 'required'],
            [['cellno'], 'integer'],
            [['slug', 'email', 'address'], 'string', 'max' => 128],
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
            'slug' => 'Slug',
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
