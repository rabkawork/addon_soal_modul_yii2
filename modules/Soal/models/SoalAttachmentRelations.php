<?php

namespace app\modules\Soal\models;
use yii\db\ActiveRecord;
use yii2tech\ar\softdelete\SoftDeleteBehavior;

use Yii;

/**
 * This is the model class for table "soal_attachment_relations".
 *
 * @property int $id
 * @property string $type
 * @property int $attachment
 * @property string $description
 * @property string $translate
 * @property string $file
 * @property string $audio
 * @property int $ordering
 * @property int $user_added
 * @property int $user_modified
 * @property string $date_added
 * @property string $date_modified
 * @property int $hidden
 */
class SoalAttachmentRelations extends \yii\db\ActiveRecord
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
        return 'soal_attachment_relations';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['type', 'description', 'translate','audio'], 'string'],
            [['attachment', 'description', 'translate', 'file', 'ordering', 'user_added', 'user_modified', 'date_added', 'date_modified', 'hidden'], 'required'],
            [['attachment', 'ordering', 'user_added', 'user_modified', 'hidden'], 'integer'],
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
            'attachment' => 'Attachment',
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
