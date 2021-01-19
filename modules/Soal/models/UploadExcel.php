<?php

namespace app\modules\Soal\models;

use Yii;
use yii\base\Model;
use yii\web\UploadedFile;



class UploadExcel extends Model
{

    public $file;

    /**
     * @return array the validation rules.
     */
    public function rules()
    {   

        //, 'skipOnEmpty' => true
        return [
            [['file'], 'file', 'skipOnEmpty' => false, 'extensions' => 'xlsx'],
        ];
    }

}