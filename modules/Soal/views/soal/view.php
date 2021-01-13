<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\modules\Soal\models\SoalSubjects */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Soal Subjects', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="soal-subjects-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'province',
            'jenjang',
            'class',
            'kurikulum',
            'tahun_ajaran',
            'periode_soal',
            'lesson',
            'variant',
            'multiple_choice_option',
            'name',
            'code',
            'tag:ntext',
            'keterangan:ntext',
            'hide_in_exam',
            'price',
            'cover',
            'status',
            'language',
            'approved',
            'score_essay',
            'last_cached',
            'user_added',
            'user_modified',
            'date_added',
            'date_modified',
            'jumlah_soal',
            'hidden',
        ],
    ]) ?>

</div>
