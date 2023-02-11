<?php $this->layout->section('style') ?>
<link href="<?= base_url() ?>assets/vendor/datatables.net-bs5/css/dataTables.bootstrap5.min.css" rel="stylesheet" type="text/css" />
<link href="<?= base_url() ?>assets/vendor/datatables.net-responsive-bs5/css/responsive.bootstrap5.min.css" rel="stylesheet" type="text/css" />
<link href="<?= base_url() ?>assets/vendor/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
<link href="<?= base_url() ?>assets/node_modules/select2-bootstrap-5-theme/dist/select2-bootstrap-5-theme.min.css" rel="stylesheet">
<link href="<?= base_url() ?>assets/vendor/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet" type="text/css" />
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
        <div class="row" id="main-table">
            <div class="col-12">
                <div class="card">
                    <div class="card-header bg-primary text-white">
                        <button title="Tambah" class="btn btn-light btn-sm float-end ms-1" data-bs-toggle="modal" data-bs-target="#modal-form-logbook"><i class="mdi mdi-book-plus"></i> <span class="d-none d-lg-inline">Tambah</span></button>
                        <button title="Laporan" class="btn btn-light btn-sm float-end ms-1 btn-laporan"><i class="mdi mdi-file-document"></i> <span class="d-none d-lg-inline">Laporan</span></button>
                        <h5>Daftar <?= @$title ?></h5>
                    </div>
                    <div class="card-body">
                        <table id="list" class="table table-success table-bordered" style="width: 1733px;">
                            <thead>
                                <tr>
                                    <th style="width:150px">Aksi</th>
                                    <th style="width:20px">No</th>
                                    <th style="width:83px">Tanggal</th>
                                    <th style="width:440px">Uraian Kegiatan</th>
                                    <th style="width:330px">Guru Pembimbing</th>
                                    <th style="width:330px">Pembimbing Lapangan</th>
                                    <th style="width:110px">Status</th>
                                    <th style="width:270px">Info</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" id="main-laporan" style="display: none;">
            <div class="col-12">
                <div class="card">
                    <div class="card-header bg-primary text-white">
                        <button title="Kembali" class="btn btn-light btn-sm float-end ms-1 btn-laporan-kembali"><i class="mdi mdi mdi-window-close"></i> <span class="d-none d-lg-inline">Kembali</span></button>
                        <h5>Pratinjau <?= @$title ?></h5>
                    </div>
                    <div class="card-body">
                        <iframe src="" frameborder="0" width="100%" height="100vh"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modal-form-logbook" tabindex="-1" aria-labelledby="fm-modal-title" aria-hidden="true">
    <div class="modal-dialog">
        <div class=" modal-content">
            <div class="modal-header bg-primary text-white">
                <h5 class="modal-title">Tambah <?= @$title ?></h5>
                <a href="javascript:void(0)" data-bs-dismiss="modal"><i class="mdi mdi-close text-white"></i></a>
            </div>
            <form id="fm-logbook" action="<?= base_url('simpan-logbook') ?>" method="POST">
                <input type="hidden" id="logbook_id" name="logbook_id" />
                <div class="modal-body">
                    <span class="text-muted"><i>(<span class="text-danger">*</span>) Wajib diisi</i></span>

                    <div class="my-3 position-relative" id="tanggal_container">
                        <label for="tanggal" class="form-label">Tanggal<span class="text-danger">*</span></label>
                        <input id="tanggal" name="tanggal" class="form-control" placeholder="dd-mm-yyyy" data-date-autoclose="true" data-date-format="dd-mm-yyyy" data-provide="datepicker" data-date-container="#tanggal_container" required>
                    </div>

                    <div class="mb-3">
                        <label for="uraian" class="form-label">Uraian Kegiatan<span class="text-danger">*</span></label>
                        <textarea class="form-control" id="uraian" name="uraian" rows="5" placeholder="Masukkan uraian kegiatan" required></textarea>
                    </div>

                    <div class="row">
                        <div class="col-12 mb-3">
                            <label for="file_foto" class="form-label">Foto</label>
                            <input type="file" id="file_foto" name="file_foto" class="form-control" required>
                        </div>
                        <div class="col-12 text-center">
                            <img id="img_preview" class="img-fluid" src="" alt="" onerror="this.onerror=null;this.src='<?= base_url('assets/images/no-img.jpg') ?>';">
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
<script src="<?= base_url() ?>assets/vendor/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<?= base_url() ?>assets/vendor/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>
<script src="<?= base_url() ?>assets/vendor/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="<?= base_url() ?>assets/vendor/datatables.net-responsive-bs5/js/responsive.bootstrap5.min.js"></script>
<script src="<?= base_url() ?>assets/vendor/select2/js/select2.min.js"></script>
<script src="<?= base_url() ?>assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
<script>
    var data_src = [];
    var modal_form_logbook_id = document.getElementById("modal-form-logbook");
    var modal_form_logbook = new bootstrap.Modal(modal_form_logbook_id, {
        backdrop: 'static',
        keyboard: false,
    });
    $(document).ready(function() {

        $("#list").DataTable({
            keys: !0,
            processing: true,
            serverSide: true,
            order: [],
            responsive: false,
            language: {
                search: "_INPUT_",
                searchPlaceholder: "Cari...",
                paginate: {
                    previous: "<i class='mdi mdi-chevron-left'>",
                    next: "<i class='mdi mdi-chevron-right'>"
                }
            },
            ajax: {
                url: '<?= base_url() ?>list-logbook',
                type: 'POST',
                data: function(d) {},
                dataSrc: function(data) {
                    data_src = data.data;
                    return data_src;
                }
            },
            columns: [{
                    data: 'id',
                    orderable: false,
                    render: function(value, type, row) {
                        return row.aksi;
                    }
                },
                {
                    data: 'no',
                    orderable: false,
                    render: function(value, type, row) {
                        return value;
                    }
                },
                {
                    data: 'tanggal',
                    render: function(value, type, row) {
                        return value;
                    }
                },
                {
                    data: 'uraian',
                    orderable: false,
                    render: function(value, type, row) {
                        var s = value + '<br/>';
                        if (s != '') {
                            s += "<img src=\"<?= base_url() ?>" + row.file_foto + "\" class=\"img-fluid mt-2 w-50\">";
                        }
                        return s;
                    }
                },
                {
                    data: 'keterangan_guru',
                    orderable: false,
                    render: function(value, type, row) {
                        if (value.length > 0) {
                            s = '<details open=""><summary><span class="badge bg-secondary">Detail</span></summary>';
                            s += "<ul style=\"padding-left: 12px;\">";
                            for (let i = 0; i < value.length; i++) {
                                s += "<li>" + value[i].keterangan + "</li>";
                            }
                            s += "</ul>";
                            s += '</details>';
                        } else {
                            s = '';
                        };
                        return s;
                    }
                },
                {
                    data: 'keterangan_pembimbing',
                    orderable: false,
                    render: function(value, type, row) {
                        if (value.length > 0) {
                            s = '<details open=""><summary><span class="badge bg-secondary">Detail</span></summary>';
                            s += "<ul style=\"padding-left: 12px;\">";
                            for (let i = 0; i < value.length; i++) {
                                s += "<li>" + value[i].keterangan + "</li>";
                            }
                            s += "</ul>";
                            s += '</details>';
                        } else {
                            s = '';
                        };
                        return s;
                    }
                },
                {
                    data: 'verifikasi_stat',
                    render: function(value, type, row) {
                        if (value == 1) {
                            value = "<span class=\"badge bg-success\">Diverifikasi</span";
                        } else if (value == 2) {
                            value = "<span class=\"badge bg-warning\">Revisi</span";
                        } else if (value == 3) {
                            value = "<span class=\"badge bg-info\">Selesai Revisi</span";
                        } else if (value == 4) {
                            value = "<span class=\"badge bg-danger\">Tolak</span";
                        } else {
                            value = "<span class=\"badge bg-secondary text-light\">Belum Diverifikasi</span";
                        }
                        return value;
                    }
                },
                {
                    data: 'created_at',
                    className: 'text-nowrap',
                    render: function(value, type, row) {
                        var s = "<details><summary><span class=\"badge bg-secondary\">Detail</span></summary>";
                        s += "Created at " + row.created_at;
                        s += (row.created_by != '' && row.created_by != null ? "<br>Created by " + row.created_by : '');
                        s += (row.updated_at != '' && row.updated_at != null ? "<br>Updated at " + row.updated_at : '');
                        s += (row.updated_by != '' && row.updated_by != null ? "<br>Updated by " + row.updated_by : '');
                        s += "</details>";
                        return s;
                    }
                },

            ],
            initComplete: function(settings, json) {
                $('#list').parent().addClass('overflow-auto');
            },
            drawCallback: function() {
                $(".dataTables_paginate > .pagination").addClass("pagination-rounded")
            },
            rowCallback: function(row, data) {
                $(row).addClass('row' + data.id);
            }
        });

        $('#fm-logbook').submit(function(e) {
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
                        html: 'Menyimpan logbook',
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
                        modal_form_logbook.hide();
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
                        icon: 'error',
                        title: status,
                        html: xhr.responseText,
                        allowOutsideClick: false,
                        allowEscapeKey: false,
                    });
                },
            });
        });

        modal_form_logbook_id.addEventListener('hidden.bs.modal', function(event) {
            modal_form_logbook_id.querySelector('.modal-title').textContent = 'Tambah Laporan Harian';
            logbook_id.value = '';
            img_preview.src = '<?= base_url('assets/images/no-img.jpg') ?>';
            $('#file_foto').prop('required', true);
            $('#fm-logbook').trigger("reset");
        });

        file_foto.onchange = evt => {
            const [file] = file_foto.files
            if (file) {
                img_preview.src = URL.createObjectURL(file);
            }
        }

        $('.btn-laporan').click(function() {
            $('#main-table').hide();
            $('iframe').css('height', $(window).height() - 360).attr('src', '<?= base_url('laporan_pkl?id=') . $this->encrypt->encode($this->session->userdata('kode')) ?>');
            $('#main-laporan').show();
        });

        $('.btn-laporan-kembali').click(function() {
            $('#main-table').show();
            $('#main-laporan').hide();
        });

    });

    function edit_logbook(index, e) {
        var data = data_src[index];
        logbook_id.value = data.id;
        tanggal.value = data.tanggal;
        uraian.value = data.uraian;
        if (data.file_foto != '') {
            img_preview.src = data.file_foto;
            $('#file_foto').prop('required', false);
        } else {
            $('#file_foto').prop('required', true);
        }
        $(".dtr-bs-modal").find('[data-bs-dismiss="modal"]').click();
        modal_form_logbook_id.querySelector('.modal-title').textContent = 'Edit Laporan Harian';
        modal_form_logbook.show();
    }

    function hapus_logbook(id, nama, e) {
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
            html: "Laporan harian " + nama + " akan dihapus.",
            icon: 'question',
            showCancelButton: true,
            cancelButtonText: 'Batal',
            confirmButtonText: 'Ya, Hapus',
            allowOutsideClick: false,
            allowEscapeKey: false,
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: '<?= base_url() ?>hapus-logbook',
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
                            $("#list").DataTable().ajax.reload();
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