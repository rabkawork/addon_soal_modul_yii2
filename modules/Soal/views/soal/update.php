<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\modules\Soal\models\SoalSubjects */

$this->title = 'Update Soal Subjects: ' . $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Soal Subjects', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="soal-subjects-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
