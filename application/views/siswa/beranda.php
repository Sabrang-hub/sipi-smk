<?php $this->layout->section('style') ?>
<style>
    .gd-purple {
        background: hsla(262, 44%, 59%, 1);

        background: linear-gradient(315deg, hsla(262, 44%, 59%, 1) 0%, hsla(244, 47%, 53%, 1) 100%);

        background: -moz-linear-gradient(315deg, hsla(262, 44%, 59%, 1) 0%, hsla(244, 47%, 53%, 1) 100%);

        background: -webkit-linear-gradient(315deg, hsla(262, 44%, 59%, 1) 0%, hsla(244, 47%, 53%, 1) 100%);

        filter: progid: DXImageTransform.Microsoft.gradient(startColorstr="#8A68C5", endColorstr="#5750C0", GradientType=1);
    }

    .gd-danger {
        background: hsla(342, 84%, 65%, 1);

        background: linear-gradient(315deg, hsla(342, 84%, 65%, 1) 0%, hsla(317, 44%, 57%, 1) 100%);

        background: -moz-linear-gradient(315deg, hsla(342, 84%, 65%, 1) 0%, hsla(317, 44%, 57%, 1) 100%);

        background: -webkit-linear-gradient(315deg, hsla(342, 84%, 65%, 1) 0%, hsla(317, 44%, 57%, 1) 100%);

        filter: progid: DXImageTransform.Microsoft.gradient(startColorstr="#F15D8A", endColorstr="#C262A7", GradientType=1);
    }

    .gd-warning {
        background: hsla(39, 100%, 58%, 1);

        background: linear-gradient(315deg, hsla(39, 100%, 58%, 1) 0%, hsla(17, 100%, 67%, 1) 100%);

        background: -moz-linear-gradient(315deg, hsla(39, 100%, 58%, 1) 0%, hsla(17, 100%, 67%, 1) 100%);

        background: -webkit-linear-gradient(315deg, hsla(39, 100%, 58%, 1) 0%, hsla(17, 100%, 67%, 1) 100%);

        filter: progid: DXImageTransform.Microsoft.gradient(startColorstr="#FFB42B", endColorstr="#FF8655", GradientType=1);
    }

    .gd-primary {
        background: hsla(200, 89%, 59%, 1);

        background: linear-gradient(315deg, hsla(200, 89%, 59%, 1) 0%, hsla(216, 50%, 56%, 1) 100%);

        background: -moz-linear-gradient(315deg, hsla(200, 89%, 59%, 1) 0%, hsla(216, 50%, 56%, 1) 100%);

        background: -webkit-linear-gradient(315deg, hsla(200, 89%, 59%, 1) 0%, hsla(216, 50%, 56%, 1) 100%);

        filter: progid: DXImageTransform.Microsoft.gradient(startColorstr="#39B7F4", endColorstr="#5783C7", GradientType=1);
    }

    .gd-success {
        background: hsla(188, 45%, 64%, 1);

        background: linear-gradient(315deg, hsla(188, 45%, 64%, 1) 0%, hsla(188, 75%, 28%, 1) 100%);

        background: -moz-linear-gradient(315deg, hsla(188, 45%, 64%, 1) 0%, hsla(188, 75%, 28%, 1) 100%);

        background: -webkit-linear-gradient(315deg, hsla(188, 45%, 64%, 1) 0%, hsla(188, 75%, 28%, 1) 100%);

        filter: progid: DXImageTransform.Microsoft.gradient(startColorstr="#78C1CC", endColorstr="#126D7C", GradientType=1);
    }

    .gd-info {
        background: hsla(187, 72%, 56%, 1);

        background: linear-gradient(315deg, hsla(187, 72%, 56%, 1) 0%, hsla(202, 90%, 37%, 1) 100%);

        background: -moz-linear-gradient(315deg, hsla(187, 72%, 56%, 1) 0%, hsla(202, 90%, 37%, 1) 100%);

        background: -webkit-linear-gradient(315deg, hsla(187, 72%, 56%, 1) 0%, hsla(202, 90%, 37%, 1) 100%);

        filter: progid: DXImageTransform.Microsoft.gradient(startColorstr="#3DCCE0", endColorstr="#0976B4", GradientType=1);
    }
</style>
<?php $this->layout->endSection() ?>

<?php $this->layout->section('content') ?>

