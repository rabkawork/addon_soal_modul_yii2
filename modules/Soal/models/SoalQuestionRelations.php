<?php

namespace app\modules\Soal\models;

use Yii;

/**
 * This is the model class for table "soal_question_relations".
 *
 * @property int $id
 * @property string $type
 * @property int $subject
 * @property int $question
 * @property string $description
 * @property string $translate
 * @property string $file
 * @property int $ordering
 * @property int $user_added
 * @property int $user_modified
 * @property string $date_added
 * @property string $date_modified
 * @property int $hidden
 */
class SoalQuestionRelations extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'soal_question_relations';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['type', 'description', 'translate'], 'string'],
            [['subject', 'question', 'description', 'translate', 'file', 'ordering', 'user_added', 'user_modified', 'date_added', 'date_modified', 'hidden'], 'required'],
            [['subject', 'question', 'ordering', 'user_added', 'user_modified', 'hidden'], 'integer'],
            [['date_added', 'date_modified'], 'safe'],
            [['file'], 'string', 'max' => 255],
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
            'question' => 'Question',
            'description' => 'Description',
            'translate' => 'Translate',
            'file' => 'File',
            'ordering' => 'Ordering',
            'user_added' => 'User Added',
            'user_modified' => 'User Modified',
            'date_added' => 'Date Added',
            'date_modified' => 'Date Modified',
            'hidden' => 'Hidden',
        ];
    }
}
