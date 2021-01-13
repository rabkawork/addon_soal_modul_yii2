<?php

use yii\helpers\Html;
use yii\widgets\ListView;
use yii\widgets\LinkPager;
use yii\helpers\Url;
/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Daftar Soal';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="soal-subjects-index">



    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header">
             <a href="<?php echo  Url::to(['/Soal/soal/create']); ?>" class="btn btn-primary right"> Tambah Judul </a>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <div class="table-responsive">
              
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <!-- <th style="width: 10px">#</th> -->
                      <th style="width: 10px">Judul</th>
                      <th>Jumlah</th>
                      <th>Mata Pelajaran</th>
                      <th>Kelas/Jurusan</th>
                      <th>Jenjang</th>
                      <th>Kurikulum</th>
                      <th>Tahun Ajaran</th>
                      <th>Tanggal Input</th>
                      <th>Status</th>
                      <th>Creator</th>
                      <th>Harga</th>
                      <th>Aksi</th>
                  </tr>
                </thead>
                <tbody>


                  <?php
                    foreach ($result as $key => $value) {
                  ?>


                   <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="deleteModal" aria-hidden="true">
                    <div class="modal-dialog">
                      <div class="modal-content">

                        <div class="modal-header">
                          <h4 class="modal-title" id="deleteModal">Konfirmasi</h4>
                        </div>

                        <div class="modal-body">
                          <p>Apakah anda yakin ingin menghapus data ? </p>
                        </div>

                        <div class="modal-footer">
                          <button type="button" class="btn btn-primary" data-dismiss="modal">Batal</button>
                          <a href="<?php echo  Url::to(['/Soal/soal/del', 'id' => $value['id']]); ?>" class="btn btn-danger btn-ok"><i class="fa fa-btn fa-trash-o"></i>Hapus</a>
                        </div>
                      </div>
                    </div>
                  </div>



                  <tr>
                      <td><?php echo $value['name']; ?> Tags <?php echo $value['tag']; ?></td>
                      <td><?php echo $value['jumlah_soal']; ?></td>
                      <td><?php echo $value['txt_lesson']; ?></td>
                      <td><?php echo $value['txt_class']; ?></td>
                      <td><?php echo $value['txt_jenjang']; ?></td>
                      <td><?php echo $value['txt_kurikulum']; ?></td>
                      <td><?php echo $value['txt_tahun_ajaran']; ?></td>
                      <td><?php echo $value['date_added']; ?></td>
                      <td><?php echo $value['status'] == 0 ? '<span class="badge bg-warning">Private</span>' : '<span class="badge bg-success">Public</span>'; ?></td>
                      <td></td>
                      <td>Rp. <?php echo number_format($value['price']);  ?></td>
                      <td style="width: 30px"><a href="#" data-toggle="modal" data-target="#confirm-delete" class="btn btn-danger"><i class="fa fa-trash"></i></a><a href="<?php echo  Url::to(['/Soal/soal/update', 'id' => $value['id']]); ?>" class="btn btn-primary"><i class="fa fa-edit"></i></a></td>
                    </tr>
                  <?php
                    }
                  ?>
            
                </tbody>
              </table>
            </div>
          </div>
          <!-- /.card-body -->
          <div class="card-footer clearfix">
              <?php 
                  echo  LinkPager::widget([
                      'pagination' => $pagination,
                      'options' => ['class' => 'pagination justify-content-center'],
                      'pageCssClass' => 'page-item',
                      'prevPageCssClass' => $page == 1 ? 'page-link' : '',
                      'nextPageCssClass' => $page == 1 ? 'page-item' : 'page-link',
                      'linkOptions' => ['class' => 'page-link'],
                  ]);
              ?>
          </div>
        </div>
      </div>
    </div>


</div>
