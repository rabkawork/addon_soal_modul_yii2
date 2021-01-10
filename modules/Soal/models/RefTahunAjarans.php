<?php

namespace app\modules\Soal\models;

use Yii;

/**
 * This is the model class for table "ref_tahun_ajarans".
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
 * @property string|null $start_date
 * @property string|null $end_date
 * @property string|null $date_deleted
 * @property int|null $user_deleted
 */
class RefTahunAjarans extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'ref_tahun_ajarans';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'code', 'keterangan', 'ordering', 'user_added', 'user_modified', 'date_modified', 'hidden'], 'required'],
            [['keterangan'], 'string'],
            [['ordering', 'user_added', 'user_modified', 'hidden', 'user_deleted'], 'integer'],
            [['date_added', 'date_modified', 'start_date', 'end_date', 'date_deleted'], 'safe'],
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
            'start_date' => 'Start Date',
            'end_date' => 'End Date',
            'date_deleted' => 'Date Deleted',
            'user_deleted' => 'User Deleted',
        ];
    }
}
