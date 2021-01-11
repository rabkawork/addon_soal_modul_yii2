<?php

namespace app\modules\Soal\controllers;

use Yii;
use yii\web\Controller;
use yii\web\Response;
use yii\data\Pagination;
use yii\filters\AccessControl;
use yii\filters\VerbFilter;
use app\modules\Soal\models\RefClass;

use yii\data\Pagination;
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
    }


    public function actionCreate()
    {

    }

    public function actionDelete($id)
    {

    }


    public function actionUpdate($id)
   	{

   	}





}
