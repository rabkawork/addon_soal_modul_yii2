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
use Db;

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


        $limit      =   10;
        $from       =   (isset($_GET['page'])) ? ($_GET['page']-1)*$limit : 0; // Match according to your query string


        $query = new Query;
        $query->select('soal_subjects.*,
                        ref_jenjangs.`name` AS txt_jenjang,
                        ref_kurikulums.`name` AS txt_kurikulum,
                        ref_classs.`name` AS txt_class,
                        ref_lessons.`name` AS txt_lesson')
                ->from('soal_subjects')
                ->join('inner JOIN', 'ref_classs',
                    'soal_subjects.class = ref_classs.id')      
                ->join('inner JOIN', 'ref_jenjangs', 
                    'soal_subjects.jenjang = ref_jenjangs.id')
                ->join('inner JOIN', 'ref_lessons', 
                    'soal_subjects.lesson = ref_lessons.id')
                ->join('inner JOIN', 'ref_kurikulums', 
                    'soal_subjects.kurikulum = ref_kurikulums.id')
                ->where('soal_subjects.hidden = 1 LIMIT '.$from.','.$limit);


        $command = $query->createCommand();
        $data = $command->queryAll();

        $count   = \Yii::$app->db->createCommand('SELECT COUNT(*) as total FROM soal_subjects where soal_subjects.hidden = 1')->queryScalar();

        $pagination = new \yii\data\Pagination(['totalCount' => $count, 'pageSize' => $limit]);           

        return $this->render('index', [
            'result' => $data,
            'pagination' => $pagination,
        ]);        
    }


    public function actionCreate()
    {

    }


    public function actionUpdate($id)
    {

    }



    public function actionDel($id)
    {
        $delete = SoalSubjects::findOne($id);
        $delete->softDelete(); 
    }


    public function actionDelpilgan($id)
    {
        $delete = SoalChoices::findOne($id);
        $delete->softDelete(); 
    
    }


    public function actionDelessay($id)
    {
        $delete = SoalQuestions::findOne($id);
        $delete->softDelete(); 
    }


    public function actionSoalpublish()
    {

    }

    public function actionSoalUpdate($id)
    {

    }


}
