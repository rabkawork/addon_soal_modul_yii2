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
use app\modules\Soal\models\Publish;

use app\modules\Soal\models\SoalSubjects;
use app\modules\Soal\models\SoalChoices;
use app\modules\Soal\models\SoalChoiceRelations;
use app\modules\Soal\models\SoalQuestions;
use app\modules\Soal\models\SoalQuestionRelations;

use app\modules\Soal\models\SoalForm;
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
            return $this->redirect(['butirsoal', 'id' => $model->id]);
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


    public function actionButirsoal($id)
    {
        // save data
        // $model = $this->findModel($id);

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
                ->where('soal_subjects.id = '.$id);

        $command = $query->createCommand();
        $data = $command->queryOne();

        return $this->render('butirsoal', [
            'model' => $data,
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
            return $this->redirect(['index', 'id' => $model->id]);
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


    public function actionDelSoal($id)
    {
        $delete = SoalQuestions::findOne($id);
        $delete->softDelete(); 

        echo "sukses";
    }

    public function actionCreateSoal($subjectId)
    {
        $soalQuetions = new SoalQuestions();
        $soalQuetions->subject = $subjectId;
        $soalQuetions->ordering    = 0;
        $soalQuetions->bobot       = 0;
        $soalQuetions->audio_question    = '-';
        $soalQuetions->audio_explanation = '-';
        $soalQuetions->photo_reviewed    = 0;
        $soalQuetions->katex_reviewed    = 0;
        $soalQuetions->hidden    = 0;

        $soalQuetions->user_added = Yii::$app->user->id;
        $soalQuetions->user_modified = Yii::$app->user->id;
        $soalQuetions->date_added = date('Y-m-d H:i:s');
        $soalQuetions->date_modified = date('Y-m-d H:i:s');
        $soalQuetions->save(false);

        
        $soalQuetionRelations = new SoalQuestionRelations();
        $soalQuetionRelations->subject = $subjectId;
        $soalQuetionRelations->question    = $soalQuetions->id;
        $soalQuetionRelations->description      = "";
        $soalQuetionRelations->translate        = "";
        $soalQuetionRelations->file        = "";
        $soalQuetionRelations->hidden    = 0;
        $soalQuetionRelations->ordering    = 0;

        $soalQuetionRelations->user_added = Yii::$app->user->id;
        $soalQuetionRelations->user_modified = Yii::$app->user->id;
        $soalQuetionRelations->date_added = date('Y-m-d H:i:s');
        $soalQuetionRelations->date_modified = date('Y-m-d H:i:s');
        $soalQuetionRelations->save(false);
        echo $soalQuetions->id;
    }

    public function actionUploadxls()
    {

    }

    public function actionUploaddoc()
    {

    }
    

    public function actionSoalPublish($id)
    {


        // $query = new Query;
        // $query->from('soal_questions')
        // ->select('id')
        // ->where('soal_questions.subject = ' . $id.' and soal_questions.hidden = 0');
        
        // $command = $query->createCommand();
        // $data = $command->queryAll();
        $connection = \Yii::$app->db;

        $post  = \Yii::$app->request->post();
        $files = $_FILES; 
        echo "<pre>";
        var_dump($post);
        
        foreach ($post['opsiActive'] as $key => $value) {

            $connection->createCommand()
            ->update('soal_questions', ['type' => (int) $post['pilihanEssay-'.$value] == 1 ? 'MULTIPLE_CHOICE' : 'ESSAY'], 'id = '.$value)
            ->execute();

            $connection->createCommand()
            ->update('soal_question_relations', ['description' => $post['judul-'.$value]], 'subject = '.$value)
            ->execute();

            if((int) $post['pilihanEssay-'.$value] == 1)
            {
                
                // ini nanti di kasih query jika pernah nginput tinggal di update

                // ini untuk posis create data
                foreach($post['SoaljawabanPilGab-'.$value] as $key => $soaljawaban){
                    $SoalChoices = new SoalChoices();
                    $pilihan = 0;
                    if($post['jawabanPilGab-'.$value] == "A")
                    {
                        $pilihan = 0;
                    }
                    else if($post['jawabanPilGab-'.$value] == "B"){
                        $pilihan = 1;
                    }
                    else if($post['jawabanPilGab-'.$value] == "C"){
                        $pilihan = 2;
                    }
                    else if($post['jawabanPilGab-'.$value] == "D"){
                        $pilihan = 3;
                    }
                    else if($post['jawabanPilGab-'.$value] == "E"){
                        $pilihan = 4;
                    }
                    $SoalChoices->question = $id;
                    $SoalChoices->hidden = 0;
                    $SoalChoices->is_answer = $key == $pilihan ? 1 : 0;
                    $SoalChoices->ordering = $key;
                    $SoalChoices->user_added = Yii::$app->user->id;
                    $SoalChoices->user_modified = Yii::$app->user->id;
                    $SoalChoices->date_added = date('Y-m-d H:i:s');
                    $SoalChoices->date_modified = date('Y-m-d H:i:s');
                    $SoalChoices->save(false);

                    $SoalChoiceRelations = new SoalChoiceRelations();

                    $SoalChoiceRelations->question = $id;
                    $SoalChoiceRelations->choice = $SoalChoices->id;
                    $SoalChoiceRelations->description = $soaljawaban;
                    $SoalChoiceRelations->translate = "-";
                    $SoalChoiceRelations->file = "-";
                    $SoalChoiceRelations->hidden = 0;

                    $SoalChoiceRelations->ordering = $key;
                    $SoalChoiceRelations->user_added = Yii::$app->user->id;
                    $SoalChoiceRelations->user_modified = Yii::$app->user->id;
                    $SoalChoiceRelations->date_added = date('Y-m-d H:i:s');
                    $SoalChoiceRelations->date_modified = date('Y-m-d H:i:s');
                    $SoalChoiceRelations->save(false);


                }


            }       
            else
            {    
                $connection->createCommand()
                ->update('soal_question_relations', ['answer' => $post['jawabanEssay-'.$value]], 'subject = '.$value)
                ->execute();
            }
        }
    }



    public function actionPublishSoal($id = '')
    {
        if(Yii::$app->user->getIsGuest()){
            return $this->redirect(['/site/login']);        
        }

        $dropdownList = ['0' => 'Gratis', '1' => 'Berbayar'];

        $model = new Publish();

        if (Yii::$app->request->isPost) {

            $model->load(\Yii::$app->request->post());          
            if ($model->validate()) {   
                $content = SoalSubjects::findOne($id);
                $content->harga = $model->harga;
                $content->save(false);
                return $this->redirect(['/Soal/soal/index','id' => $id]);   

            }
        }

        return $this->render('publish', ['model' => $model,'dropdownList' => $dropdownList]);

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
