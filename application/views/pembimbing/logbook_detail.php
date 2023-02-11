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
                            <li class="breadcrumb-item"><a href="<?= base_url('logbook') ?>"><?= @$title ?></a></li>
                            <li class="breadcrumb-item active">Detail</li>
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
                        <h5>Detail <?= @$title ?></h5>
                    </div>
                    <div class="card-body">
                        <div class="alert" style="background-color: #cef5ea;">
                            <div class="row mb-2 text-dark">
                                <div class="col-lg-3 col-12 fw-bold">Nomor Induk Siswa</div>
                                <div class="col-lg-9 col-12"><span class="d-lg-inline-block d-none">:</span> <?= $siswa['nis'] ?></div>
                            </div>
                            <div class="row mb-2 text-dark">
                                <div class="col-lg-3 col-12 fw-bold">Nama</div>
                                <div class="col-lg-9 col-12"><span class="d-lg-inline-block d-none">:</span> <?= $siswa['nama'] ?></div>
                            </div>
                            <div class="row mb-2 text-dark">
                                <div class="col-lg-3 col-12 fw-bold">Jurusan</div>
                                <div class="col-lg-9 col-12"><span class="d-lg-inline-block d-none">:</span> <?= $siswa['nama_jurusan'] ?></div>
                            </div>
                            <div class="row mb-2 text-dark">
                                <div class="col-lg-3 col-12 fw-bold">Kelas</div>
                                <div class="col-lg-9 col-12"><span class="d-lg-inline-block d-none">:</span> <?= $siswa['nama_kelas'] ?></div>
                            </div>
                            <div class="row mb-2 text-dark">
                                <div class="col-lg-3 col-12 fw-bold">Tahun Masuk</div>
                                <div class="col-lg-9 col-12"><span class="d-lg-inline-block d-none">:</span> <?= $siswa['tahun_masuk'] ?></div>
                            </div>
                            <div class="row mb-2 text-dark">
                                <div class="col-lg-3 col-12 fw-bold">Industri</div>
                                <div class="col-lg-9 col-12"><span class="d-lg-inline-block d-none">:</span> <?= $siswa['nama_industri'] ?></div>
                            </div>
                            <div class="row mb-2 text-dark">
                                <div class="col-lg-3 col-12 fw-bold">Pembimbing Lapangan</div>
                                <div class="col-lg-9 col-12"><span class="d-lg-inline-block d-none">:</span> <?= $siswa['nama_pembimbing'] ?></div>
                            </div>
                            <div class="row mb-2 text-dark">
                                <div class="col-lg-3 col-12 fw-bold">Periode</div>
                                <div class="col-lg-9 col-12"><span class="d-lg-inline-block d-none">:</span> <?= $siswa['tanggal_awal'] ?> s/d <?= $siswa['tanggal_akhir'] ?></div>
                            </div>
                        </div>
                        <table id="list" class="table table-success table-bordered" style="width: 1283px;">
                            <thead>
                                <tr>
                                    <th style="width:20px">No</th>
                                    <th style="width:83px">Tanggal</th>
                                    <th style="width:400px">Uraian Kegiatan</th>
                                    <th style="width:400px">Keterangan</th>
                                    <th style="width:110px">Status</th>
                                    <th style="width:270px">Info</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
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
    $(document).ready(function() {

        $("#list").DataTable({
            keys: !0,
            processing: true,
            serverSide: true,
            order: [],
            language: {
                search: "_INPUT_",
                searchPlaceholder: "Cari...",
                paginate: {
                    previous: "<i class='mdi mdi-chevron-left'>",
                    next: "<i class='mdi mdi-chevron-right'>"
                }
            },
            ajax: {
                url: '<?= base_url() ?>list-siswa-detail-logbook',
                type: 'POST',
                data: function(d) {
                    d.siswa_id = '<?= $siswa['siswa_id'] ?>';
                },
                dataSrc: function(data) {
                    data_src = data.data;
                    return data_src;
                }
            },
            columns: [{
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
                    data: 'keterangan_pembimbing',
                    orderable: false,
                    render: function(value, type, row) {
                        if (value.length > 0) {
                            s = '<details open=""><summary><span class="badge bg-secondary">Detail</span></summary>';
                            s += "<ul style=\"padding-left: 12px;\">";
                            for (let i = 0; i < value.length; i++) {
                                s += "<li>" + value[i].keterangan + "<a onclick=\"hapus_keterangan(" + value[i].id + ",this)\" href=\"javascript:void(0)\" title=\"Hapus Keterangan\" class=\"text-danger ms-1\"><i class=\"mdi mdi-close\"></i></a></li>";
                            }
                            s += "</ul>";
                            s += '</details>';
                        } else {
                            s = '';
                        };
                        s += '<details><summary><span class="badge bg-primary">Tambah</span></summary>';
                        s += '<textarea class="form-control my-2" placeholder="Masukkan keterangan"></textarea>';
                        s += '<button title="Simpan Keterangan" class="btn btn-primary btn-sm" onclick="simpan_keterangan(' + row.id + ',this)"><i class="mdi mdi-content-save"></i> <span class="d-none d-lg-inline">Simpan</span></button>';
                        s += '</details>';
                        return s;
                    }
                },
                {
                    data: 'verifikasi_stat',
                    className: 'text-nowrap',
                    render: function(value, type, row) {
                        if (value == 1) {
                            value = "<span class=\"badge bg-success\">Diverifikasi</span";
                        } else if (value == 2) {
                            value = "<span class=\"badge bg-warning\">Perbaikan</span";
                        } else if (value == 3) {
                            value = "<select class=\"form-control form-control-sm\" style=\"width:142px;\" onchange=\"edit_status(" + row.id + ",this)\">\
                                        <option value=\"3\" selected disabled>Telah Diperbaiki</option>\
                                        <option value=\"1\">Verifikasi</option>\
                                        <option value=\"2\">Perbaiki</option>\
                                        <option value=\"4\">Tolak</option>\
                                    </select>";
                        } else if (value == 4) {
                            value = "<select class=\"form-control form-control-sm\" style=\"width:142px;\" onchange=\"edit_status(" + row.id + ",this)\">\
                                        <option value=\"1\">Verifikasi</option>\
                                        <option value=\"2\">Perbaiki</option>\
                                        <option value=\"4\" selected>Tolak</option>\
                                    </select>";
                        } else {
                            value = "<select class=\"form-control form-control-sm\" style=\"width:142px;\" onchange=\"edit_status(" + row.id + ",this)\">\
                                        <option value=\"0\" disabled selected>Belum Diverifikasi</option>\
                                        <option value=\"1\">Verifikasi</option>\
                                        <option value=\"2\">Perbaiki</option>\
                                        <option value=\"4\">Tolak</option>\
                                    </select>";
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

    });

    function simpan_keterangan(id, e) {
        var $this = $(e);
        var src = $this.html();
        $this.prop('disabled', true);
        $this.html(
            $('<i>', {
                class: "mdi mdi-loading mdi-spin"
            })
        );
        $.ajax({
            url: '<?= base_url() ?>simpan-keterangan-logbook',
            data: ({
                id,
                keterangan: $this.parent().find('textarea').val(),
                jenis: 2,
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
                    $("#list").DataTable().ajax.reload(null, false);
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
                    icon: 'error',
                    title: "Status: " + status + "<br> Error: " + error,
                    html: xhr.responseText,
                    allowOutsideClick: false,
                    allowEscapeKey: false,
                });
                $this.html(src);
                $this.prop('disabled', false);
            }

        });
    }

    function edit_status(id, e) {
        var $this = $(e);
        $.ajax({
            url: '<?= base_url() ?>simpan-status-logbook',
            data: ({
                id,
                verifikasi_stat: $this.parent().find('select').val(),
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
                    $("#list").DataTable().ajax.reload(null, false);
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
                    title: "Status: " + status + "<br> Error: " + error,
                    html: xhr.responseText,
                    allowOutsideClick: false,
                    allowEscapeKey: false,
                });
            }

        });
    }

    function hapus_keterangan(id, e) {
        var $this = $(e);
        var src = $this.html();
        $this.prop('disabled', true);
        $this.html(
            $('<i>', {
                class: "mdi mdi-loading mdi-spin"
            })
        );
        keterangan = $this.parent().text();
        Swal.fire({
            title: 'Anda yakin?',
            html: "Keterangan \"" + keterangan + "\" akan dihapus.",
            icon: 'question',
            showCancelButton: true,
            cancelButtonText: 'Batal',
            confirmButtonText: 'Ya, Hapus',
            allowOutsideClick: false,
            allowEscapeKey: false,
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: '<?= base_url() ?>hapus-keterangan-logbook',
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