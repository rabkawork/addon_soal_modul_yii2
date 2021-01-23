<?php

namespace app\modules\Soal\models;
use yii\db\ActiveRecord;
use yii2tech\ar\softdelete\SoftDeleteBehavior;

use Yii;

/**
 * This is the model class for table "soal_attachments".
 *
 * @property int $id
 * @property int $subject
 * @property int $question
 * @property int $user_added
 * @property int $user_modified
 * @property string $date_added
 * @property string $date_modified
 * @property int $hidden
 */
class SoalAttachments extends \yii\db\ActiveRecord
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
        return 'soal_attachments';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['subject', 'user_added', 'user_modified', 'date_added', 'date_modified', 'hidden'], 'required'],
            [['subject', 'question', 'user_added', 'user_modified', 'hidden'], 'integer'],
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
            'subject' => 'Subject',
            'question' => 'question',
            'user_added' => 'User Added',
            'user_modified' => 'User Modified',
            'date_added' => 'Date Added',
            'date_modified' => 'Date Modified',
            'hidden' => 'Hidden',
        ];
    }
}
