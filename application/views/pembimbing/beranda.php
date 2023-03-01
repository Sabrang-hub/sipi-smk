<?php $this->layout->section('style') ?>
<link href="<?= base_url() ?>assets/vendor/cropperjs/cropper.css" rel="stylesheet">
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
        <div class="row">
            <div class="col-lg-4 col-12">
                <div class="card text-center">
                    <div class="card-body">
                        <img src="<?= base_url($this->session->userdata('file_foto')) ?>" class="rounded-circle avatar-lg img-thumbnail file_foto" alt="profile-image" data-bs-toggle="modal" data-bs-target="#modal-foto" role="button">

                        <h4 class="mb-0 mt-2"><?= $data['nama'] ?></h4>

                        <div class="text-start mt-3">
                            <h4 class="font-13 text-uppercase">Tentang :</h4>
                            <div class="row text-muted mb-2">
                                <div class="col-12 col-lg-4 font-13 fw-bold">Industri</div>
                                <div class="col-12 col-lg-8 font-13"><span class="d-none d-lg-inline me-1">:</span><?= $data['nama_industri'] ?></div>
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
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body p-0" dir="ltr">
                                <div id="rekap_tahun_pkl" class="apex-charts" data-colors="#0acf97"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

</div>

<div class="modal fade" id="modal-foto" tabindex="-1" role="dialog" aria-labelledby="modal-foto-label" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="modal-foto-label">Foto</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
            </div>
            <form id="fm-foto" action="<?= base_url('simpan-foto-pembimbing') ?>" method="POST">
                <input type="hidden" id="user_id" name="user_id" value="<?= $this->session->userdata('id') ?>" />
                <div class="modal-body">
                    <div class="row">
                        <div class="col-12">
                            <div class="mb-3">
                                <label for="file_foto" class="form-label">File Foto</label>
                                <input type="file" id="file_foto" class="form-control" placeholder="Masukkan foto">
                            </div>
                        </div>
                        <div class="col-12 text-center overflow-hidden">
                            <img id="img_preview" src="" alt="" class="img-fluid">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" title="Simpan" class="btn btn-primary btn-sm"><i class="mdi mdi-content-save"></i> <span class="d-none d-lg-inline">Simpan</span></button>
                    <button type="button" title="Batal" class="btn btn-secondary btn-sm" data-bs-dismiss="modal"><i class="mdi mdi-window-close"></i> <span class="d-none d-lg-inline">Batal</span></button>
                </div>
            </form>
        </div>
    </div>
</div>

<?php $this->layout->endSection() ?>
<?php $this->layout->section('script') ?>
<script src="<?= base_url() ?>assets/vendor/cropperjs/cropper.js"></script>
<script src="<?= base_url() ?>assets/vendor/apexcharts/apexcharts.min.js"></script>
<script>
    var cropper;
    var modal_foto_id = document.getElementById("modal-foto");
    var modal_foto = new bootstrap.Modal(modal_foto_id, {
        backdrop: 'static',
        keyboard: false,
    });
    var image = document.querySelector('#img_preview');
    $(document).ready(function(e) {

        var s = ((a = $("#rekap_tahun_pkl").data("colors")) && (o = a.split(",")), {
                chart: {
                    type: "bar",
                    height: 309,
                    sparkline: {
                        enabled: !1
                    }
                },
                stroke: {
                    width: 0,
                    curve: "straight"
                },
                fill: {
                    opacity: 0.5
                },
                series: [{
                    name: "Jumlah",
                    data: <?= json_encode($rekap_tahun_pkl['data']) ?>
                }],
                xaxis: {
                    crosshairs: {
                        width: 1
                    },
                    categories: <?= json_encode($rekap_tahun_pkl['label']) ?>
                },
                yaxis: {
                    min: 0
                },
                colors: o,
                title: {
                    text: <?= $rekap_tahun_pkl['total'] ?>,
                    offsetX: 20,
                    offsetY: 20,
                    style: {
                        fontSize: "24px"
                    }
                },
                subtitle: {
                    text: "Jumlah PKL Siswa",
                    offsetX: 20,
                    offsetY: 55,
                    style: {
                        fontSize: "14px"
                    }
                },
                tooltip: {
                    y: {
                        formatter: function(t) {
                            return t + " Siswa";
                        },
                    },
                },
            }),
            o = (new ApexCharts(document.querySelector("#rekap_tahun_pkl"), s).render(), ["#734CEA"])

        $('#fm-foto').submit(function(e) {
            e.preventDefault();
            var formdata = new FormData(this);
            canvas = cropper.getCroppedCanvas();
            if (canvas != null) {
                formdata.append('file_foto', canvas.toDataURL());
            }

            $.ajax({
                url: this.getAttribute('action'),
                type: this.getAttribute('method'),
                data: formdata,
                processData: false,
                contentType: false,
                cache: false,
                async: true,
                dataType: "JSON",
                beforeSend: function() {
                    Swal.fire({
                        title: 'Loading...',
                        html: 'Menyimpan foto',
                        didOpen: () => {
                            Swal.showLoading()
                        },
                        allowOutsideClick: () => !Swal.isLoading(),
                        allowEscapeKey: () => !Swal.isLoading(),
                    });
                },
                success: function(data) {
                    if (data.stat == true) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Ok',
                            text: data.msg,
                            allowOutsideClick: false,
                            allowEscapeKey: false,
                        });
                        modal_foto.hide();
                        $('.file_foto').attr('src', '<?= base_url() ?>' + data.file_foto);
                    } else {
                        Swal.fire({
                            icon: 'warning',
                            title: 'Oops...',
                            text: data.msg,
                            allowOutsideClick: false,
                            allowEscapeKey: false,
                        });
                    }
                },
                error: function(xhr, status, error) {
                    Swal.fire({
                        icon: 'error',
                        title: status,
                        text: error,
                        allowOutsideClick: false,
                        allowEscapeKey: false,
                    });
                },
            });
        });

        file_foto.onchange = evt => {
            const [file] = file_foto.files
            if (file) {
                img_preview.src = URL.createObjectURL(file);
                cropper.replace(URL.createObjectURL(file));
            }
        }

        modal_foto_id.addEventListener('shown.bs.modal', function(event) {
            cropper = new Cropper(image, {
                dragMode: 'move',
                aspectRatio: 1 / 1,
                autoCropArea: 1,
                restore: true,
                guides: true,
                center: true,
                highlight: false,
                cropBoxMovable: true,
                cropBoxResizable: true,
                toggleDragModeOnDblclick: false,
                movable: false,
                zoomable: false,
                rotatable: false,
                scalable: false
            });
        });

        modal_foto_id.addEventListener('hidden.bs.modal', function(event) {
            file_foto.value = '';
            cropper.destroy();
            cropper = null;
        });

    });
</script>
<?php $this->layout->endSection() ?>
<?php $this->layout->extend('layout/_template') ?>