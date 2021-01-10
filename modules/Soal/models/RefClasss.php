<?php

namespace app\modules\Soal\models;

use Yii;

/**
 * This is the model class for table "ref_classs".
 *
 * @property int $id
 * @property int $jenjang
 * @property string $name
 * @property string $code
 * @property string $keterangan
 * @property int $ordering
 * @property int $user_added
 * @property int $user_modified
 * @property string $date_added
 * @property string $date_modified
 * @property int $hidden
 */
class RefClasss extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'ref_classs';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['jenjang', 'name', 'code', 'keterangan', 'ordering', 'user_added', 'user_modified', 'date_added', 'date_modified', 'hidden'], 'required'],
            [['jenjang', 'ordering', 'user_added', 'user_modified', 'hidden'], 'integer'],
            [['keterangan'], 'string'],
            [['date_added', 'date_modified'], 'safe'],
            [['name'], 'string', 'max' => 255],
            [['code'], 'string', 'max' => 32],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'jenjang' => 'Jenjang',
            'name' => 'Name',
            'code' => 'Code',
            'keterangan' => 'Keterangan',
            'ordering' => 'Ordering',
            'user_added' => 'User Added',
            'user_modified' => 'User Modified',
            'date_added' => 'Date Added',
            'date_modified' => 'Date Modified',
            'hidden' => 'Hidden',
        ];
    }
}
