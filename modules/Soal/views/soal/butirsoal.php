<?php

use yii\helpers\Html;
use yii\helpers\Url;

?>

<script src="<?= Yii::$app->request->baseUrl ?>/plugins/jquery/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/katex.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/contrib/auto-render.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/contrib/mhchem.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/isaul32/ckeditor5@c3463fe834049bf5d805d1d22402108a9c0576bd/packages/ckeditor5-build-classic/build/ckeditor.js"></script>

<style type="text/css">
	#navbar {
		position: fixed;
		/* Make it stick/fixed */
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

<form action="<?php echo Yii::$app->getUrlManager()->getBaseUrl() . Url::to(['/Soal/soal/soal-publish']); ?>&id=<?= $model['id'] ?>" method="post" enctype="multipart/form-data">
	<!-- <div class="soal-subjects-update"> -->


	<?= yii\helpers\Html::hiddenInput(Yii::$app->request->csrfParam, Yii::$app->request->csrfToken) ?>

	<div class="row">
		<div class="col-md-9">
			<div class="card">
				<div class="card-header">
					<h3><?= $model['name'] ?></h3>
				</div>
			</div>
		</div>

		<div class="col-md-3">
			<div class="form-group">
				<a class="btn btn-primary" data-toggle="modal" data-target="#modalDocs"><i class="fa fa-file-excel-o"></i> Upload (XLS)</a>
			</div>
			<div class="form-group">
				<a class="btn btn-primary" data-toggle="modal" data-target="#modalExcels"><i class="fa fa-file-excel-o"></i> Upload (Doc)</a>
			</div>
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
			<p>Contoh Katex ... <span class="math-tex"> \[x=\frac{-b\pm\sqrt{b^2-4ac}}{2a} \] </span> </p>
			<p>Contoh Katex ... <span class="math-tex"> \[ x=\frac{-b\pm\sqrt{b^2-4ac}}{2a} \] </span> ...ipsum</p>
			<!-- <p>Contoh <script type="math/tex">x+\sqrt{1-x^2}</script> ...ipsum</p> -->
			<!-- <p>Contoh <script type="math/tex; mode=display">x+\sqrt{1-x^2}</script> ...ipsum</p>  -->
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

</form>
<!-- </div> -->

<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalDocs">
	Launch demo modal
</button> -->

<!-- Modal -->
<div class="modal fade" id="modalDocs" tabindex="-1" role="dialog" aria-labelledby="exampleModalDocs" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">Upload Document (doc)</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form action="#" class="form">
					<div class="form-group">
						<label for="">URL (CDN)</label>
						<input type="text" class="form-control" placeholder="URL" id="textUrl" />
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary" id="ActionUploadDocs">Uplaod Docs</button>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="modalExcels" tabindex="-1" role="dialog" aria-labelledby="exampleModalExcels" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">Upload Document (doc)</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form class="form">
					<div class="form-group">
						<label for="">Upload Excel (.xlsx)</label>
						<input type="file" class="form-control" />
					</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary" id="ActionUploadDocs">Save changes</button>
				</form>
			</div>
		</div>
	</div>
</div>





