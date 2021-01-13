<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\modules\Soal\models\SoalSubjects */

$this->title = 'Tambah Soal';
$this->params['breadcrumbs'][] = ['label' => 'Soal Subjects', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="soal-subjects-create">



	<div class="row">
  		<div class="col-md-12">
    		<div class="card">
		      <div class="card-header">
    				<h1><?= Html::encode($this->title) ?></h1>
		      </div>
		    </div>
		</div>
	</div>

	<div class="row">
	  <div class="col-md-12">
	    <div class="card">
	      <!-- <div class="card-header">
	      </div> -->
	      <!-- /.card-header -->
	      <div class="card-body">
	        <div class="table-responsive">
	        	
			    <?= $this->render('_form', [
			        'model' => $model,
			    ]) ?>

	        </div>
	      </div>
	    </div>
	  </div>
	</div>



</div>
