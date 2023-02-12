<?php $this->layout->section('style') ?>
<link href="<?= base_url() ?>assets/vendor/datatables.net-bs5/css/dataTables.bootstrap5.min.css" rel="stylesheet" type="text/css" />
<link href="<?= base_url() ?>assets/vendor/datatables.net-responsive-bs5/css/responsive.bootstrap5.min.css" rel="stylesheet" type="text/css" />
<link href="<?= base_url() ?>assets/vendor/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
<link href="<?= base_url() ?>assets/node_modules/select2-bootstrap-5-theme/dist/select2-bootstrap-5-theme.min.css" rel="stylesheet">
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
                            <li class="breadcrumb-item active"><?= @$title ?></li>
                        </ol>
                    </div>
                    <h4 class="page-title"><?= @$title ?></h4>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header bg-primary text-white">
                        <button title="Tambah" class="btn btn-light btn-sm float-end" data-bs-toggle="modal" data-bs-target="#modal-form-absensi"><i class="mdi mdi-account-plus"></i> <span class="d-none d-lg-inline">Tambah</span></button>
                        <h5>Daftar <?= @$title ?></h5>
                    </div>
                    <div class="card-body">
                        <table id="list" class="table table-success table-bordered dt-responsive w-100">
                            <thead>
                                <tr>
                                    <th class="text-center">No</th>
                                    <th class="text-center">Tanggal</th>
                                    <th class="text-center">Waktu Masuk</th>
                                    <th class="text-center">Waktu Pulang</th>
                                    <th class="text-center">Status Kehadiran</th>
                                    <th class="text-center">Keterangan</th>
                                    <th class="text-center">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modal-form-absensi" tabindex="-1" aria-labelledby="fm-modal-title" aria-hidden="true">
    <div class="modal-dialog">
        <div class=" modal-content">
            <div class="modal-header bg-primary text-white">
                <h5 class="modal-title">Absen</h5>
                <a href="javascript:void(0)" data-bs-dismiss="modal"><i class="mdi mdi-close text-white"></i></a>
            </div>
            <form id="fm-absensi" action="<?= base_url('simpan-absensi') ?>" method="POST">
                <input type="hidden" id="tanggal" name="tanggal" />
                <div class="modal-body">
                    <h6 class="font-15 mt-3">Pilih Jenis Absensi</h6>
                    <div class="form-check form-radio-success form-check-inline">
                        <input type="radio" id="hadir" name="status" class="form-check-input" value="1" checked="">
                        <label class="form-check-label" for="hadir">Hadir</label>
                    </div>
                    <div class="form-check form-radio-primary form-check-inline">
                        <input type="radio" id="izin" name="status" class="form-check-input" value="2">
                        <label class="form-check-label" for="izin">Izin</label>
                    </div>
                    <div class="form-check form-radio-info form-check-inline">
                        <input type="radio" id="sakit" name="status" class="form-check-input" value="3">
                        <label class="form-check-label" for="sakit">Sakit</label>
                    </div>

                    <div class="my-3">
                        <label for="keterangan_siswa" class="form-label">Keterangan</label>
                        <textarea id="keterangan_siswa" name="keterangan_siswa" class="form-control" rows="5" placeholder="Masukkan keterangan jika izin atau sakit"></textarea>
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
<script src="<?= base_url() ?>assets/vendor/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<?= base_url() ?>assets/vendor/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>
<script src="<?= base_url() ?>assets/vendor/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="<?= base_url() ?>assets/vendor/datatables.net-responsive-bs5/js/responsive.bootstrap5.min.js"></script>
<script src="<?= base_url() ?>assets/vendor/select2/js/select2.min.js"></script>
<script>
    var data_src = [];
    var modal_form_absensi_id = document.getElementById("modal-form-absensi");
    var modal_form_absensi = new bootstrap.Modal(modal_form_absensi_id, {
        backdrop: 'static',
        keyboard: false,
    });
    $(document).ready(function() {

        $('#list').DataTable({
            order: [
                [1, 'desc']
            ],
            columnDefs: [{
                orderable: false,
                className: 'text-center',
                targets: [0, 1, 2, 3, 4, 6],
            }, {
                orderable: false,
                targets: 5,
            }]
        });

        $('#fm-absensi').submit(function(e) {
            e.preventDefault();
            $.ajax({
                url: this.getAttribute('action'),
                type: this.getAttribute('method'),
                data: new FormData(this),
                processData: false,
                contentType: false,
                cache: false,
                async: true,
                dataType: "JSON",
                beforeSend: function() {
                    Swal.fire({
                        title: 'Loading...',
                        html: 'Menyimpan absensi',
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
                        list_absensi();
                        modal_form_absensi.hide();
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
                        html: xhr.responseText,
                        allowOutsideClick: false,
                        allowEscapeKey: false,
                    });
                },
            });
        });

        modal_form_absensi_id.addEventListener('hidden.bs.modal', function(event) {
            tanggal.value = '';
            $('#fm-absensi').trigger("reset");
        });

        list_absensi();

    });

    function list_absensi() {
        $.ajax({
            url: '<?= base_url() ?>list-absensi',
            dataType: 'json',
            type: 'post',
            beforeSend: function() {
                $('#list').DataTable().rows().remove().draw();
            },
            success: function(data) {
                data_src = data;
                var no = data.length;
                for (let i = 0; i < data.length; i++) {
                    d = data[i];
                    $('#list').DataTable().row.add([no, d.tanggal, d.waktu_masuk, d.waktu_pulang, d.status, d.keterangan_siswa, d.aksi]).draw(false);
                    no--;
                }
            },
            error: function(xhr, status, error) {
                Swal.fire({
                    icon: 'danger',
                    title: "Status: " + status + "<br> Error: " + error,
                    html: xhr.responseText,
                    allowOutsideClick: false,
                    allowEscapeKey: false,
                });
            }

        });
    }

    function edit_absensi(index, e) {
        var data = data_src[index];
        if (data.waktu_masuk == '') {
            tanggal.value = data.tanggal;
            modal_form_absensi.show();
        } else {
            Swal.fire({
                title: 'Anda ingin absen pulang?',
                icon: 'question',
                showCancelButton: true,
                cancelButtonText: 'Batal',
                confirmButtonText: 'Ya',
                allowOutsideClick: false,
                allowEscapeKey: false,
            }).then((result) => {
                if (result.isConfirmed) {
                    $.ajax({
                        url: '<?= base_url() ?>simpan-absensi',
                        data: ({
                            field: 'waktu_pulang',
                            tanggal: data.tanggal,
                        }),
                        dataType: 'json',
                        type: 'post',
                        success: function(data) {
                            if (data.stat == true) {
                                Swal.fire({
                                    title: 'Ok',
                                    html: data.msg,
                                    icon: 'success',
                                    allowOutsideClick: false,
                                    allowEscapeKey: false,
                                });
                                list_absensi();
                            } else {
                                Swal.fire({
                                    icon: 'warning',
                                    title: 'Oops...',
                                    html: data.msg,
                                    allowOutsideClick: false,
                                    allowEscapeKey: false,
                                });
                            }
                        },
                        error: function(xhr, status, error) {
                            Swal.fire({
                                icon: 'danger',
                                title: "Status: " + status + "<br> Error: " + error,
                                html: xhr.responseText,
                                allowOutsideClick: false,
                                allowEscapeKey: false,
                            });
                        }

                    });
                }
            });
        }
    }

    function hapus_absensi(id, absensi, e) {
        if ($(e.target).html() == '') {
            var $this = $(e.target).parent();
        } else {
            var $this = $(e.target);
        }
        var src = $this.html();
        $this.prop('disabled', true);
        $this.html(
            $('<i>', {
                class: "mdi mdi-loading mdi-spin"
            })
        );
        Swal.fire({
            title: 'Anda yakin?',
            html: "absensi (<span class=\"text-success\">" + absensi + "</span>) akan dihapus.",
            icon: 'question',
            showCancelButton: true,
            cancelButtonText: 'Batal',
            confirmButtonText: 'Ya, Hapus',
            allowOutsideClick: false,
            allowEscapeKey: false,
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: '<?= base_url() ?>hapus-absensi',
                    data: ({
                        id
                    }),
                    dataType: 'json',
                    type: 'post',
                    success: function(data) {
                        if (data.stat == true) {
                            Swal.fire({
                                title: 'Ok',
                                html: data.msg,
                                icon: 'success',
                                allowOutsideClick: false,
                                allowEscapeKey: false,
                            });
                        } else {
                            Swal.fire({
                                icon: 'warning',
                                title: 'Oops...',
                                html: data.msg,
                                allowOutsideClick: false,
                                allowEscapeKey: false,
                            });
                            $this.html(src);
                            $this.prop('disabled', false);
                        }
                    },
                    error: function(xhr, status, error) {
                        Swal.fire({
                            icon: 'danger',
                            title: "Status: " + status + "<br> Error: " + error,
                            html: xhr.responseText,
                            allowOutsideClick: false,
                            allowEscapeKey: false,
                        });
                        $this.html(src);
                        $this.prop('disabled', false);
                    }

                });
            } else {
                $this.html(src);
                $this.prop('disabled', false);
            }
        });
    }
</script>
<?php $this->layout->endSection() ?>
<?php $this->layout->extend('layout/_template') ?>