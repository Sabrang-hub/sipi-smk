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
                    <div class="col-lg-3 col-6">
                        <div class="card text-white bg-success overflow-hidden">
                            <div class="card-body">
                                <div class="toll-free-box text-center">
                                    <h4> <i class="mdi mdi-check-decagram-outline mdi-rotate-315"></i> Hadir<br /><span class="fs-3"><?= $jumlah_hadir ?></span></h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-6">
                        <div class="card text-white bg-warning overflow-hidden">
                            <div class="card-body">
                                <div class="toll-free-box text-center">
                                    <h4> <i class="mdi mdi-alert-circle-outline"></i> Terlambat<br /><span class="fs-3"><?= $jumlah_terlambat ?></span></h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-6">
                        <div class="card text-white bg-info overflow-hidden">
                            <div class="card-body">
                                <div class="toll-free-box text-center">
                                    <h4> <i class="mdi mdi-file-document-multiple-outline"></i> Izin / Sakit<br /><span class="fs-3"><?= $jumlah_izin_sakit ?></span></h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-6">
                        <div class="card text-white bg-danger overflow-hidden">
                            <div class="card-body">
                                <div class="toll-free-box text-center">
                                    <h4> <i class="mdi mdi-alert-remove-outline"></i> Alpa<br /><span class="fs-3"><?= $jumlah_alpa ?></span></h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                Laporan Harian Terbaru
                            </div>
                            <div class="card-body">
                                <table class="table table-centered">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Keterangan</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                </table>
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