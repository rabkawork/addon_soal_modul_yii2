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

use app\modules\Soal\models\SoalExplainationRelations;
use app\modules\Soal\models\SoalAttachments;
use app\modules\Soal\models\SoalAttachmentQuestions;
use app\modules\Soal\models\SoalAttachmentRelations;

use app\modules\Soal\models\UploadDoc;
use app\modules\Soal\models\UploadExcel;

use app\modules\Soal\models\SoalForm;

use yii\helpers\Json;
use yii\helpers\Url;


use yii\db\Query;
use Db;
use yii\data\ActiveDataProvider;
use yii\web\NotFoundHttpException;

use linslin\yii2\curl;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use yii\web\UploadedFile;
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
        $uploadDoc = new UploadDoc();
        $uploadExcel = new UploadExcel();


        $post =  \Yii::$app->request->post();
  
        if (Yii::$app->request->isPost) {
            
            if($post['check'] == 'doc'){
                $uploadDoc->file = UploadedFile::getInstance($uploadDoc, 'file');
                if ($uploadDoc->file && $uploadDoc->validate()){ 
                    $fileUpload = 'uploads/'. time(). $uploadDoc->file->baseName . '.' . $uploadDoc->file->extension;
                    $uploadDoc->file->saveAs($fileUpload);
                    $urlDoc = Url::base(true)."/".$fileUpload;

                    $curl = new curl\Curl();
                    $response = $curl->setOption(
                        CURLOPT_POSTFIELDS, 
                        http_build_query(array(
                            // 'url' => 'https://socdn.soalonline.com/cdn1/soal_sample.docx',
                            'url' => $urlDoc,
                        )
                    ))
                    ->post('http://128.199.189.95:3434/import_doc/detect/');
                    
        
                    $data = json_decode($response);

                    
                    if(!empty($data)){


                        if($data->success == true){
                            $countExisting = SoalQuestions::find()->where('subject = '.$id.' and  hidden = 0')->count();
                            $b = $countExisting > 0 ? 1 : $countExisting;

                            foreach($data->soal as $key => $value){
                                if(!empty($value->soal) && !empty($value->kunci) && !empty($value->opsi)){
                                    
                                    $soalQuetions = new SoalQuestions();
                                    $soalQuetions->subject = $id;
                                    $soalQuetions->ordering    = $b;
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
                                    $soalQuetionRelations->subject = $id;
                                    $soalQuetionRelations->answer      = "";
                                    $soalQuetionRelations->question    = $soalQuetions->id;
                                    $soalQuetionRelations->description      = $value->soal;
                                    $soalQuetionRelations->translate        = "";
                                    $soalQuetionRelations->file        = "";
                                    $soalQuetionRelations->hidden    = 0;
                                    $soalQuetionRelations->ordering    = $b;
                            
                                    $soalQuetionRelations->user_added = Yii::$app->user->id;
                                    $soalQuetionRelations->user_modified = Yii::$app->user->id;
                                    $soalQuetionRelations->date_added = date('Y-m-d H:i:s');
                                    $soalQuetionRelations->date_modified = date('Y-m-d H:i:s');
                                    $soalQuetionRelations->save(false);
                            
                            
                                    
                                    
                                    $SoalExplanationRelations = new SoalExplainationRelations();
                                    $SoalExplanationRelations->subject = $id;
                                    $SoalExplanationRelations->question    = $soalQuetions->id;
                                    $SoalExplanationRelations->description      = "";
                                    $SoalExplanationRelations->translate        = "";
                                    $SoalExplanationRelations->file        = "";
                                    $SoalExplanationRelations->hidden    = 0;
                                    $SoalExplanationRelations->ordering    = 0;
                            
                                    $SoalExplanationRelations->user_added = Yii::$app->user->id;
                                    $SoalExplanationRelations->user_modified = Yii::$app->user->id;
                                    $SoalExplanationRelations->date_added = date('Y-m-d H:i:s');
                                    $SoalExplanationRelations->date_modified = date('Y-m-d H:i:s');
                                    $SoalExplanationRelations->save(false);
            
            
            
                                    
                                    $SoalChoices = new SoalChoices();
                                            
                                    $SoalChoices->question = $soalQuetions->id;
                                    $SoalChoices->hidden = 0;
                                    $SoalChoices->is_answer = 1;
                                    $SoalChoices->ordering = 0;
                                    $SoalChoices->user_added = Yii::$app->user->id;
                                    $SoalChoices->user_modified = Yii::$app->user->id;
                                    $SoalChoices->date_added = date('Y-m-d H:i:s');
                                    $SoalChoices->date_modified = date('Y-m-d H:i:s');
                                    $SoalChoices->save(false);
                
                                    $SoalChoiceRelations = new SoalChoiceRelations();
                
                                    $SoalChoiceRelations->question = $id;
                                    $SoalChoiceRelations->choice = $SoalChoices->id;
                                    $SoalChoiceRelations->description = $value->kunci;
                                    $SoalChoiceRelations->translate = "-";
                                    $SoalChoiceRelations->file = "-";
                                    $SoalChoiceRelations->hidden = 0;
                
                                    $SoalChoiceRelations->ordering = 0;
                                    $SoalChoiceRelations->user_added = Yii::$app->user->id;
                                    $SoalChoiceRelations->user_modified = Yii::$app->user->id;
                                    $SoalChoiceRelations->date_added = date('Y-m-d H:i:s');
                                    $SoalChoiceRelations->date_modified = date('Y-m-d H:i:s');
                                    $SoalChoiceRelations->save(false);
            
                                    foreach ($value->opsi as $numb => $dt) {
                                        
                                        $SoalChoices = new SoalChoices();
                                            
                                        $SoalChoices->question = $soalQuetions->id;
                                        $SoalChoices->hidden = 0;
                                        $SoalChoices->is_answer = 0;
                                        $SoalChoices->ordering = ($key + 1);
                                        $SoalChoices->user_added = Yii::$app->user->id;
                                        $SoalChoices->user_modified = Yii::$app->user->id;
                                        $SoalChoices->date_added = date('Y-m-d H:i:s');
                                        $SoalChoices->date_modified = date('Y-m-d H:i:s');
                                        $SoalChoices->save(false);
                    
                                        $SoalChoiceRelations = new SoalChoiceRelations();
                    
                                        $SoalChoiceRelations->question = $id;
                                        $SoalChoiceRelations->choice = $SoalChoices->id;
                                        $SoalChoiceRelations->description = $dt;
                                        $SoalChoiceRelations->translate = "-";
                                        $SoalChoiceRelations->file = "-";
                                        $SoalChoiceRelations->hidden = 0;
                    
                                        $SoalChoiceRelations->ordering = ($key + 1);
                                        $SoalChoiceRelations->user_added = Yii::$app->user->id;
                                        $SoalChoiceRelations->user_modified = Yii::$app->user->id;
                                        $SoalChoiceRelations->date_added = date('Y-m-d H:i:s');
                                        $SoalChoiceRelations->date_modified = date('Y-m-d H:i:s');
                                        $SoalChoiceRelations->save(false);
                                        
                                    }
            
            
                                }
                                $b++;
                            }
            
                            \Yii::$app->session->setFlash('success', "Import Document (docx) success.");
                        }
                    }

                    return $this->redirect(['/Soal/soal/butirsoal','id' => $id]);        

                }
            }
        }



        if (Yii::$app->request->isPost) {

            if($post['check'] == 'excel'){
                $uploadExcel->file = UploadedFile::getInstance($uploadExcel, 'file');
    
                if ($uploadExcel->file && $uploadExcel->validate()) {                
                    // $uploadExcel->file->saveAs('uploads/' . $uploadExcel->file->baseName . '.' . $uploadExcel->file->extension);
                    $extension =$uploadExcel->file->extension;
                    if($extension=='xlsx'){
                        $inputFileType = 'Xlsx';
                    }else{
                        $inputFileType = 'Xls';
                    }
                    $reader = \PhpOffice\PhpSpreadsheet\IOFactory::createReader($inputFileType);
                    $reader->setLoadSheetsOnly(true);
                    $spreadsheet = $reader->load($uploadExcel->file->tempName);
                    $worksheet = $spreadsheet->getActiveSheet();
                    $highestRow = $worksheet->getHighestRow();
                    $highestColumn = $worksheet->getHighestColumn();
                    $highestColumnIndex = \PhpOffice\PhpSpreadsheet\Cell\Coordinate::columnIndexFromString($highestColumn);
                    
    
                    $success = 0;
                    //inilah looping untuk membaca cell dalam file excel,perkolom

                    $countExisting = SoalQuestions::find()->where('subject = '.$id.' and  hidden = 0')->count();
                    $c = $countExisting > 0 ? 1 : $countExisting;


                    for ($row = 3; $row <= $highestRow; ++$row) { 
                        
                        $kolom2 = $worksheet->getCellByColumnAndRow(2, $row)->getValue(); 
                        // $kolom3 = $worksheet->getCellByColumnAndRow(3, $row)->getValue(); 
                        // $kolom4 = $worksheet->getCellByColumnAndRow(4, $row)->getValue(); 
                        // $kolom5 = $worksheet->getCellByColumnAndRow(5, $row)->getValue(); 
                        // $kolom6 = $worksheet->getCellByColumnAndRow(6, $row)->getValue(); 
                        $kolom7 = $worksheet->getCellByColumnAndRow(7, $row)->getValue(); 
                        $kolom8 = $worksheet->getCellByColumnAndRow(8, $row)->getValue(); 
    
    
                        if(!empty($kolom2) && !empty($kolom7) && !empty($kolom8))
                        {
    
                            $soalQuetions = new SoalQuestions();
                            $soalQuetions->subject = $id;
                            $soalQuetions->ordering    = $c;
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
                            $soalQuetionRelations->subject = $id;
                            $soalQuetionRelations->answer      = "";
                            $soalQuetionRelations->question    = $soalQuetions->id;
                            $soalQuetionRelations->description      = $kolom2;
                            $soalQuetionRelations->translate        = "";
                            $soalQuetionRelations->file        = "";
                            $soalQuetionRelations->hidden    = 0;
                            $soalQuetionRelations->ordering    = $c;
                    
                            $soalQuetionRelations->user_added = Yii::$app->user->id;
                            $soalQuetionRelations->user_modified = Yii::$app->user->id;
                            $soalQuetionRelations->date_added = date('Y-m-d H:i:s');
                            $soalQuetionRelations->date_modified = date('Y-m-d H:i:s');
                            $soalQuetionRelations->save(false);
                    
                    
                            
                            
                            $SoalExplanationRelations = new SoalExplainationRelations();
                            $SoalExplanationRelations->subject = $id;
                            $SoalExplanationRelations->question    = $soalQuetions->id;
                            $SoalExplanationRelations->description      = $kolom8;
                            $SoalExplanationRelations->translate        = "";
                            $SoalExplanationRelations->file        = "";
                            $SoalExplanationRelations->hidden    = 0;
                            $SoalExplanationRelations->ordering    = 0;
                    
                            $SoalExplanationRelations->user_added = Yii::$app->user->id;
                            $SoalExplanationRelations->user_modified = Yii::$app->user->id;
                            $SoalExplanationRelations->date_added = date('Y-m-d H:i:s');
                            $SoalExplanationRelations->date_modified = date('Y-m-d H:i:s');
                            $SoalExplanationRelations->save(false);
        
                            $b = 0;
                            for ($i=3; $i <= 6; $i++) { 
                                $kolom = $worksheet->getCellByColumnAndRow($i, $row)->getValue(); 
                                
        
                                if(!empty($kolom)){
        
                                    $SoalChoices = new SoalChoices();
                                    
                                    $SoalChoices->question = $soalQuetions->id;
                                    $SoalChoices->hidden = 0;
                                    $SoalChoices->is_answer = $i == 3 ? 1 : 0;
                                    $SoalChoices->ordering = $b;
                                    $SoalChoices->user_added = Yii::$app->user->id;
                                    $SoalChoices->user_modified = Yii::$app->user->id;
                                    $SoalChoices->date_added = date('Y-m-d H:i:s');
                                    $SoalChoices->date_modified = date('Y-m-d H:i:s');
                                    $SoalChoices->save(false);
                
                                    $SoalChoiceRelations = new SoalChoiceRelations();
                
                                    $SoalChoiceRelations->question = $id;
                                    $SoalChoiceRelations->choice = $SoalChoices->id;
                                    $SoalChoiceRelations->description = $kolom;
                                    $SoalChoiceRelations->translate = "-";
                                    $SoalChoiceRelations->file = "-";
                                    $SoalChoiceRelations->hidden = 0;
                
                                    $SoalChoiceRelations->ordering = $b;
                                    $SoalChoiceRelations->user_added = Yii::$app->user->id;
                                    $SoalChoiceRelations->user_modified = Yii::$app->user->id;
                                    $SoalChoiceRelations->date_added = date('Y-m-d H:i:s');
                                    $SoalChoiceRelations->date_modified = date('Y-m-d H:i:s');
                                    $SoalChoiceRelations->save(false);
        
                                    $b++;
                                }
                            }
                            

                            $c++;
                            $success++;
                        }
                    }
    
                    if($success > 0) {
                        \Yii::$app->session->setFlash('success', "Import Excel success.");
                    }


                    return $this->redirect(['/Soal/soal/butirsoal','id' => $id]);        

    
    
                }
            }
        }


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
        $data = $command->queryAll();

        $listSoalSubjects = SoalQuestions::find()->where('subject = '.$id.' and  hidden = 0')->asArray()->all();
        foreach ($listSoalSubjects as $key => $value) {
            $listSoalSubjects[$key]['relations_questions'] = SoalQuestionRelations::find()->where('question = '.$value['id'].' and  hidden = 0')->asArray()->one();
            $listSoalSubjects[$key]['explaination_relations'] = SoalExplainationRelations::find()->where('question = '.$value['id'].' and  hidden = 0')->asArray()->one();
            $listSoalSubjects[$key]['choices'] = SoalChoices::find()
                                    ->select('soal_choices.*,soal_choice_relations.description,soal_choice_relations.file')
                                    ->innerJoin('soal_choice_relations', 'soal_choice_relations.choice = soal_choices.id')
                                    ->where('soal_choices.question = '.$value['id'].' and  soal_choices.hidden = 0')->asArray()->all();
            $listSoalSubjects[$key]['attachments'] = SoalAttachments::find()
            ->select('soal_attachments.*,soal_attachment_relations.*')
            ->innerJoin('soal_attachment_relations', 'soal_attachment_relations.attachment = soal_attachments.id')
            ->where('soal_attachments.subject = '.$id.' and  soal_attachments.hidden = 0')->asArray()->one();

        }
        

        return $this->render('butirsoal', [
            'model' => $data[0],
            'uploadDoc' => $uploadDoc,
            'uploadExcel' => $uploadExcel,
            'listSoal' => $listSoalSubjects
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


    public function actionDelPilgan($id)
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
        $soalQuetionRelations->answer      = "";
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

        
        $SoalExplanationRelations = new SoalExplainationRelations();
        $SoalExplanationRelations->subject = $subjectId;
        $SoalExplanationRelations->question    = $soalQuetions->id;
        $SoalExplanationRelations->description      = "";
        $SoalExplanationRelations->translate        = "";
        $SoalExplanationRelations->file        = "";
        $SoalExplanationRelations->hidden    = 0;
        $SoalExplanationRelations->ordering    = 0;

        $SoalExplanationRelations->user_added = Yii::$app->user->id;
        $SoalExplanationRelations->user_modified = Yii::$app->user->id;
        $SoalExplanationRelations->date_added = date('Y-m-d H:i:s');
        $SoalExplanationRelations->date_modified = date('Y-m-d H:i:s');
        $SoalExplanationRelations->save(false);
        echo $soalQuetions->id;
    }

    public function actionShowSoal()
    {


        $listSoalSubjects = SoalSubjects::find()->where('hidden = 0')->asArray()->all();

        foreach($listSoalSubjects as $dt => $val){
            $countsoal = SoalQuestions::find()->where(['subject' => $val['id'],'hidden' => 0])->count();
            $listSoalSubjects[$dt]['jumlah_soal'] = $countsoal;

        }
        return Json::encode([
            'data' => $listSoalSubjects
        ]);


    }

    public function actionSelectSoal($id,$subject)
    {
        
        
        $listSoalSubjects = SoalQuestions::find()->where('subject = '.$subject.' and  hidden = 0')->asArray()->all();
        $countExisting = SoalQuestions::find()->where('subject = '.$id.' and  hidden = 0')->count();
        $b = $countExisting > 0 ? 1 : $countExisting;
        foreach ($listSoalSubjects as $key => $value) {
            $listSoalSubjects[$key]['relations_questions'] = SoalQuestionRelations::find()->where('question = '.$value['id'].' and  hidden = 0')->asArray()->one();
            $listSoalSubjects[$key]['explaination_relations'] = SoalExplainationRelations::find()->where('question = '.$value['id'].' and  hidden = 0')->asArray()->one();
            $listSoalSubjects[$key]['choices'] = SoalChoices::find()
                                    ->select('soal_choices.*,soal_choice_relations.description')
                                    ->innerJoin('soal_choice_relations', 'soal_choice_relations.choice = soal_choices.id')
                                    ->where('soal_choices.question = '.$value['id'].' and  soal_choices.hidden = 0')->asArray()->all();
            

            $soalQuetions = new SoalQuestions();
            $soalQuetions->subject           = $id;
            $soalQuetions->type              = !empty($value['type']) ? $value['type'] : "";
            $soalQuetions->ordering          = $b;
            $soalQuetions->bobot             = !empty($value['bobot']) ? $value['bobot'] : "";
            $soalQuetions->audio_question    = !empty($value['audio_question']) ? $value['audio_question'] : "-";
            $soalQuetions->audio_explanation = !empty($value['audio_explanation']) ? $value['audio_explanation'] : "-";
            $soalQuetions->photo_reviewed    = !empty($value['photo_reviewed']) ? $value['photo_reviewed'] : "-";
            $soalQuetions->katex_reviewed    = !empty($value['katex_reviewed']) ? $value['katex_reviewed'] : "-";
            $soalQuetions->hidden            = !empty($value['hidden']) ? $value['hidden'] : 0;

            $soalQuetions->user_added = Yii::$app->user->id;
            $soalQuetions->user_modified = Yii::$app->user->id;
            $soalQuetions->date_added = date('Y-m-d H:i:s');
            $soalQuetions->date_modified = date('Y-m-d H:i:s');
            $soalQuetions->save(false);
            

                                        
            $soalQuetionRelations = new SoalQuestionRelations();
            $soalQuetionRelations->subject     = $id;
            $soalQuetionRelations->answer      = !empty($listSoalSubjects[$key]['relations_questions']["answer"]) ? $listSoalSubjects[$key]['relations_questions']["answer"] : "";
            $soalQuetionRelations->question    = $soalQuetions->id;
            $soalQuetionRelations->description = !empty($listSoalSubjects[$key]['relations_questions']["description"]) ? $listSoalSubjects[$key]['relations_questions']["description"] : "";
            $soalQuetionRelations->translate   = !empty($listSoalSubjects[$key]['relations_questions']["translate"]) ? $listSoalSubjects[$key]['relations_questions']["translate"] : "";
            $soalQuetionRelations->file        = !empty($listSoalSubjects[$key]['relations_questions']["file"]) ? $listSoalSubjects[$key]['relations_questions']["file"] : "";
            $soalQuetionRelations->hidden      = 0;
            $soalQuetionRelations->ordering    = $b;

            $soalQuetionRelations->user_added = Yii::$app->user->id;
            $soalQuetionRelations->user_modified = Yii::$app->user->id;
            $soalQuetionRelations->date_added = date('Y-m-d H:i:s');
            $soalQuetionRelations->date_modified = date('Y-m-d H:i:s');
            $soalQuetionRelations->save(false);

            

        


            $SoalExplanationRelations = new SoalExplainationRelations();
            $SoalExplanationRelations->subject     = $id;
            $SoalExplanationRelations->question    = $soalQuetions->id;
            $SoalExplanationRelations->description = !empty((string) $listSoalSubjects[$key]['explaination_relations']['description']) ? (string) $listSoalSubjects[$key]['explaination_relations']['description'] : "";
            $SoalExplanationRelations->translate   = !empty((string) $listSoalSubjects[$key]['explaination_relations']['translate']) ? (string) $listSoalSubjects[$key]['explaination_relations']['translate'] : "-";
            $SoalExplanationRelations->file        = !empty((string) $listSoalSubjects[$key]['explaination_relations']['file']) ? (string) $listSoalSubjects[$key]['explaination_relations']['file'] : "-";

            
            $SoalExplanationRelations->hidden      = 0;
            $SoalExplanationRelations->ordering    = 0;

            $SoalExplanationRelations->user_added = Yii::$app->user->id;
            $SoalExplanationRelations->user_modified = Yii::$app->user->id;
            $SoalExplanationRelations->date_added = date('Y-m-d H:i:s');
            $SoalExplanationRelations->date_modified = date('Y-m-d H:i:s');
            $SoalExplanationRelations->save(false);

            if($value['type'] == 'MULTIPLE_CHOICE')
            {
                $c = 1;
                foreach($listSoalSubjects[$key]['choices'] as $key => $soaljawaban){

                    $SoalChoices = new SoalChoices();
                    $SoalChoices->question = $soalQuetions->id;
                    
                    $SoalChoices->hidden        = 0;
                    $SoalChoices->is_answer     = $soaljawaban['is_answer'];
                    $SoalChoices->ordering      = $c;
                    $SoalChoices->user_added    = Yii::$app->user->id;
                    $SoalChoices->user_modified = Yii::$app->user->id;
                    $SoalChoices->date_added    = date('Y-m-d H:i:s');
                    $SoalChoices->date_modified = date('Y-m-d H:i:s');
                    $SoalChoices->save(false);


                    $SoalChoiceRelations = new SoalChoiceRelations();
                    $SoalChoiceRelations->choice = $SoalChoices->id;
                    $SoalChoiceRelations->question = $soalQuetions->id;;
                    $SoalChoiceRelations->description = $soaljawaban['description'];
                    $SoalChoiceRelations->translate = "-";
                    $SoalChoiceRelations->file = "-";
                    $SoalChoiceRelations->hidden = 0;

                    $SoalChoiceRelations->ordering = $c;
                    $SoalChoiceRelations->user_added = Yii::$app->user->id;
                    $SoalChoiceRelations->user_modified = Yii::$app->user->id;
                    $SoalChoiceRelations->date_added = date('Y-m-d H:i:s');
                    $SoalChoiceRelations->date_modified = date('Y-m-d H:i:s');
                    $SoalChoiceRelations->save(false);  
                    $c++;
                }   
            }
            $b++;
        }

        echo "sukses";


    }

    public function actionSoalPublish($id)
    {
        $connection = \Yii::$app->db;
        $post  = \Yii::$app->request->post();
        $files = $_FILES; 
   

        foreach ($post['opsiActive'] as $key => $value) {

            $connection->createCommand()
            ->update('soal_questions', ['type' => (int) $post['pilihanEssay-'.$value] == 1 ? 'MULTIPLE_CHOICE' : 'ESSAY','ordering' => !empty($post['ordering-'.$value]) ? $post['ordering-'.$value] : 0], 'id = '.$value)
            ->execute();

            $connection->createCommand()
            ->update('soal_question_relations', ['description' => $post['judul-'.$value]], 'question = '.$value)
            ->execute();


    
            $image = array('jpg','jpeg','png','gif');
            $audio = array('mp3','wav','mp4');
    

            if((int) $post['pilihanEssay-'.$value] == 1)
            {
                
                // ini nanti di kasih query jika pernah nginput tinggal di update

                $soal = SoalChoices::find()->where('question = '.$value.' and hidden = 0')->orderBy([
                    'ordering' => 'DESC'     
                    ])->asArray()->all();
            
                // ini untuk posis create data
                foreach($post['SoaljawabanPilGab-'.$value] as $key => $soaljawaban){

                    if(!empty($soal[$key]['id'])){
                        $SoalChoices = SoalChoices::findOne($soal[$key]['id']);
                    }
                    else{
                        $SoalChoices = new SoalChoices();
                        $SoalChoices->question = $value;
                    }
                    $pilihan = -1;


                    if(!empty($post['jawabanPilGab-'.$value][0]))
                    {
                        if($post['jawabanPilGab-'.$value][0] == "A")
                        {
                            $pilihan = 0;
                        }
                        else if($post['jawabanPilGab-'.$value][0] == "B"){
                            $pilihan = 1;
                        }
                        else if($post['jawabanPilGab-'.$value][0] == "C"){
                            $pilihan = 2;
                        }
                        else if($post['jawabanPilGab-'.$value][0] == "D"){
                            $pilihan = 3;
                        }
                        else if($post['jawabanPilGab-'.$value][0] == "E"){
                            $pilihan = 4;
                        }
                    }
                    
                    
                    $SoalChoices->hidden = 0;
                    $SoalChoices->is_answer = $key == $pilihan ? 1 : 0;
                    $SoalChoices->ordering = $key;
                    $SoalChoices->user_added = Yii::$app->user->id;
                    $SoalChoices->user_modified = Yii::$app->user->id;
                    $SoalChoices->date_added = date('Y-m-d H:i:s');
                    $SoalChoices->date_modified = date('Y-m-d H:i:s');
                    $SoalChoices->save(false);


                    $SoalChoiceRelationsCount = SoalChoiceRelations::findOne(['question' => $value, 'choice' => $SoalChoices->id]);
                    if($SoalChoiceRelationsCount != NULL){
                        $SoalChoiceRelations = SoalChoiceRelations::findOne(['question' => $value, 'choice' => $SoalChoiceRelationsCount->id]);
                        $SoalChoiceRelations->description = !empty($soaljawaban) ? $soaljawaban : '-';


                        if(!empty($_FILES['photo-'.$value.'-'.($key+1)]['tmp_name'][0])){
                            $destFile = \Yii::$app->basePath."/web/uploads/";
                            $uniquesavename=time().uniqid(rand());
                            $path = explode('.',$_FILES['photo-'.$value.'-'.($key+1)]['name'][0]);
                            $ext = end($path);
                            $destFile = $destFile. $uniquesavename . '.'.$ext;
                            $filename = $_FILES['photo-'.$value.'-'.($key+1)]["tmp_name"][0];
                            // list($width, $height) = getimagesize( $filename );       
                            move_uploaded_file($filename,  $destFile);
                            $SoalChoiceRelations->file = $uniquesavename . '.'.$ext;
                        }
                        
                    }
                    else{
                        $SoalChoiceRelations = new SoalChoiceRelations();
                        $SoalChoiceRelations->choice = $SoalChoices->id;
                        $SoalChoiceRelations->question = $value;
                        $SoalChoiceRelations->description = $soaljawaban;
                        $SoalChoiceRelations->translate = "-";
                        if(!empty($_FILES['photo-'.$value.'-'.($key+1)]['tmp_name'][0])){
                            $destFile = \Yii::$app->basePath."/web/uploads/";
                            $uniquesavename=time().uniqid(rand());
                            $path = explode('.',$_FILES['photo-'.$value.'-'.($key+1)]['name'][0]);
                            $ext = end($path);
                            $destFile = $destFile. $uniquesavename . '.'.$ext;
                            $filename = $_FILES['photo-'.$value.'-'.($key+1)]["tmp_name"][0];
                            // list($width, $height) = getimagesize( $filename );       
                            move_uploaded_file($filename,  $destFile);
                            $SoalChoiceRelations->file = $uniquesavename . '.'.$ext;
                        }
                        else{
                            $SoalChoiceRelations->file = "-";
                        }
                    }







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
                ->update('soal_question_relations', ['answer' => $post['jawabanEssay-'.$value]], 'question = '.$value)
                ->execute();
            }


            $connection->createCommand()
            ->update('soal_explaination_relations', ['description' => $post['pembahasan-'.$value]], 'question = '.$value)
            ->execute();


            
            $count = SoalAttachments::findOne(['subject' => $id]);


            if($count != NULL){
                $SoalAttachments = SoalAttachments::findOne(['subject' => $id]);
            }
            else{
                $SoalAttachments = new SoalAttachments();
                $SoalAttachments->subject = $id;
            }

            $SoalAttachments->hidden = 0;
            $SoalAttachments->user_added = Yii::$app->user->id;
            $SoalAttachments->user_modified = Yii::$app->user->id;
            $SoalAttachments->date_added = date('Y-m-d H:i:s');
            $SoalAttachments->date_modified = date('Y-m-d H:i:s');
            $SoalAttachments->save(false);

            $attachmentId = $SoalAttachments->id;

            $count = SoalAttachmentRelations::findOne(['attachment' => $attachmentId]);
            if($count != NULL){
                $SoalAttachmentsRelations = SoalAttachmentRelations::findOne(['attachment' => $attachmentId]);
                
                
                if(!empty($_FILES['attachmentjudul-'.$value]['tmp_name'][0])){
                    $destFile = \Yii::$app->basePath."/web/uploads/";
                    $uniquesavename=time().uniqid(rand());
                    $path = explode('.',$_FILES['attachmentjudul-'.$value]['name'][0]);
                    $ext = end($path);
                    $destFile = $destFile. $uniquesavename . '.'.$ext;
                    $filename = $_FILES['attachmentjudul-'.$value]["tmp_name"][0];
                    // list($width, $height) = getimagesize( $filename );       
                    move_uploaded_file($filename,  $destFile);
                    $SoalAttachmentsRelations->file = $uniquesavename . '.'.$ext;
                }

                if(!empty($_FILES['attachmentaudio-'.$value]['tmp_name'][0])){
                    $destFile = \Yii::$app->basePath."/web/uploads/";
                    $uniquesavename=time().uniqid(rand());
                    $path = explode('.',$_FILES['attachmentaudio-'.$value]['name'][0]);
                    $ext = end($path);
                    $destFile = $destFile. $uniquesavename . '.'.$ext;
                    $filename = $_FILES['attachmentaudio-'.$value]["tmp_name"][0];
                    // list($width, $height) = getimagesize( $filename );       
                    move_uploaded_file($filename,  $destFile);
                    $SoalAttachmentsRelations->audio = $uniquesavename . '.'.$ext;
                }

            }
            else{
                $SoalAttachmentsRelations = new SoalAttachmentRelations();
                $SoalAttachmentsRelations->attachment = $id;
    
                if(!empty($_FILES['attachmentjudul-'.$value]['tmp_name'][0])){
                    $destFile = \Yii::$app->basePath."/web/uploads/";
                    $uniquesavename=time().uniqid(rand());
                    $path = explode('.',$_FILES['attachmentjudul-'.$value]['name'][0]);
                    $ext = end($path);
                    $destFile = $destFile. $uniquesavename . '.'.$ext;
                    $filename = $_FILES['attachmentjudul-'.$value]["tmp_name"][0];
                    // list($width, $height) = getimagesize( $filename );       
                    move_uploaded_file($filename,  $destFile);
                    $SoalAttachmentsRelations->file = $uniquesavename . '.'.$ext;
                }
                else{
                    $SoalAttachmentsRelations->file = "-";
                }
    
                
                
                if(!empty($_FILES['attachmentaudio-'.$value]['tmp_name'][0])){
                    $destFile = \Yii::$app->basePath."/web/uploads/";
                    $uniquesavename=time().uniqid(rand());
                    $path = explode('.',$_FILES['attachmentaudio-'.$value]['name'][0]);
                    $ext = end($path);
                    $destFile = $destFile. $uniquesavename . '.'.$ext;
                    $filename = $_FILES['attachmentaudio-'.$value]["tmp_name"][0];
                    // list($width, $height) = getimagesize( $filename );       
                    move_uploaded_file($filename,  $destFile);
                    $SoalAttachmentsRelations->audio = $uniquesavename . '.'.$ext;
                }
                else{
                    $SoalAttachmentsRelations->audio = "-";
                }
            }

            
            $SoalAttachmentsRelations->description = "";
            $SoalAttachmentsRelations->translate = "";
            $SoalAttachmentsRelations->ordering = 0;
            $SoalAttachmentsRelations->hidden = 0;
            $SoalAttachmentsRelations->user_added = Yii::$app->user->id;
            $SoalAttachmentsRelations->user_modified = Yii::$app->user->id;
            $SoalAttachmentsRelations->date_added = date('Y-m-d H:i:s');
            $SoalAttachmentsRelations->date_modified = date('Y-m-d H:i:s');
            $SoalAttachmentsRelations->save(false);


            
            // $count = SoalAttachmentRelations::findOne(['attachment' => $attachmentId]);
            $SoalExplanationRelationsCount = SoalExplainationRelations::findOne(['question' => $value, 'subject' => $id]);


            if($SoalExplanationRelationsCount != NULL){
                $SoalExplanationRelations = SoalExplainationRelations::findOne(['question' => $value, 'subject' => $id]);

                
    
                if(!empty($_FILES['file-'.$value.'-1']['tmp_name'][0])){
                    $destFile = \Yii::$app->basePath."/web/uploads/";
                    $uniquesavename=time().uniqid(rand());
                    $path = explode('.',$_FILES['file-'.$value.'-1']['name'][0]);
                    $ext = end($path);
                    $destFile = $destFile. $uniquesavename . '.'.$ext;
                    $filename = $_FILES['file-'.$value.'-1']["tmp_name"][0];
                    // list($width, $height) = getimagesize( $filename );       
                    move_uploaded_file($filename,  $destFile);
                    $SoalExplanationRelations->file = $uniquesavename . '.'.$ext;
                }
                
    
    
                
                if(!empty($_FILES['audio-'.$value.'-1']['tmp_name'][0])){
                    $destFile = \Yii::$app->basePath."/web/uploads/";
                    $uniquesavename=time().uniqid(rand());
                    $path = explode('.',$_FILES['audio-'.$value.'-1']['name'][0]);
                    $ext = end($path);
                    $destFile = $destFile. $uniquesavename . '.'.$ext;
                    $filename = $_FILES['audio-'.$value.'-1']["tmp_name"][0];
                    // list($width, $height) = getimagesize( $filename );       
                    move_uploaded_file($filename,  $destFile);
                    $SoalExplanationRelations->audio = $uniquesavename . '.'.$ext;
                }
                
            }
            else{
                $SoalExplanationRelations = new SoalExplainationRelations();
                $SoalExplanationRelations->subject = $id;
                $SoalExplanationRelations->question    = $value;
                $SoalExplanationRelations->description      = $post['pembahasan-'.$value];

    
                if(!empty($_FILES['file-'.$value.'-1']['tmp_name'][0])){
                    $destFile = \Yii::$app->basePath."/web/uploads/";
                    $uniquesavename=time().uniqid(rand());
                    $path = explode('.',$_FILES['file-'.$value.'-1']['name'][0]);
                    $ext = end($path);
                    $destFile = $destFile. $uniquesavename . '.'.$ext;
                    $filename = $_FILES['file-'.$value.'-1']["tmp_name"][0];
                    // list($width, $height) = getimagesize( $filename );       
                    move_uploaded_file($filename,  $destFile);
                    $SoalExplanationRelations->file = $uniquesavename . '.'.$ext;
                }
                else{
                    $SoalExplanationRelations->file = "-";
                }
    
    
                
                if(!empty($_FILES['audio-'.$value.'-1']['tmp_name'][0])){
                    $destFile = \Yii::$app->basePath."/web/uploads/";
                    $uniquesavename=time().uniqid(rand());
                    $path = explode('.',$_FILES['audio-'.$value.'-1']['name'][0]);
                    $ext = end($path);
                    $destFile = $destFile. $uniquesavename . '.'.$ext;
                    $filename = $_FILES['audio-'.$value.'-1']["tmp_name"][0];
                    // list($width, $height) = getimagesize( $filename );       
                    move_uploaded_file($filename,  $destFile);
                    $SoalExplanationRelations->audio = $uniquesavename . '.'.$ext;
                }
                else{
                    $SoalExplanationRelations->audio = "-";
                }
            }
            $SoalExplanationRelations->translate        = "";
            // $SoalExplanationRelations->file        = "";

            $SoalExplanationRelations->hidden      = 0;
            $SoalExplanationRelations->ordering    = 0;
    
            $SoalExplanationRelations->user_added = Yii::$app->user->id;
            $SoalExplanationRelations->user_modified = Yii::$app->user->id;
            $SoalExplanationRelations->date_added = date('Y-m-d H:i:s');
            $SoalExplanationRelations->date_modified = date('Y-m-d H:i:s');
            $SoalExplanationRelations->save(false);


            

        }

    
        \Yii::$app->session->setFlash('success', "Soal berhasil di simpan");
        return $this->redirect(['/Soal/soal/publish-soal','id' => $id]);        

        
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


                $save = SoalSubjects::findOne($id);
                $save->price = $model->harga;
                $save->save(false);

                \Yii::$app->session->setFlash('success', "Soal berhasil di publish");

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