<script type="text/javascript">
	function getval(sel, getId) {
		// console.log(sel.value + " " + getId);
		if (sel.value == 1) {
			$("#pilgan-" + getId).show();
			$("#essay-" + getId).hide();
		} else {
			$("#pilgan-" + getId).hide();
			$("#essay-" + getId).show();
		}
	}



	$("#tambahSoal").click(function() {
		// return false;
		$.post("<?php echo Url::to(['/Soal/soal/create-soal', 'subjectId' => $model['id']]); ?>", function(data, status) {

			$("#isiDataAppend").append(`
				<div class="data-` + data + `">
	              <div class="card-header">
	                <div class="row">
						<input type="hidden" value="`+data+`" name="opsiActive[]" />
		                <div class="col-md-6">

		                	<label>Pilih Mode soal</label>
			                <select id="pilihEssayPil" onchange="getval(this,` + data + `);" name="pilihanEssay-` + data + `" class="form-control">
			                	<option value="1">Pilihan Ganda</option>
			                	<option value="2">Essay</option>
			                </select>

	                	</div>

		                <div class="col-md-6">
		                	<label>Urutan soal</label>
	                		<input type="text" class="form-control" name="ordering-`+data+`" value="" />
	                	</div>
	                </div>
	                <div class="form-group">
	                	<label class="card-title">Pertanyaan</label>
	                	<br />
	                	<br />
	                	<textarea name="judul-` + data + `" id="judul-` + data + `" rows="10" cols="80">` + $("#editor").text() + `</textarea>
	                </div>	
	                
	              </div>
	              <!-- /.card-header -->
	              <div class="card-body">

	              	 <div class="form-group" id="pilgan-` + data + `">
	          			<div class="input-group mb-3 dvi-` + data + `-1">
						  <div class="input-group-prepend">
						    <span class="input-group-text"><input type="radio" name="jawabanPilGab-` + data + `[]" value="A" />A</span>
						  </div>
						  <input type="text" name="SoaljawabanPilGab-` + data + `[]" class="form-control" placeholder="Opsi" aria-label="Isi butir soal" aria-describedby="basic-addon1">
						  
						  
						  <input type="file" class="form-control" name="photo-` + data + `-1[]" />

						  <a class="btn btn-danger"  onclick="return delHide(this,'` + data + `','1');"><i class="fa fa-trash"></i></a>

						</div>

						<div class="input-group mb-3 dvi-` + data + `-2">
						  <div class="input-group-prepend">
						    <span class="input-group-text"><input type="radio" name="jawabanPilGab-` + data + `[]" value="B" />B</span>
						  </div>
						  <input type="text" name="SoaljawabanPilGab-` + data + `[]" class="form-control" placeholder="Opsi" aria-label="Isi butir soal" aria-describedby="basic-addon1">

						  <input type="file" class="form-control" name="photo-` + data + `-2[]" />
						  <a class="btn btn-danger"  onclick="return delHide(this,'` + data + `','2');"><i class="fa fa-trash"></i></a>

						</div>


						<div class="input-group mb-3 dvi-` + data + `-3">
						  <div class="input-group-prepend">
						    <span class="input-group-text"><input type="radio" name="jawabanPilGab-` + data + `[]" value="C" />C</span>
						  </div>
						  <input type="text" name="SoaljawabanPilGab-` + data + `[]" class="form-control" placeholder="Opsi" aria-label="Isi butir soal" aria-describedby="basic-addon1">

						  <input type="file" class="form-control" name="photo-` + data + `-3[]" />
						  <a class="btn btn-danger"  onclick="return delHide(this,'` + data + `','3');"><i class="fa fa-trash"></i></a>

						</div>


						<div class="input-group mb-3 dvi-` + data + `-4">
						  <div class="input-group-prepend">
						    <span class="input-group-text"><input type="radio" name="jawabanPilGab-` + data + `[]" value="D" />D</span>
						  </div>
						  <input type="text" name="SoaljawabanPilGab-` + data + `[]" class="form-control" placeholder="Opsi" aria-label="Isi butir soal" aria-describedby="basic-addon1">

						  <input type="file" class="form-control" name="photo-` + data + `-4[]" />

						  <a class="btn btn-danger"  onclick="return delHide(this,'` + data + `','4');"><i class="fa fa-trash"></i></a>

						</div>

						<div class="input-group mb-3 dvi-` + data + `-5">
						  <div class="input-group-prepend">
						    <span class="input-group-text"><input type="radio" name="jawabanPilGab-` + data + `[]" value="E" />E</span>
						  </div>
						  <input type="text" name="SoaljawabanPilGab-` + data + `[]" class="form-control" placeholder="Opsi" aria-label="Isi butir soal" aria-describedby="basic-addon1">

						  <input type="file" class="form-control" name="photo-` + data + `-5[]" />

						  <a class="btn btn-danger"  onclick="return delHide(this,'` + data + `','5');"><i class="fa fa-trash"></i></a>


						</div>

	              	  </div>

	              	   <div class="form-group" id="essay-` + data + `" style="display:none;">
	                 	 <textarea class="form-control" name="jawabanEssay-` + data + `" placeholder="Isi jawaban soal"></textarea>
	              	   </div>


	              	   <div class="form-group">
	              			<textarea name="pembahasan-` + data + `" class="form-control" placeholder="Pembahasan :"></textarea>
					   </div>
					
					   
					   <div class="form-group">
					   	  <label for="">Attachment</label>
						  <input type="file" class="form-control" name="file-` + data + `-1[]" />
					   </div>


	              	   <div class="form-group">
	              	   		<a onclick="return del(` + data + `);" class="btn btn-danger"><i class="fa fa-trash"></i> Hapus Soal</a>
	              	   </div>
	              </div>
		    	</div>
			`);

			ClassicEditor.create(document.querySelector("#judul-" + data), {
					math: {
						outputType: 'span'
					}
				})
				.then(editor => {
					window.editor = editor;
					editor.model.document.on('change:data', () => {
						// getEditorData();
					});
				})
				.catch(error => {
					// console.error( 'There was a problem initializing the editor.', error );
				});
			// CKEDITOR.replace('judul-'+data);

		});
		return false;
	});

	function delHide(sel, subjectId, urutan) {
		$(".dvi-" + subjectId + "-" + urutan).remove();
		return false;
	}

	function del(id) {

		$.post("<?php echo Url::to(['/Soal/soal/del-soal']); ?>&id=" + id, function(data, status) {
			$(".data-" + id).remove();
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
</script>