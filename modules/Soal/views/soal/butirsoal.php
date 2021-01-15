<?php

use yii\helpers\Html;

?>


<style type="text/css">
	#navbar {
	  position: fixed; /* Make it stick/fixed */
	}
	#navbar a {
	  float: left;
	  display: block;
	  color: white;
	  text-align: center;
	  padding: 15px;
	  text-decoration: none;
	}

	#navbar a:hover {
	  background-color: #ddd;
	  color: black;
	}
</style>
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
	  <div class="col-md-8">
	      <div class="card">
	    	
	    	<div class="data">
              <div class="card-header">
                <div class="form-group">
                	<label>Pilih Mode soal</label>
	                <select class="form-control">
	                	<option value="1">Pilihan Ganda</option>
	                	<option value="2">Essay</option>
	                </select>
                </div>
                <div class="form-group">
                	<label class="card-title">Isi Judul</label>
                	<textarea class="form-control"></textarea>
                </div>

                	
              </div>
              <!-- /.card-header -->
              <div class="card-body">

              	 <div class="form-group" id="pilgan">
          			<div class="input-group mb-3">
					  <div class="input-group-prepend">
					    <span class="input-group-text"><input type="radio" /></span>
					  </div>
					  <input type="text" class="form-control" placeholder="Isi butir soal" aria-label="Isi butir soal" aria-describedby="basic-addon1">
					  <button class="btn btn-danger"><i class="fa fa-trash"></i></button>
					</div>


          			<div class="input-group mb-3">
					  <div class="input-group-prepend">
					    <span class="input-group-text"><input type="radio" /></span>
					  </div>
					  <input type="text" class="form-control" placeholder="Isi butir soal" aria-describedby="basic-addon1">
					  <button class="btn btn-danger"><i class="fa fa-trash"></i></button>
					</div>


          			<div class="input-group mb-3">
					  <div class="input-group-prepend">
					    <span class="input-group-text"><input type="radio" /></span>
					  </div>
					  <input type="text" class="form-control" placeholder="Isi butir soal" aria-describedby="basic-addon1">
					  <button class="btn btn-danger"><i class="fa fa-trash"></i></button>
					</div>


          			<div class="input-group mb-3">
					  <div class="input-group-prepend">
					    <span class="input-group-text"><input type="radio" /></span>
					  </div>
					  <input type="text" class="form-control" placeholder="Isi butir soal" aria-describedby="basic-addon1">
					  <button class="btn btn-danger"><i class="fa fa-trash"></i></button>
					</div>


          			<div class="input-group mb-3">
					  <div class="input-group-prepend">
					    <span class="input-group-text"><input type="radio" /></span>
					  </div>
					  <input type="text" class="form-control" placeholder="Isi butir soal" aria-describedby="basic-addon1">
					  <button class="btn btn-danger"><i class="fa fa-trash"></i></button>
					</div>
              	  </div>

              	   <div class="form-group" id="essay">
                 	 <textarea class="form-control" placeholder="Isi butir soal"></textarea>
              	   </div>
              </div>
	    	</div>
          </div>
	  </div>

	  <div class="col-md-1">
  		<div id="navbar">
		  <a class="btn btn-primary"><i class="fa fa-plus"></i></a>
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
