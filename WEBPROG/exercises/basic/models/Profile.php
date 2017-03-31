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
            [['cellno'], 'integer', 'message' => 'Cellno only accepts numbers'],
            [['slug', 'email', 'address'], 'string', 'max' => 128],
            [['name', 'nickname'], 'string', 'max' => 20],
            [['comments', 'address'], 'default'],
            [['name'], 'match' ,
            'pattern'=> '/^[A-Za-z0-9_ ]+$/u',
            'message'=> 'Name only accepts letters and numbers'],
            [['nickname'], 'match' ,
            'pattern'=> '/^[A-Za-z_ ]+$/u',
            'message'=> 'Nickname only accepts letters'],
            [['gender'], 'string', 'max' => 6],
            [['gender'], 'in', 
            'range' => ['M', 'F', 'Male', 'Female'],
            'message' => 'Gender must be one of the following: M, F, Male, Female'],
            [['comments'], 'string', 'max' => 255],
            [['email'],  'unique'],
            [['email'],  'email'],
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
