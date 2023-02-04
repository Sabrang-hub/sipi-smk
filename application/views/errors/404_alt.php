<?php $this->layout->section('content') ?>

<div class="content">

    <!-- Start Content-->
    <div class="container-fluid">

        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box">
                    <div class="page-title-right">
                        <ol class="breadcrumb m-0">
                            <li class="breadcrumb-item"><a href="javascript: void(0);">Halaman</a></li>
                            <li class="breadcrumb-item active">404 Error</li>
                        </ol>
                    </div>
                    <h4 class="page-title">404 Error</h4>
                </div>
            </div>
        </div>
        <!-- end page title -->

        <div class="row justify-content-center">
            <div class="col-lg-4">
                <div class="text-center">
                    <img src="<?= base_url() ?>assets/images/svg/file-searching.svg" alt="File not found Image" height="90">

                    <h1 class="text-error mt-4">404</h1>
                    <h4 class="text-uppercase text-danger mt-3">Halaman Tidak Ditemukan</h4>
                    <p class="text-muted mt-3">Sepertinya Anda salah belok. Jangan khawatir... itu terjadi pada yang terbaik dari kita. Berikut sedikit tip yang mungkin bisa membantu Anda kembali ke jalur semula.</p>

                    <a class="btn btn-info mt-3" href="<?= $url ?>"><i class="mdi mdi-reply"></i> Kembali</a>
                </div> <!-- end /.text-center-->
            </div> <!-- end col-->
        </div>
        <!-- end row -->

    </div> <!-- container -->

</div>

<?php $this->layout->endSection() ?>
<?php $this->layout->extend('layout/_template') ?>