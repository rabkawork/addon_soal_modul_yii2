<?php

namespace app\modules\Soal\controllers;

use Yii;
use yii\web\Controller;
use yii\web\Response;
use yii\data\Pagination;
use yii\filters\AccessControl;
use yii\filters\VerbFilter;
use app\modules\Soal\models\RefClass;
use app\modules\Soal\models\SoalSubjects;
use app\modules\Soal\models\SoalChoices;
use app\modules\Soal\models\SoalQuestions;
use yii\db\Query;

use yii\base\Widget;
use yii\web\UploadedFile;


/**
 * Default controller for the `Settings` module
 */
class SoalController extends Controller
{
    /**
     * Renders the index view for the module
     * @return string
     */
    public function actionIndex()
    {
        // return $this->render('index');
        // $query = SoalSubjects::find()
        //        ->joinWith('RefClass', false, 'INNER JOIN')
        //        ->joinWith('RefJenjangs', false, 'INNER JOIN')
        //        ->joinWith('RefKurikulums', false, 'INNER JOIN') 
        //     ->where(['SoalSubjects.status' => 1]);
        // $countQuery = clone $query;
        // $pages = new Pagination(['totalCount' => $countQuery->count()]);
        // $models = $query->offset($pages->offset)->limit($pages->limit)->asArray()->all();


        $limit = 10;

        $query = new Query;
        $query->from('soal_subjects')
                ->join('inner JOIN', 'ref_classs',
                    'soal_subjects.class = ref_classs.id')      
                ->join('inner JOIN', 'ref_jenjangs', 
                    'soal_subjects.jenjang = ref_jenjangs.id')
                ->join('inner JOIN', 'ref_lessons', 
                    'soal_subjects.lesson = ref_lessons.id')
                ->join('inner JOIN', 'ref_kurikulums', 
                    'soal_subjects.kurikulum = ref_kurikulums.id')
                ->where('hidden = 0');

        $command = $query->createCommand();
        $data = $command->queryAll();
    }


    public function actionCreate()
    {

    }


    public function actionUpdate($id)
    {

    }



    public function actionDelete($id)
    {
        $delete = SoalSubjects::findOne($id);
        $delete->softDelete(); 

    }


    public function actionDeleteSoalPilGan($id)
    {
        $delete = SoalChoices::findOne($id);
        $delete->softDelete(); 
    
    }


    public function actionDeleteSoalEssay($id)
    {
        $delete = SoalQuestions::findOne($id);
        $delete->softDelete(); 
    }


    public function actionSoalSave()
    {

    }

    public function actionSoalUpdate($id)
    {

    }


}
