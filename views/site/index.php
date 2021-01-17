<?php
use yii\helpers\Url;

/* @var $this yii\web\View */

$this->title = 'My Yii Application';
?>
<div class="site-index">

     <div class="row">
          <div class="col-sm-12">
                <div class="card" >
                  <div class="card-body">
                    <h3>Info</h3>
                    <p>Untuk bisa menggunakan halaman soal, mohon untuk login terlebih dahulu.</p>
                    <a href="<?php echo  Url::to(['/site/login']); ?>" class="btn btn-primary">Login</a>
                  </div>
                </div>
          </div>
     </div>

</div>
