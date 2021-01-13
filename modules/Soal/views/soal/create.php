<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\modules\Soal\models\SoalSubjects */

$this->title = 'Create Soal Subjects';
$this->params['breadcrumbs'][] = ['label' => 'Soal Subjects', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="soal-subjects-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
