<?php

namespace app\modules\Soal\models;

use Yii;

/**
 * This is the model class for table "ref_jenjangs".
 *
 * @property int $id
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
class RefJenjangs extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'ref_jenjangs';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'code', 'keterangan', 'ordering', 'user_added', 'user_modified', 'date_added', 'date_modified', 'hidden'], 'required'],
            [['keterangan'], 'string'],
            [['ordering', 'user_added', 'user_modified', 'hidden'], 'integer'],
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
