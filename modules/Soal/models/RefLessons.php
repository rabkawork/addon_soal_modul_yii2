<?php

namespace app\modules\Soal\models;
use yii\db\ActiveRecord;
use yii2tech\ar\softdelete\SoftDeleteBehavior;

use Yii;

/**
 * This is the model class for table "ref_lessons".
 *
 * @property int $id
 * @property string $religion
 * @property int $religion_lesson
 * @property int $class_lesson
 * @property int $kurikulum
 * @property int|null $lesson_group_id
 * @property string $name
 * @property string $code
 * @property string $keterangan
 * @property string $thumbnail
 * @property int $hide_icon
 * @property int $user_added
 * @property int $user_modified
 * @property string $date_added
 * @property string $date_modified
 * @property int $hidden
 */
class RefLessons extends \yii\db\ActiveRecord
{


    public function behaviors()
    {
        return [
            'softDeleteBehavior' => [
                'class' => SoftDeleteBehavior::className(),
                'softDeleteAttributeValues' => [
                    'isDeleted' => true
                ],
            ],
        ];
    }


    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'ref_lessons';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['religion', 'religion_lesson', 'class_lesson', 'kurikulum', 'name', 'code', 'keterangan', 'thumbnail', 'hide_icon', 'user_added', 'user_modified', 'date_added', 'date_modified', 'hidden'], 'required'],
            [['religion_lesson', 'class_lesson', 'kurikulum', 'lesson_group_id', 'hide_icon', 'user_added', 'user_modified', 'hidden'], 'integer'],
            [['keterangan'], 'string'],
            [['date_added', 'date_modified'], 'safe'],
            [['religion', 'code'], 'string', 'max' => 32],
            [['name', 'thumbnail'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'religion' => 'Religion',
            'religion_lesson' => 'Religion Lesson',
            'class_lesson' => 'Class Lesson',
            'kurikulum' => 'Kurikulum',
            'lesson_group_id' => 'Lesson Group ID',
            'name' => 'Name',
            'code' => 'Code',
            'keterangan' => 'Keterangan',
            'thumbnail' => 'Thumbnail',
            'hide_icon' => 'Hide Icon',
            'user_added' => 'User Added',
            'user_modified' => 'User Modified',
            'date_added' => 'Date Added',
            'date_modified' => 'Date Modified',
            'hidden' => 'Hidden',
        ];
    }
}
