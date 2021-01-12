<?php

namespace app\modules\Soal\models;

use yii\db\ActiveRecord;
use yii2tech\ar\softdelete\SoftDeleteBehavior;

use Yii;

/**
 * This is the model class for table "soal_questions".
 *
 * @property int $id
 * @property string $type
 * @property int $subject
 * @property string $audio_question
 * @property string $audio_explanation
 * @property int $ordering
 * @property int $photo_reviewed
 * @property int $katex_reviewed
 * @property float $bobot
 * @property int $user_added
 * @property int $user_modified
 * @property string $date_added
 * @property string $date_modified
 * @property int $hidden
 */
class SoalQuestions extends \yii\db\ActiveRecord
{


    public function behaviors()
    {
        return [
            'softDeleteBehavior' => [
                'class' => SoftDeleteBehavior::className(),
                'softDeleteAttributeValues' => [
                    'hidden' => true
                ],
            ],
        ];
    }



    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'soal_questions';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['type'], 'string'],
            [['subject', 'audio_question', 'audio_explanation', 'ordering', 'photo_reviewed', 'katex_reviewed', 'bobot', 'user_added', 'user_modified', 'date_added', 'date_modified', 'hidden'], 'required'],
            [['subject', 'ordering', 'photo_reviewed', 'katex_reviewed', 'user_added', 'user_modified', 'hidden'], 'integer'],
            [['bobot'], 'number'],
            [['date_added', 'date_modified'], 'safe'],
            [['audio_question', 'audio_explanation'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'type' => 'Type',
            'subject' => 'Subject',
            'audio_question' => 'Audio Question',
            'audio_explanation' => 'Audio Explanation',
            'ordering' => 'Ordering',
            'photo_reviewed' => 'Photo Reviewed',
            'katex_reviewed' => 'Katex Reviewed',
            'bobot' => 'Bobot',
            'user_added' => 'User Added',
            'user_modified' => 'User Modified',
            'date_added' => 'Date Added',
            'date_modified' => 'Date Modified',
            'hidden' => 'Hidden',
        ];
    }
}
