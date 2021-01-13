<?php

namespace app\modules\Soal\controllers;

use Yii;
use yii\web\Controller;
use yii\web\Response;
use yii\data\Pagination;
use yii\filters\AccessControl;
use yii\filters\VerbFilter;

use app\modules\Soal\models\RefClasss;
use app\modules\Soal\models\RefJenjangs;
use app\modules\Soal\models\RefKurikulums;
use app\modules\Soal\models\RefTahunAjarans;
use app\modules\Soal\models\RefLessons;

use app\modules\Soal\models\SoalSubjects;
use app\modules\Soal\models\SoalChoices;
use app\modules\Soal\models\SoalQuestions;
use yii\db\Query;
use Db;
use yii\data\ActiveDataProvider;
use yii\web\NotFoundHttpException;

/**
 * SoalController implements the CRUD actions for SoalSubjects model.
 */
class SoalController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all SoalSubjects models.
     * @return mixed
     */
    public function actionIndex()
    {
    
        $limit = 10;
        $page = Yii::$app->request->get('page');
        $from = (isset($page)) ? ($page-1)*$limit : 0; // Match according to your query string

        $query = new Query;
        $query->select('soal_subjects.*,
                        ref_jenjangs.`name` AS txt_jenjang,
                        ref_kurikulums.`name` AS txt_kurikulum,
                        ref_classs.`name` AS txt_class,
                        ref_tahun_ajarans.`name` AS txt_tahun_ajaran,
                        ref_lessons.`name` AS txt_lesson,
                        user.username as username')
                ->from('soal_subjects')
                ->join('inner JOIN', 'ref_classs',
                    'soal_subjects.class = ref_classs.id')      
                ->join('inner JOIN', 'ref_jenjangs', 
                    'soal_subjects.jenjang = ref_jenjangs.id')
                ->join('inner JOIN', 'ref_lessons', 
                    'soal_subjects.lesson = ref_lessons.id')
                ->join('inner JOIN', 'ref_kurikulums', 
                    'soal_subjects.kurikulum = ref_kurikulums.id')
                ->join('inner JOIN', 'ref_tahun_ajarans', 
                    'soal_subjects.tahun_ajaran = ref_tahun_ajarans.id')
                ->join('left JOIN', 'user', 
                    'soal_subjects.user_added = user.id')
                ->where('soal_subjects.hidden = 0 LIMIT '.$from.','.$limit);


        $command = $query->createCommand();
        $data = $command->queryAll();

        $count   = \Yii::$app->db->createCommand('SELECT COUNT(*) as total FROM soal_subjects where soal_subjects.hidden = 0')->queryScalar();

        $pagination = new \yii\data\Pagination(['totalCount' => $count, 'pageSize' => $limit]);           

        return $this->render('index', [
            'result' => $data,
            'pagination' => $pagination,
            'page' => $page,
        ]);
    }

    /**
     * Creates a new SoalSubjects model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new SoalSubjects();

        $RefClass = new RefClasss(); 
        $RefJenjangs = new RefJenjangs(); 
        $RefKurikulums = new RefKurikulums(); 
        $RefTahunAjarans = new RefTahunAjarans(); 
        $RefLessons = new RefLessons(); 

        $dataRefClass = RefClasss::find()->all(); 
        $dataRefJenjangs = RefJenjangs::find()->all(); 
        $dataRefKurikulums = RefKurikulums::find()->all(); 
        $dataRefTahunAjarans = RefTahunAjarans::find()->all(); 
        $dataRefLessons = RefLessons::find()->all(); 


        if ($model->load(Yii::$app->request->post()) && $model->save(false)) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('create', [
            'model' => $model,
            'dataRefClass' => $dataRefClass,
            'dataRefJenjangs' => $dataRefJenjangs,
            'dataRefKurikulums' => $dataRefKurikulums,
            'dataRefTahunAjarans' => $dataRefTahunAjarans,
            'dataRefLessons' => $dataRefLessons,
        ]);
    }

    /**
     * Updates an existing SoalSubjects model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        $RefClass = new RefClasss(); 
        $RefJenjangs = new RefJenjangs(); 
        $RefKurikulums = new RefKurikulums(); 
        $RefTahunAjarans = new RefTahunAjarans(); 
        $RefLessons = new RefLessons(); 

        $dataRefClass = RefClasss::find()->all(); 
        $dataRefJenjangs = RefJenjangs::find()->all(); 
        $dataRefKurikulums = RefKurikulums::find()->all(); 
        $dataRefTahunAjarans = RefTahunAjarans::find()->all(); 
        $dataRefLessons = RefLessons::find()->all(); 


        if ($model->load(Yii::$app->request->post()) && $model->save(false)) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
            'dataRefClass' => $dataRefClass,
            'dataRefJenjangs' => $dataRefJenjangs,
            'dataRefKurikulums' => $dataRefKurikulums,
            'dataRefTahunAjarans' => $dataRefTahunAjarans,
            'dataRefLessons' => $dataRefLessons,
        ]);
    }


    public function actionDel($id)
    {
        $delete = SoalSubjects::findOne($id);
        $delete->softDelete(); 

        return $this->redirect(['/Soal/soal/index']);     
    }


    public function actionDelpilgan($id)
    {
        $delete = SoalChoices::findOne($id);
        $delete->softDelete(); 

        echo "sukses";
    
    }


    public function actionDelessay($id)
    {
        $delete = SoalQuestions::findOne($id);
        $delete->softDelete(); 

        echo "sukses";
        
    }


    public function actionSoalpublish()
    {

    }

    public function actionSoalUpdate($id)
    {

    }





    /**
     * Finds the SoalSubjects model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return SoalSubjects the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = SoalSubjects::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
