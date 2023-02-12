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
                        <table id="list" class="table table-success table-bordered dt-responsive w-100 nowrap">
                            <thead>
                                <tr>
                                    <th class="text-center">No</th>
                                    <th class="text-center">Tanggal</th>
                                    <th class="text-center">Status Kendaraan</th>
                                    <th class="text-center">Keterangan</th>
                                    <th class="text-center">Info</th>
                                    <th class="text-center">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $period = new DatePeriod(
                                    new DateTime('2023-01-01'),
                                    new DateInterval('P1D'),
                                    new DateTime('2023-12-31')
                                );
                                foreach ($period as $key => $value) {
                                    //$value->format('Y-m-d')
                                    echo "
                                        <tr>
                                            <td>1</td>
                                            <td>" . $value->format('Y-m-d') . "</td>
                                            <td>1</td>
                                            <td>1</td>
                                            <td>1</td>
                                            <td>1</td>
                                        </tr>";
                                }
                                ?>
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
                <h5 class="modal-title">Tambah <?= @$title ?></h5>
                <a href="javascript:void(0)" data-bs-dismiss="modal"><i class="mdi mdi-close text-white"></i></a>
            </div>
            <form id="fm-absensi" action="<?= base_url('simpan-absensi') ?>" method="POST">
                <input type="hidden" id="absensi_id" name="absensi_id" />
                <div class="modal-body">
                    <span class="text-muted"><i>(<span class="text-danger">*</span>) Wajib diisi</i></span>

                    <div class="my-3">
                        <label for="nama" class="form-label">Nama absensi<span class="text-danger">*</span></label>
                        <input type="text" id="nama" name="nama" class="form-control" placeholder="Masukkan nama absensi" required>
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
                        $("#list").DataTable().ajax.reload();
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
                        text: error,
                        allowOutsideClick: false,
                        allowEscapeKey: false,
                    });
                },
            });
        });

        modal_form_absensi_id.addEventListener('hidden.bs.modal', function(event) {
            modal_form_absensi_id.querySelector('.modal-title').textContent = 'Tambah absensi';
            absensi_id.value = '';
            $('#fm-absensi').trigger("reset");
        });

    });

    function edit_absensi(index, e) {
        var data = data_src[index];
        absensi_id.value = data.id;
        nama.value = data.nama;
        $(".dtr-bs-modal").find('[data-bs-dismiss="modal"]').click();
        modal_form_absensi_id.querySelector('.modal-title').textContent = 'Edit absensi';
        modal_form_absensi.show();
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