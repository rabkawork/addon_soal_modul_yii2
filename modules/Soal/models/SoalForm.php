<?php

namespace app\modules\Soal\models;

use Yii;
use yii\base\Model;



class SoalForm extends Model
{
     public $id;
    public $province;
    public $jenjang;
    public $class;
    public $kurikulum;
    public $tahun_ajaran;
    public $periode_soal;
    public $lesson;
    public $variant;
    public $multiple_choice_option;
    public $name;
    public $code;
    public $tag;
    public $keterangan;
    public $hide_in_exam;

    public $price;
    public $cover;
    public $status;
    public $language;
    public $approved;
    public $score_essay;
    public $last_cached;
    public $user_added;
    public $user_modified;
    public $date_added;
    public $date_modified;
    public $hidden;


     /**
     * @return array the validation rules.
     */
    public function rules()
    {
        return [
             [['province', 'jenjang', 'class', 'kurikulum', 'tahun_ajaran', 'periode_soal', 'lesson', 'hide_in_exam', 'price', 'approved', 'user_added', 'user_modified', 'hidden'], 'integer'],
            [['multiple_choice_option', 'tag', 'keterangan', 'status', 'language', 'score_essay'], 'string'],
            [['last_cached', 'date_added', 'date_modified'], 'safe'],
            [['variant', 'code'], 'string', 'max' => 32],
            [['name', 'cover'], 'string', 'max' => 255],
            [['name', 'code', 'keterangan'], 'required'],

        ];
    }

}
