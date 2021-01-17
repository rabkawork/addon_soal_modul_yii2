<?php

use yii\helpers\Html;
use yii\helpers\Url;

?>


<script src="<?= Yii::$app->request->baseUrl ?>/plugins/jquery/jquery.min.js"></script>
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

    <script src="https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/katex.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/contrib/auto-render.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/contrib/mhchem.min.js"></script>
    <script src="https://cdn.jsdelivr.net/gh/isaul32/ckeditor5@c3463fe834049bf5d805d1d22402108a9c0576bd/packages/ckeditor5-build-classic/build/ckeditor.js"></script>

<!-- <div class="soal-subjects-update"> -->
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
					<!-- <input type="file" name="" value=""> -->
					<button class="btn btn-primary"><i class="fa fa-file-excel-o"></i> Upload (XLS)</button>
				</div>
				<div class="form-group">
					<!-- <input type="file" name="" value=""> -->
					<button class="btn btn-primary"><i class="fa fa-file-excel-o"></i> Upload (Doc)</button>
				</div>
			<!-- </form> -->

			<div class="form-group">
				<button class="btn btn-primary"><i class="fa fa-accept"></i> Publish</button>
			</div>
		</div>
	</div>

	<div class="row">
	  <div class="col-md-9">
	      <div class="card" id="isiDataAppend">
	    	
	    	
          </div>

			<textarea name="editor" style="display:none;" id="editor" rows="10" cols="80">
			      <p>Lorem... <span class="math-tex"> \(x=\frac{-b\pm\sqrt{b^2-4ac}}{2a} \) </span> ...ipsum</p>
			      <p>Lorem... <span class="math-tex"> \[ x=\frac{-b\pm\sqrt{b^2-4ac}}{2a} \] </span> ...ipsum</p>
			      <p>Lorem... <script type="math/tex">x+\sqrt{1-x^2}</script> ...ipsum</p>
			      <p>Lorem... <script type="math/tex; mode=display">x+\sqrt{1-x^2}</script> ...ipsum</p>
			</textarea>

			<!-- <h2>Preview</h2> -->
			<!-- <textarea id="editor-preview"></textarea>  -->

 


    
  


	  </div>

	  <div class="col-md-1">
  		<div id="navbar">
		  <a class="btn btn-primary" id="tambahSoal"><i class="fa fa-plus"></i></a>
		</div>
	  </div>
	  <div class="col-md-2">
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
<!-- </div> -->

<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
  Launch demo modal
</button> -->

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>




