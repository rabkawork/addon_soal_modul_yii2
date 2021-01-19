<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;


 $dataRefClass = ArrayHelper::map($dataRefClass,'id','name');
 $dataRefJenjangs = ArrayHelper::map($dataRefJenjangs,'id','name');
 $dataRefKurikulums = ArrayHelper::map($dataRefKurikulums,'id','name');
 $dataRefTahunAjarans = ArrayHelper::map($dataRefTahunAjarans,'id','name');
 $dataRefLessons = ArrayHelper::map($dataRefLessons,'id','name');



/* @var $this yii\web\View */
/* @var $model app\modules\Soal\models\SoalSubjects */
/* @var $form yii\widgets\ActiveForm */

$userId = Yii::$app->user->id;
?>


  <?php $form = ActiveForm::begin(); ?>
    <label class=""><h3><b>Judul</b></h3></label>
    <?= $form->field($model, 'name')->textInput(['maxlength' => true,'style' => 'background-color: #81ecec;'])->label(false) ?>

    <?= $form->field($model, 'province')->hiddenInput(['value' => 0])->label(false) ?>

    <?= $form->field($model, 'jenjang')->dropDownList($dataRefJenjangs)->label('Jenjang') ?>

    <?= $form->field($model, 'class')->dropDownList($dataRefClass)->label('Kelas/Jurusan') ?>

    <?= $form->field($model, 'kurikulum')->dropDownList($dataRefKurikulums)->label('Kurikulm') ?>

    <?= $form->field($model, 'tahun_ajaran')->dropDownList($dataRefTahunAjarans)->label('Tahun Ajaran') ?>

    <?= $form->field($model, 'periode_soal')->hiddenInput(['value' => 0])->label(false) ?>

    <?= $form->field($model, 'lesson')->dropDownList($dataRefLessons)->label('Mata Pelajaran') ?>

    <?= $form->field($model, 'variant')->hiddenInput(['value' => 0])->label(false) ?>

    <?= $form->field($model, 'multiple_choice_option')->hiddenInput(['value' => 'A'])->label(false) ?>

    <?= $form->field($model, 'code')->textInput()->label('Kode') ?>

    <?= $form->field($model, 'tag')->textarea(['rows' => 6])->label('Tag') ?>

    <?= $form->field($model, 'keterangan')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'hide_in_exam')->hiddenInput(['value'=> 0])->label(false) ?>

    <?= $form->field($model, 'cover')->hiddenInput()->label(false) ?>

    <?= $form->field($model, 'language')->dropDownList([ 'ID' => 'Bahasa Indonesia', 'ENG' => 'Bahasa Inggris'],['value' => !empty($model->language) ? $model->language : 1], ['prompt' => 'Pilih Bahasa'])->label('Bahasa') ?>

    <?= $form->field($model, 'status')->dropDownList([ 'PRIVATE' => 'PRIVATE', 'PUBLIC' => 'PUBLIC','TRYOUT' => 'TRYOUT'], ['value' => !empty($model->status) ? $model->status : 0])->label('Share Ke') ?>


    <?= $form->field($model, 'score_essay')->hiddenInput([ '' => '', 'BOBOT' => 'BOBOT', ], ['prompt' => ''])->label(false) ?>

    <?= $form->field($model, 'approved')->hiddenInput(['value' => 0])->label(false) ?>

    <?= $form->field($model, 'last_cached')->hiddenInput(['value' => date('Y-m-d H:i:s')])->label(false) ?>

    <?= $form->field($model, 'price')->hiddenInput(['value' => 0])->label(false) ?>

    <?php 
        if($type == 'create'):
    ?>
        <?= $form->field($model, 'user_added')->hiddenInput(['value'=> $userId])->label(false) ?>
        <?= $form->field($model, 'user_modified')->hiddenInput(['value'=> $userId])->label(false) ?>
    <?php 
        else:
    ?>
        <?= $form->field($model, 'user_added')->hiddenInput()->label(false) ?>
        <?= $form->field($model, 'user_modified')->hiddenInput(['value'=> $userId])->label(false) ?>
    <?php 
        endif;
    ?>



    <?= $form->field($model, 'date_added')->hiddenInput(['value'=> date('Y-m-d H:i:s')])->label(false) ?>

    <?= $form->field($model, 'date_modified')->hiddenInput(['value'=> date('Y-m-d H:i:s')])->label(false) ?>

    <?= $form->field($model, 'hidden')->hiddenInput(['value'=> 0])->label(false) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>
 

  

