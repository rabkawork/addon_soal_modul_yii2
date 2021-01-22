<?php

namespace app\modules\Soal\models;

use Yii;
use yii\base\Model;



class UploadDoc extends Model
{

    public $file;

    /**
     * @return array the validation rules.
     */
    public function rules()
    {
        return [
            // [['url'], 'required'],
            [['file'], 'file', 'skipOnEmpty' => false, 'extensions' => 'docx'],

        ];
    }

}