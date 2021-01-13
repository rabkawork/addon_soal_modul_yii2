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
?>


              <?php $form = ActiveForm::begin(); ?>

                <?= $form->field($model, 'province')->hiddenInput()->label(false) ?>

                <?= $form->field($model, 'jenjang')->dropDownList($dataRefJenjangs) ?>

                <?= $form->field($model, 'class')->dropDownList($dataRefClass) ?>

                <?= $form->field($model, 'kurikulum')->dropDownList($dataRefKurikulums) ?>

                <?= $form->field($model, 'tahun_ajaran')->dropDownList($dataRefTahunAjarans) ?>

                <?= $form->field($model, 'periode_soal')->hiddenInput()->label(false) ?>

                <?= $form->field($model, 'lesson')->dropDownList($dataRefLessons) ?>

                <?= $form->field($model, 'variant')->hiddenInput()->label(false) ?>

                <?= $form->field($model, 'multiple_choice_option')->hiddenInput()->label(false) ?>

                <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

                <?= $form->field($model, 'code')->textInput() ?>

                <?= $form->field($model, 'tag')->textarea(['rows' => 6]) ?>

                <?= $form->field($model, 'keterangan')->textarea(['rows' => 6]) ?>

                <?= $form->field($model, 'hide_in_exam')->hiddenInput()->label(false) ?>

                <?= $form->field($model, 'price')->textInput() ?>

                <?= $form->field($model, 'cover')->hiddenInput()->label(false) ?>

                <?= $form->field($model, 'status')->dropDownList([ 0 => 'Private', '1' => 'Public', ], ['prompt' => '']) ?>

                <?= $form->field($model, 'language')->dropDownList([ 1 => 'Bahasa Indonesia', 2 => 'Bahasa Inggris', ], ['prompt' => '']) ?>

                <?= $form->field($model, 'approved')->hiddenInput()->label(false) ?>

                <?= $form->field($model, 'score_essay')->dropDownList([ '' => '', 'BOBOT' => 'BOBOT', ], ['prompt' => '']) ?>

                <?= $form->field($model, 'last_cached')->hiddenInput()->label(false) ?>

                <?= $form->field($model, 'user_added')->hiddenInput()->label(false) ?>

                <?= $form->field($model, 'user_modified')->hiddenInput()->label(false) ?>

                <?= $form->field($model, 'date_added')->hiddenInput()->label(false) ?>

                <?= $form->field($model, 'date_modified')->hiddenInput()->label(false) ?>

                <?= $form->field($model, 'hidden')->hiddenInput()->label(false) ?>

                <div class="form-group">
                    <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
                </div>

                <?php ActiveForm::end(); ?>
 

  

