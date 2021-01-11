<?php

namespace app\models\Soal\models;

use Yii;

/**
 * This is the model class for table "soal_subjects".
 *
 * @property int $id
 * @property int|null $province
 * @property int|null $jenjang
 * @property int|null $class
 * @property int|null $kurikulum
 * @property int|null $tahun_ajaran
 * @property int|null $periode_soal
 * @property int|null $lesson
 * @property string|null $variant
 * @property string|null $multiple_choice_option
 * @property string|null $name
 * @property resource|null $code
 * @property string|null $tag
 * @property string|null $keterangan
 * @property int|null $hide_in_exam
 * @property int|null $price
 * @property string|null $cover
 * @property string|null $status
 * @property string|null $language
 * @property int|null $approved
 * @property string|null $score_essay
 * @property string|null $last_cached
 * @property int|null $user_added
 * @property int|null $user_modified
 * @property string|null $date_added
 * @property string|null $date_modified
 * @property int|null $hidden
 */
class SoalSubjects extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'soal_subjects';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['province', 'jenjang', 'class', 'kurikulum', 'tahun_ajaran', 'periode_soal', 'lesson', 'hide_in_exam', 'price', 'approved', 'user_added', 'user_modified', 'hidden'], 'integer'],
            [['multiple_choice_option', 'tag', 'keterangan', 'status', 'language', 'score_essay'], 'string'],
            [['last_cached', 'date_added', 'date_modified'], 'safe'],
            [['variant', 'code'], 'string', 'max' => 32],
            [['name', 'cover'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'province' => 'Province',
            'jenjang' => 'Jenjang',
            'class' => 'Class',
            'kurikulum' => 'Kurikulum',
            'tahun_ajaran' => 'Tahun Ajaran',
            'periode_soal' => 'Periode Soal',
            'lesson' => 'Lesson',
            'variant' => 'Variant',
            'multiple_choice_option' => 'Multiple Choice Option',
            'name' => 'Name',
            'code' => 'Code',
            'tag' => 'Tag',
            'keterangan' => 'Keterangan',
            'hide_in_exam' => 'Hide In Exam',
            'price' => 'Price',
            'cover' => 'Cover',
            'status' => 'Status',
            'language' => 'Language',
            'approved' => 'Approved',
            'score_essay' => 'Score Essay',
            'last_cached' => 'Last Cached',
            'user_added' => 'User Added',
            'user_modified' => 'User Modified',
            'date_added' => 'Date Added',
            'date_modified' => 'Date Modified',
            'hidden' => 'Hidden',
        ];
    }
}
