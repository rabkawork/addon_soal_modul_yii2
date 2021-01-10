<?php

namespace app\modules\Soal\models;

use Yii;

/**
 * This is the model class for table "soal_attachment_questions".
 *
 * @property int $id
 * @property int $attachment
 * @property int $question
 * @property int $user_added
 * @property int $user_modified
 * @property string $date_added
 * @property string $date_modified
 * @property int $hidden
 */
class SoalAttachmentQuestions extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'soal_attachment_questions';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['attachment', 'question', 'user_added', 'user_modified', 'date_added', 'date_modified', 'hidden'], 'required'],
            [['attachment', 'question', 'user_added', 'user_modified', 'hidden'], 'integer'],
            [['date_added', 'date_modified'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'attachment' => 'Attachment',
            'question' => 'Question',
            'user_added' => 'User Added',
            'user_modified' => 'User Modified',
            'date_added' => 'Date Added',
            'date_modified' => 'Date Modified',
            'hidden' => 'Hidden',
        ];
    }
}
