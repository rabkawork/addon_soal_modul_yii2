<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ActiveForm;
use kartik\file\FileInput;

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


<?php if (\Yii::$app->session->hasFlash('success')): ?>
    <div class="alert alert-success alert-dismissable">
         <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
         <h4><i class="icon fa fa-check"></i>Saved!</h4>
         <?= \Yii::$app->session->getFlash('success') ?>
    </div>
<?php endif; ?>



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
				<a class="btn btn-primary" data-toggle="modal" data-target="#modalDocs"><i class="fa fa-file-excel-o"></i> Upload (DOC)</a>
			</div>
			<div class="form-group">
				<a class="btn btn-primary" data-toggle="modal" data-target="#modalExcels"><i class="fa fa-file-excel-o"></i> Upload (XLS)</a>
			</div>
			<div class="form-group">
				<button class="btn btn-primary"><i class="fa fa-accept"></i> Publish</button>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-9">
			<div class="card" id="isiDataAppend">

				<?php
					foreach ($listSoal as $key => $value) {
				?>	
						<div class="data-<?php echo $value['id']; ?>">
							<div class="card-header">
								<div class="row">
									<input type="hidden" value="<?php echo $value['id']; ?>" name="opsiActive[]" />

									<div class="col-md-6">
										<label>Urutan soal</label>
										<input type="text" class="form-control" name="ordering-<?php echo $value['id']; ?>" value="<?php echo $value['ordering']; ?>" />
									</div>
									<div class="col-md-6">

										<label>Pilih Mode soal</label>
										<select id="pilihEssayPil" onchange="getval(this,<?php echo $value['id']; ?>);" name="pilihanEssay-<?php echo $value['id']; ?>" class="form-control">
											<option value="1" <?php $value['type'] == 'MULTIPLE_CHOICE' ? 'selected' : '' ?>>Pilihan Ganda</option>
											<option value="2" <?php $value['type'] == 'ESSAY' ? 'selected' : '' ?>>Essay</option>
										</select>

									</div>
								</div>
								<div class="form-group">
									<label class="card-title">Pertanyaan</label>
									<br />
									<br />
									<textarea name="judul-<?php echo $value['id']; ?>" id="judul-<?php echo $value['id']; ?>" rows="10" cols="80"><?php echo $value['relations_questions']['description']; ?></textarea>
								</div>	
								

								<div class="form-group">
									<label for="">Attachment Pertanyaan</label>
									<input type="file"  name="attachmentjudul-<?php echo $value['id']; ?>[]" multiple />
								</div>


							</div>
							<!-- /.card-header -->
							<div class="card-body">

								<div class="form-group" id="pilgan-<?php echo $value['id']; ?>">


									<?php 
										foreach ($value['choices'] as $x => $choiceData) {
											$number = $x + 1;

											$huruf  = '';
											if($x == 0){
												$huruf = 'A';
											}
											else if($x == 1){
												$huruf = 'B';
											}
											else if($x == 2){
												$huruf = 'C';
											}
											else if($x == 3){
												$huruf = 'D';
											}
											else if($x == 4){
												$huruf = 'E';
											}
									?>
									<!-- <div class="input-group mb-3 dvi-<?php echo $value['id']; ?>-<?php echo $number; ?>">
										<div class="input-group-prepend">
											<span class="input-group-text"><input type="radio" name="jawabanPilGab-<?php echo $value['id']; ?>[]" value="<?php echo $huruf; ?>" /><?php echo $huruf; ?></span>
										</div>
										<input type="text" name="SoaljawabanPilGab-<?php echo $value['id']; ?>[]" class="form-control" placeholder="Opsi" aria-label="Isi butir soal" aria-describedby="basic-addon1" value="<?php echo $choiceData['description'] ?>">
										
										
										<input type="file"  name="photo-<?php echo $value['id']; ?>-<?php echo $number; ?>[]" />

										<a class="btn btn-danger"  onclick="return delHideDb(this,'<?php echo $value['id']; ?>','<?php echo $number; ?>','<?php echo $choiceData['id']; ?>');"><i class="fa fa-trash"></i></a>

									</div> -->


									<div class="input-group mb-3 dvi-<?php echo $value['id']; ?>-<?php echo $number; ?>">
										<div class="input-group-prepend">
											<span class="input-group-text"><input type="radio" name="jawabanPilGab-<?php echo $value['id']; ?>[]" value="<?php echo $huruf; ?>" /><?php echo $huruf; ?></span>
										</div>
										<textarea name="SoaljawabanPilGab-<?php echo $value['id']; ?>[]" class="form-control" placeholder="Opsi"><?php echo $choiceData['description'] ?></textarea>		

										
										<div class="input-group-prepend">
											<span class="input-group-text"> <input type="file"   name="photo-<?php echo $value['id']; ?>-<?php echo $number; ?>[]" /></span>
											<span class="input-group-text">
										<a class="btn btn-danger"  onclick="return delHideDb(this,'<?php echo $value['id']; ?>','<?php echo $number; ?>','<?php echo $choiceData['id']; ?>');"><i class="fa fa-trash"></i></a></span>
										</div>				   
									</div>

									<?php
										}
									?>


								</div>

								<div class="form-group" id="essay-<?php echo $value['id']; ?>" style="display:none;">
									<textarea class="form-control" name="jawabanEssay-<?php echo $value['id']; ?>" placeholder="Isi jawaban soal"><?php echo $value['relations_questions']['description']; ?></textarea>
								</div>


								<div class="form-group">
										<textarea name="pembahasan-<?php echo $value['id']; ?>" class="form-control" placeholder="Pembahasan :"><?php echo $value['explaination_relations']['description']; ?></textarea>
								</div>
								
								
								<div class="form-group">
									<label for="">Attachment Pembahasan</label>
									<input type="file"  name="file-<?php echo $value['id']; ?>-1[]" />
								</div>


								<div class="form-group">
										<a onclick="return del('<?php echo $value['id']; ?>');" class="btn btn-danger"><i class="fa fa-trash"></i> Hapus Soal</a>
								</div>
							</div>
		    			</div>

						<script type="text/javascript">
							
							ClassicEditor.create(document.querySelector("#judul-<?php echo $value['id']; ?>"), {
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
						</script>
				<?php
					}
				?>
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
				<br />
				<a class="btn btn-warning" data-toggle="modal" data-target="#uploadSoalLama" id="btnUploadSoalLama"><i class="fa fa-upload"></i></a>
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

<div class="modal fade" id="uploadSoalLama" tabindex="-1" role="dialog" aria-labelledby="exampleuploadSoalLama" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">Import Soal Public</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="row">
					<table class="table table-sm">
						<tr>
							<th scope="col">Judul</th>
							<th scope="col">Jumlah Soal</th>
							<th scope="col">Action</th>
						</tr>
						<tbody id="dataSoalPublic">
						
						</tbody>
					</table>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>



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
				<?php $form2 = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]) ?>
					<div class="form-group">


					<input type="hidden" name="check" value="doc" />

						<!-- <label for="">URL (CDN)</label>
						<input type="text" class="form-control" placeholder="URL" id="textUrl" /> -->
						<?php /// $form2->field($uploadDoc, 'file')->fileInput() 

								echo $form2->field($uploadDoc, 'file')->widget(FileInput::classname(), [
									// 'options' => ['accept' => 'image/*'],
								]); 
						?>

						
					</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<!-- <button type="button" class="btn btn-primary" id="ActionUploadDocs">Uplaod Docs</button> -->
				<?= Html::submitButton('Upload Doc', ['class' => 'btn btn-success']) ?> 
				<?php ActiveForm::end(); ?>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="modalExcels" tabindex="-1" role="dialog" aria-labelledby="exampleModalExcels" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">Upload Document (Excel)</h5>
				
				
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>

				
			</div>
			<div class="modal-body">
				<!-- <form class="form"> -->



				


				<?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]) ?>


					<input type="hidden" name="check" value="excel" />
					<div class="form-group">
						<!-- <label for="">Upload Excel (.xlsx)</label>
						<input type="file"  /> -->
						<?php  //$form->field($uploadExcel, 'file')->fileInput() ?>

						<?php echo  $form->field($uploadExcel, 'file')->widget(FileInput::classname(), [
									// 'options' => ['accept' => 'image/*'],
							]);  ?>
					</div>
			</div>
			<div class="modal-footer">

				<a href="<?php echo Yii::$app->request->baseUrl; ?>/template_xls.xlsx" class="btn btn-warning">
				<i class="fa fa-file-excel-o"></i>Template Excel</a>

				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<!-- <button type="button" class="btn btn-primary" id="ActionUploadDocs">Save changes</button>-->	
				<?= Html::submitButton('Upload Excel', ['class' => 'btn btn-success']) ?> 
				<?php ActiveForm::end(); ?>
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


	function imporsoal(id)
	{
		$.get("<?php echo Url::to(['/Soal/soal/select-soal']); ?>&id=<?php echo $model['id']; ?>&subject="+id, function(data, status) {
			if(data == "sukses"){
				alert('sukses import soal')
				window.location.reload();
			}
		});
	}

	$("#btnUploadSoalLama").click(function(){

		$.ajax({
			dataType: 'json',
			url: '<?php echo Url::to(['/Soal/soal/show-soal']); ?>',
			data: "",
			method: "GET",
			success: function(data){
				// console.log(data['data']);
				var strData = '';
				$("#dataSoalPublic").empty();
				for (let index = 0; index < data['data'].length; index++) {
					strData += `<tr>
						<td>`+data['data'][index]['name']+`</td>
						<td>`+data['data'][index]['jumlah_soal']+`</td>
						<td><a data-id="`+data['data'][index]['id']+`" class="btn btn-success importSoal" onclick="return imporsoal('`+data['data'][index]['id']+`');">Import</a></td>
					</tr>`;
				}
				$("#dataSoalPublic").append(strData);
			}
		});


	});	
	
	$("#tambahSoal").click(function() {
		// return false;
		$.post("<?php echo Url::to(['/Soal/soal/create-soal', 'subjectId' => $model['id']]); ?>", function(data, status) {

			$("#isiDataAppend").append(`
				<div class="data-` + data + `">
	              <div class="card-header">
	                <div class="row">
						<input type="hidden" value="`+data+`" name="opsiActive[]" />

		                <div class="col-md-6">
		                	<label>Urutan soal</label>
	                		<input type="text" class="form-control" name="ordering-`+data+`" value="" />
	                	</div>
		                <div class="col-md-6">

		                	<label>Pilih Mode soal</label>
			                <select id="pilihEssayPil" onchange="getval(this,` + data + `);" name="pilihanEssay-` + data + `" class="form-control">
			                	<option value="1">Pilihan Ganda</option>
			                	<option value="2">Essay</option>
			                </select>

	                	</div>
	                </div>
	                <div class="form-group">
	                	<label class="card-title">Pertanyaan</label>
	                	<br />
	                	<br />
	                	<textarea name="judul-` + data + `" id="judul-` + data + `" rows="10" cols="80">` + $("#editor").text() + `</textarea>
	                </div>	

					<div class="form-group">
					   	  <label for="">Attachment Pertanyaan</label>
						  <input type="file"  name="attachmentjudul-` + data + `[]" multiple />
					</div>
	                
	              </div>
	              <!-- /.card-header -->
	              <div class="card-body">

	              	 <div class="form-group" id="pilgan-` + data + `">
	          			<div class="input-group mb-3 dvi-` + data + `-1">
						  <div class="input-group-prepend">
						    <span class="input-group-text"><input type="radio" name="jawabanPilGab-` + data + `[]" value="A" />A</span>
						  </div>
						  <textarea name="SoaljawabanPilGab-` + data + `[]" class="form-control" placeholder="Opsi"></textarea>		

						  
						  <div class="input-group-prepend">
							<span class="input-group-text"> <input type="file"   name="photo-` + data + `-1[]" /></span>
							<span class="input-group-text"><a class="btn btn-danger"  onclick="return delHide(this,'` + data + `','1');"><i class="fa fa-trash"></i></a></span>
						  </div>				   
						</div>

						<div class="input-group mb-3 dvi-` + data + `-2">
						  <div class="input-group-prepend">
						    <span class="input-group-text"><input type="radio" name="jawabanPilGab-` + data + `[]" value="B" />B</span>
						  </div>
						  <textarea name="SoaljawabanPilGab-` + data + `[]" class="form-control" placeholder="Opsi"></textarea>
						  <div class="input-group-prepend">
							<span class="input-group-text"> <input type="file"   name="photo-` + data + `-2[]" /></span>
							<span class="input-group-text"><a class="btn btn-danger"  onclick="return delHide(this,'` + data + `','2');"><i class="fa fa-trash"></i></a></span>
						  </div>				  

						</div>


						<div class="input-group mb-3 dvi-` + data + `-3">
						  <div class="input-group-prepend">
						    <span class="input-group-text"><input type="radio" name="jawabanPilGab-` + data + `[]" value="C" />C</span>
						  </div>
						  <textarea name="SoaljawabanPilGab-` + data + `[]" class="form-control" placeholder="Opsi"></textarea>
						  <div class="input-group-prepend">
							<span class="input-group-text"> <input type="file"   name="photo-` + data + `-3[]" /></span>
							<span class="input-group-text"><a class="btn btn-danger"  onclick="return delHide(this,'` + data + `','3');"><i class="fa fa-trash"></i></a></span>
						  </div>				  

						</div>


						<div class="input-group mb-3 dvi-` + data + `-4">
						  <div class="input-group-prepend">
						    <span class="input-group-text"><input type="radio" name="jawabanPilGab-` + data + `[]" value="D" />D</span>
						  </div>
						  <textarea name="SoaljawabanPilGab-` + data + `[]" class="form-control" placeholder="Opsi"></textarea>
						  <div class="input-group-prepend">
							<span class="input-group-text"> <input type="file"   name="photo-` + data + `-4[]" /></span>
							<span class="input-group-text"><a class="btn btn-danger"  onclick="return delHide(this,'` + data + `','4');"><i class="fa fa-trash"></i></a></span>
						  </div>				  

						</div>

						<div class="input-group mb-3 dvi-` + data + `-5">
						  <div class="input-group-prepend">
						    <span class="input-group-text"><input type="radio" name="jawabanPilGab-` + data + `[]" value="E" />E</span>
						  </div>
						  <textarea name="SoaljawabanPilGab-` + data + `[]" class="form-control" placeholder="Opsi"></textarea>
						  <div class="input-group-prepend">
							<span class="input-group-text"> <input type="file"   name="photo-` + data + `-5[]" /></span>
							<span class="input-group-text"><a class="btn btn-danger"  onclick="return delHide(this,'` + data + `','5');"><i class="fa fa-trash"></i></a></span>
						  </div>				  


						</div>

	              	  </div>

	              	   <div class="form-group" id="essay-` + data + `" style="display:none;">
	                 	 <textarea class="form-control" name="jawabanEssay-` + data + `" placeholder="Isi jawaban soal"></textarea>
						  <label for="">Attachment Soal Essay</label>
						 <input type="file"   name="photoEssay-` + data + `[]" multiple />
	              	   </div>


	              	   <div class="form-group">
	              			<textarea name="pembahasan-` + data + `" class="form-control" placeholder="Pembahasan :"></textarea>
					   </div>
					
					   
					   <div class="form-group">
					   	  <label for="">Attachment Pembahasan</label>
						  <input type="file"  name="file-` + data + `-1[]" multiple />
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

	function delHideDb(sel, subjectId, urutan,dbId) {


		$.post("<?php echo Url::to(['/Soal/soal/del-pilgan']); ?>&id=" + dbId, function(data, status) {
			$(".dvi-" + subjectId + "-" + urutan).remove();
		});
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