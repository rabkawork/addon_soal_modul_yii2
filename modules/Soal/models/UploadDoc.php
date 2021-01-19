<?php

namespace app\modules\Soal\models;

use Yii;
use yii\base\Model;



class UploadDoc extends Model
{

    public $url;

    /**
     * @return array the validation rules.
     */
    public function rules()
    {
        return [
            [['url'], 'required'],
        ];
    }

}