<script type="text/javascript">
	
	$("#tambahSoal").click(function(){
		// return false;
	  $.post("<?php echo Url::to(['/Soal/soal/create-soal','subjectId' => $model['id']]); ?>", function(data, status){


		  	$("#isiDataAppend").append(`
				<div class="data-`+data+`">
	              <div class="card-header">
	                <div class="form-group">
	                	<label>Pilih Mode soal</label>
		                <select id="pilihEssayPil" class="form-control">
		                	<option value="1">Pilihan Ganda</option>
		                	<option value="2">Essay</option>
		                </select>
	                </div>
	                <div class="form-group">
	                	<label class="card-title">Pertanyaan</label>
	                	<br />
	                	<br />

	                	<textarea name="judul-`+data+`" id="judul-`+data+`" rows="10" cols="80">`+$("#editor").text()+`</textarea>
	             	  

	                </div>	
	              </div>
	              <!-- /.card-header -->
	              <div class="card-body">

	              	 <div class="form-group" id="pilgan">
	          			<div class="input-group mb-3 dvi-`+data+`-1">
						  <div class="input-group-prepend">
						    <span class="input-group-text"><input type="radio" name="jawabanPilGab-`+data+`[]" />A</span>
						  </div>
						  <input type="text" class="form-control" placeholder="Opsi" aria-label="Isi butir soal" aria-describedby="basic-addon1">
						  <input type="file" class="form-control" name="file-`+data+`" />
						  <a class="btn btn-danger" id="hapusPilGan" onclick="return delHide("dvi-`+data+`-1");"><i class="fa fa-trash"></i></a>
						</div>

						<div class="input-group mb-3 dvi-`+data+`-2">
						  <div class="input-group-prepend">
						    <span class="input-group-text"><input type="radio" name="jawabanPilGab-`+data+`[]" />B</span>
						  </div>
						  <input type="text" class="form-control" placeholder="Opsi" aria-label="Isi butir soal" aria-describedby="basic-addon1">
						  <input type="file" class="form-control" name="file-`+data+`" />

						  <a class="btn btn-danger" id="hapusPilGan" onclick="return delHide("dvi-`+data+`-2");"><i class="fa fa-trash"></i></a>
						</div>


						<div class="input-group mb-3 dvi-`+data+`-3">
						  <div class="input-group-prepend">
						    <span class="input-group-text"><input type="radio" name="jawabanPilGab-`+data+`[]" />C</span>
						  </div>
						  <input type="text" class="form-control" placeholder="Opsi" aria-label="Isi butir soal" aria-describedby="basic-addon1">
						  <input type="file" class="form-control" name="file-`+data+`" />

						  <a class="btn btn-danger" id="hapusPilGan" onclick="return delHide("dvi-`+data+`-3");"><i class="fa fa-trash"></i></a>
						</div>




						<div class="input-group mb-3 dvi-`+data+`-4">
						  <div class="input-group-prepend">
						    <span class="input-group-text"><input type="radio" name="jawabanPilGab-`+data+`[]" />D</span>
						  </div>
						  <input type="text" class="form-control" placeholder="Opsi" aria-label="Isi butir soal" aria-describedby="basic-addon1">
						  <input type="file" class="form-control" name="file-`+data+`" />

						  <a class="btn btn-danger" id="hapusPilGan" onclick="return delHide("dvi-`+data+`-4");"><i class="fa fa-trash"></i></a>
						</div>



						<div class="input-group mb-3 dvi-`+data+`-5">
						  <div class="input-group-prepend">
						    <span class="input-group-text"><input type="radio" name="jawabanPilGab-`+data+`[]" />E</span>
						  </div>
						  <input type="text" class="form-control" placeholder="Opsi" aria-label="Isi butir soal" aria-describedby="basic-addon1">
						  <input type="file" class="form-control" name="file-`+data+`" />

						  <a class="btn btn-danger" id="hapusPilGan" onclick="return delHide("dvi-`+data+`-5");"><i class="fa fa-trash"></i></a>
						</div>


	              	  </div>

	              	   <div class="form-group" id="essay" style="display:none;">
	                 	 <textarea class="form-control" name="jawabanEssay[]" placeholder="Isi butir soal"></textarea>


	              	   </div>


	              	   <div class="form-group">
	              			<textarea name="pembahasan-`+data+`" class="form-control" placeholder="Pembahasan :"></textarea>
	              	   </div>

	              	   <div class="form-group">
	              	   		<a onclick="return del('data-`+data+`');" class="btn btn-danger"><i class="fa fa-trash"></i> Hapus Soal</a>
	              	   </div>
	              </div>
		    	</div>
			`);

			    ClassicEditor.create( document.querySelector( "#judul-"+data), {
		        math: {
							outputType: 'span'
						}
		      } )
		        .then( editor => {
		        window.editor = editor;
		        //CKEditorInspector.attach( editor );
		        // getEditorData();
		        editor.model.document.on('change:data', () => {
		          // getEditorData();
		        });
		      } )
		        .catch( error => {
		        	// console.error( 'There was a problem initializing the editor.', error );
		      } );
        		// CKEDITOR.replace('judul-'+data);

		});
	  	return false;
	});

	function delHide(id)
	{

		console.log(id);
		$(id).remove();
	}

	function del(id)
	{

		$.post("<?php echo Url::to(['/Soal/soal/create-soal','subjectId' => $model['id']]); ?>", function(data, status){
			$("."+id).remove();
		});
		return false;
	}
</script>


  <script>
      function getEditorData() {
        const data = window.editor.getData();
        // HTML
        const preview = document.getElementById('editor-preview');
        preview.innerHTML = data;
        renderMathInElement(preview); // KaTex
        // Text
        document.getElementById('editor-preview-html').innerText = data;
      }

/*      ClassicEditor.create( document.querySelector( '#editor' ), {
        math: {
					outputType: 'span'
				}
      } )
        .then( editor => {
        window.editor = editor;
        //CKEditorInspector.attach( editor );
        getEditorData();
        editor.model.document.on('change:data', () => {
          getEditorData();
        });
      } )
        .catch( error => {
        console.error( 'There was a problem initializing the editor.', error );
      } );*/
    </script>