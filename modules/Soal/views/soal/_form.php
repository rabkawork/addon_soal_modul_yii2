<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\modules\Soal\models\SoalSubjects */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-header">
         <a href="#" class="btn btn-primary right"> Tambah Jurusan </a>
      </div>
      <!-- /.card-header -->
      <div class="card-body">
        <div class="table-responsive">
              <?php $form = ActiveForm::begin(); ?>

                <?= $form->field($model, 'province')->textInput() ?>

                <?= $form->field($model, 'jenjang')->textInput() ?>

                <?= $form->field($model, 'class')->textInput() ?>

                <?= $form->field($model, 'kurikulum')->textInput() ?>

                <?= $form->field($model, 'tahun_ajaran')->textInput() ?>

                <?= $form->field($model, 'periode_soal')->textInput() ?>

                <?= $form->field($model, 'lesson')->textInput() ?>

                <?= $form->field($model, 'variant')->textInput(['maxlength' => true]) ?>

                <?= $form->field($model, 'multiple_choice_option')->dropDownList([ 1 => '1', 0 => '0', ], ['prompt' => '']) ?>

                <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

                <?= $form->field($model, 'code')->textInput() ?>

                <?= $form->field($model, 'tag')->textarea(['rows' => 6]) ?>

                <?= $form->field($model, 'keterangan')->textarea(['rows' => 6]) ?>

                <?= $form->field($model, 'hide_in_exam')->textInput() ?>

                <?= $form->field($model, 'price')->textInput() ?>

                <?= $form->field($model, 'cover')->textInput(['maxlength' => true]) ?>

                <?= $form->field($model, 'status')->dropDownList([ '0', '1', ], ['prompt' => '']) ?>

                <?= $form->field($model, 'language')->dropDownList([ 1 => '1', 2 => '2', ], ['prompt' => '']) ?>

                <?= $form->field($model, 'approved')->textInput() ?>

                <?= $form->field($model, 'score_essay')->dropDownList([ '' => '', 'BOBOT' => 'BOBOT', ], ['prompt' => '']) ?>

                <?= $form->field($model, 'last_cached')->hiddenInput()->label(false) ?>

                <?= $form->field($model, 'user_added')->hiddenInput()->label(false) ?>

                <?= $form->field($model, 'user_modified')->hiddenInput()->label(false) ?>

                <?= $form->field($model, 'date_added')->hiddenInput()->label(false) ?>

                <?= $form->field($model, 'date_modified')->hiddenInput()->label(false) ?>

                <?= $form->field($model, 'hidden')->hiddenInput() ?>

                <div class="form-group">
                    <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
                </div>

                <?php ActiveForm::end(); ?>
        </div>
      </div>
    </div>
  </div>
</div>

  

