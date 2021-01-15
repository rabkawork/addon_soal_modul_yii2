<?php

use yii\helpers\Html;

?>
<div class="soal-subjects-update">

    
	<div class="row">
  		<div class="col-md-9">
    		<div class="card">
		      <div class="card-header">
    				<h3><?= $model['name'] ?></h3>
		      </div>
		    </div>
		</div>

		<div class="col-md-3">


			<!-- <form class="form"> -->
				<div class="form-group">
					<input type="file" name="" value="">
					<button class="btn btn-warning">Upload (XLS)</button>
				</div>
				<div class="form-group">
					<input type="file" name="" value="">
					<button class="btn btn-danger">Upload (Doc)</button>
				</div>
			<!-- </form> -->

			<div class="form-group">
				<button class="btn btn-primary"><i class="fa fa-accept"></i> Publish</button>
			</div>
		</div>
	</div>

	<div class="row">
	  <div class="col-md-9">
	    <div class="card">
              <div class="card-header">
                <h3 class="card-title">Isi Judul</h3>
                <textarea class="form-control"></textarea>
                <div class="form-group">
                	<label>Pilih Mode soal</label>
	                <select class="form-control">
	                	<option>Pilihan Ganda</option>
	                </select>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <div class="row">
                	
                </div>
              </div>
            
            </div>
	  </div>


	  <div class="col-md-3">
	  		<div class="card">
		      <div class="card-header bg-secondary">
		      	 General Info
		      </div>
		      <!-- /.card-header -->
		      <div class="card-body">
		        	<div class="col-sm-12">
		        		<span><strong>Subject</strong></span>
		        		<br />
		        		<span><?= $model['language'] == 1 ? 'Bahasa Indonesia' : 'Bahasa Inggris' ?></span>
		        	</div>

		      		<div class="col-sm-12">
		        		<span><strong>Mata Pelajaran</strong></span>
		        		<br />
		        		<span><?= $model['txt_lesson'] ?></span>
		        	</div>


		      		<div class="col-sm-12">
		        		<span><strong>Kurikulum</strong></span>
		        		<br />
		        		<span><?= $model['txt_kurikulum'] ?></span>
		        	</div>

		      		<div class="col-sm-12">
		        		<span><strong>Kelas</strong></span>
		        		<br />
		        		<span><?= $model['txt_class'] ?></span>
		        	</div>



		      		<div class="col-sm-12">
		        		<span><strong>Kelas</strong></span>
		        		<br />
		        		<span><?= $model['txt_class'] ?></span>
		        	</div>



		      		<div class="col-sm-12">
		        		<span><strong>Tahun Ajaran</strong></span>
		        		<br />
		        		<span><?= $model['txt_tahun_ajaran'] ?></span>
		        	</div>


		      		<div class="col-sm-12">
		        		<span><strong>Periode Soal</strong></span>
		        		<br />
		        		<span></span>
		        	</div>



		      		<div class="col-sm-12">
		        		<span><strong>Status</strong></span>
		        		<br />
		        		<span><?= $model['status'] == 0 ? '<span class="badge bg-warning">Private</span>' : '<span class="badge bg-success">Public</span>' ?></span>
		        	</div>



		      </div>
		    </div>
	  </div>
	</div>
</div>
