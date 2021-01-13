<?php
use yii\base\Widget;
use yii\widgets\LinkPager;
use yii\helpers\Url;
/* @var $this yii\web\View */

?>

<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-header">
         <a href="#" class="btn btn-primary right"> Tambah Jurusan </a>
      </div>
      <!-- /.card-header -->
      <div class="card-body">
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
                <th style="width: 40px">Aksi</th>
            </tr>
          </thead>
          <tbody>


            <?php
              foreach ($result as $key => $value) {
            ?>
            <tr>
                <td style="widtd: 10px">Judul</td>
                <td>Jumlah</td>
                <td><?php echo $value['txt_lesson']; ?></td>
                <td><?php echo $value['txt_class']; ?></td>
                <td><?php echo $value['txt_jenjang']; ?></td>
                <td><?php echo $value['txt_kurikulum']; ?></td>
                <td>Tahun Ajaran</td>
                <td>Tanggal Input</td>
                <td>Status</td>
                <td>Creator</td>
                <td><?php echo $value['price'];  ?></td>
                <td style="width: 40px">Aksi</td>
              </tr>
            <?php
              }
            ?>
      
          </tbody>
        </table>
      </div>
      <!-- /.card-body -->
      <div class="card-footer clearfix">
       <!--  <ul class="pagination pagination-sm m-0 float-right">
          <li class="page-item"><a class="page-link" href="#">&laquo;</a></li>
          <li class="page-item"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
        </ul> -->


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