<div class="content">

    <div class="container-fluid">

        <div class="row">
            <div class="col-12">
                <div class="page-title-box">
                    <div class="page-title-right">
                        <ol class="breadcrumb m-0">
                            <li class="breadcrumb-item"><a href="javascript: void(0);">Home</a></li>
                            <li class="breadcrumb-item active">Beranda</li>
                        </ol>
                    </div>
                    <h4 class="page-title"><?= @$title ?></h4>
                </div>
            </div>
        </div>
        <?php if ($status_absen_hari_ini < 2) : ?>
            <div class="row">
                <div class="col-12">
                    <a href="<?= base_url('absensi') ?>">
                        <div class="card cta-box bg-danger text-white">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <div class="w-100 overflow-hidden">
                                        <h2 class="mt-0"><i class="mdi mdi-bullhorn-outline"></i></h2>
                                        <h3 class="m-0 fw-normal cta-box-title">
                                            <?php
                                            if ($status_absen_hari_ini == 1) {
                                                echo "Jangan lupa absen pulang!";
                                            } elseif ($status_absen_hari_ini == 0) {
                                                echo "Anda belum melakukan absensi!";
                                            }
                                            ?>
                                            <i class="mdi mdi-arrow-right-bold-outline"></i>
                                        </h3>
                                    </div>
                                    <img class="ms-3" src="assets/images/svg/email-campaign.svg" alt="Generic placeholder image" width="120">
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        <?php endif; ?>
        <div class="row">
            <div class="col-lg-4 col-12">
                <div class="card text-center">
                    <div class="card-body">
                        <img src="<?= base_url($this->session->userdata('foto')) ?>" class="rounded-circle avatar-lg img-thumbnail" alt="profile-image">

                        <h4 class="mb-0 mt-2"><?= $data['nama'] ?></h4>
                        <p class="text-muted font-14"><?= $data['nis'] ?></p>

                        <div class="text-start mt-3">
                            <h4 class="font-13 text-uppercase">Tentang :</h4>
                            <div class="row text-muted mb-2">
                                <div class="col-12 col-lg-4 font-13 fw-bold">Jurusan</div>
                                <div class="col-12 col-lg-8 font-13"><span class="d-none d-lg-inline me-1">:</span><?= $data['nama_jurusan'] ?></div>
                            </div>
                            <div class="row text-muted mb-2">
                                <div class="col-12 col-lg-4 font-13 fw-bold">Kelas</div>
                                <div class="col-12 col-lg-8 font-13"><span class="d-none d-lg-inline me-1">:</span><?= $data['nama_kelas'] ?></div>
                            </div>
                            <div class="row text-muted mb-2">
                                <div class="col-12 col-lg-4 font-13 fw-bold">Angkatan</div>
                                <div class="col-12 col-lg-8 font-13"><span class="d-none d-lg-inline me-1">:</span><?= $data['tahun_masuk'] ?></div>
                            </div>
                            <div class="row text-muted mb-2">
                                <div class="col-12 col-lg-4 font-13 fw-bold">Lokasi PKL</div>
                                <div class="col-12 col-lg-8 font-13"><span class="d-none d-lg-inline me-1">:</span><?= $data['nama_industri'] ?></div>
                            </div>
                            <div class="row text-muted mb-2">
                                <div class="col-12 col-lg-4 font-13 fw-bold">Periode</div>
                                <div class="col-12 col-lg-8 font-13"><span class="d-none d-lg-inline me-1">:</span><?= date('d/m/Y', strtotime($data['tanggal_awal'])) ?> s/d <?= date('d/m/Y', strtotime($data['tanggal_akhir'])) ?></div>
                            </div>
                            <div class="row text-muted mb-2">
                                <div class="col-12 col-lg-4 font-13 fw-bold">Guru Pemb.</div>
                                <div class="col-12 col-lg-8 font-13"><span class="d-none d-lg-inline me-1">:</span><?= $data['nama_guru'] ?></div>
                            </div>
                            <div class="row text-muted mb-2">
                                <div class="col-12 col-lg-4 font-13 fw-bold">Pemb. Lapangan</div>
                                <div class="col-12 col-lg-8 font-13"><span class="d-none d-lg-inline me-1">:</span><?= $data['nama_pembimbing'] ?></div>
                            </div>
                        </div>

                    </div> <!-- end card-body -->
                </div>
            </div>
            <div class="col-lg-8 col-12">
                <div class="row">
                    <div class="col-lg-4 col-12">
                        <div class="card text-white gd-purple overflow-hidden">
                            <div class="card-body">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="text-left">
                                        <img src="<?= base_url() ?>assets/images/small/to-do-list-success.png" alt="" class="img-fluid" width="65px">
                                    </div>
                                    <div class="text-end text-nowrap">
                                        <h4>On - Time</h4>
                                        <span class="fs-1 fw-bold"><?= $jumlah_hadir ?></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-12">
                        <div class="card text-white gd-danger overflow-hidden">
                            <div class="card-body">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="text-left">
                                        <img src="<?= base_url() ?>assets/images/small/to-do-list-danger.png" alt="" class="img-fluid" width="65px">
                                    </div>
                                    <div class="text-end text-nowrap">
                                        <h4>Terlambat</h4>
                                        <span class="fs-1 fw-bold"><?= $jumlah_terlambat ?></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-12">
                        <div class="card text-white gd-warning overflow-hidden">
                            <div class="card-body">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="text-left">
                                        <img src="<?= base_url() ?>assets/images/small/hourglass.png" alt="" class="img-fluid" width="55px">
                                    </div>
                                    <div class="text-end text-nowrap">
                                        <h4>Belum Absen</h4>
                                        <span class="fs-1 fw-bold"><?= $jumlah_belum_absen ?></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-12">
                        <div class="card text-white gd-primary overflow-hidden">
                            <div class="card-body">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="text-left">
                                        <img src="<?= base_url() ?>assets/images/small/envelope.png" alt="" class="img-fluid" width="55px">
                                    </div>
                                    <div class="text-end text-nowrap">
                                        <h4>Izin</h4>
                                        <span class="fs-1 fw-bold"><?= $jumlah_izin ?></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-12">
                        <div class="card text-white gd-success overflow-hidden">
                            <div class="card-body">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="text-left">
                                        <img src="<?= base_url() ?>assets/images/small/masker.png" alt="" class="img-fluid" width="73px">
                                    </div>
                                    <div class="text-end text-nowrap">
                                        <h4>Sakit</h4>
                                        <span class="fs-1 fw-bold"><?= $jumlah_sakit ?></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-12">
                        <div class="card text-white gd-info overflow-hidden">
                            <div class="card-body">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="text-left">
                                        <img src="<?= base_url() ?>assets/images/small/file-danger.png" alt="" class="img-fluid" width="65px">
                                    </div>
                                    <div class="text-end text-nowrap">
                                        <h4>Alpa</h4>
                                        <span class="fs-1 fw-bold"><?= $jumlah_alpa ?></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

</div>

<?php $this->layout->endSection() ?>
<?php $this->layout->extend('layout/_template') ?>