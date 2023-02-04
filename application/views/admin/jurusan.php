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
                            <li class="breadcrumb-item"><a href="javascript: void(0);">Master</a></li>
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
                        <button title="Tambah" class="btn btn-light btn-sm float-end" data-bs-toggle="modal" data-bs-target="#modal-form-jurusan"><i class="mdi mdi-account-plus"></i> <span class="d-none d-lg-inline">Tambah</span></button>
                        <h5>Daftar <?= @$title ?></h5>
                    </div>
                    <div class="card-body">
                        <table id="list" class="table table-success table-bordered dt-responsive w-100 nowrap"></table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modal-form-jurusan" tabindex="-1" aria-labelledby="fm-modal-title" aria-hidden="true">
    <div class="modal-dialog">
        <div class=" modal-content">
            <div class="modal-header bg-primary text-white">
                <h5 class="modal-title">Tambah <?= @$title ?></h5>
                <a href="javascript:void(0)" data-bs-dismiss="modal"><i class="mdi mdi-close text-white"></i></a>
            </div>
            <form id="fm-jurusan" action="<?= base_url('simpan-jurusan') ?>" method="POST">
                <input type="hidden" id="jurusan_id" name="jurusan_id" />
                <div class="modal-body">
                    <span class="text-muted"><i>(<span class="text-danger">*</span>) Wajib diisi</i></span>

                    <div class="my-3">
                        <label for="nama" class="form-label">Nama Jurusan<span class="text-danger">*</span></label>
                        <input type="text" id="nama" name="nama" class="form-control" placeholder="Masukkan nama jurusan" required>
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
    var modal_form_jurusan_id = document.getElementById("modal-form-jurusan");
    var modal_form_jurusan = new bootstrap.Modal(modal_form_jurusan_id, {
        backdrop: 'static',
        keyboard: false,
    });
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
            responsive: {
                details: {
                    display: $.fn.dataTable.Responsive.display.modal({
                        header: function(row) {
                            var data = row.data();
                            return data.nama.toUpperCase();
                        }
                    }),
                    renderer: function(api, rowIdx, columns) {
                        var data = $.map(columns, function(col, i) {
                            return '<tr data-dt-row="' + col.rowIndex + '" data-dt-column="' + col.columnIndex + '">' +
                                '<td class="border-bottom border-light" valign="top">' + col.title + '</td> ' +
                                '<td class="border-bottom border-light" valign="top">:</td> ' +
                                '<td class="border-bottom border-light" valign="top">' + col.data + '</td>' +
                                '</tr>';
                        }).join('');

                        return data ?
                            $('<table cellpadding="5" class="w-100"/>').append(data) :
                            false;
                    }
                }
            },
            ajax: {
                url: '<?= base_url() ?>list-jurusan',
                type: 'POST',
                data: function(d) {},
                dataSrc: function(data) {
                    data_src = data.data;
                    return data_src;
                }
            },
            columns: [{
                    data: 'no',
                    title: 'No',
                    orderable: false,
                    responsivePriority: 1,
                    render: function(value, type, row) {
                        return value;
                    }
                },
                {
                    data: 'nama',
                    responsivePriority: 2,
                    title: 'Nama jurusan',
                    render: function(value, type, row) {
                        return value;
                    }
                },
                {
                    data: 'created_at',
                    title: 'Info',
                    responsivePriority: 8,
                    render: function(value, type, row) {
                        var s = "<details><summary><span class=\"badge bg-primary\">Detail</span></summary>";
                        s += "Created at " + row.created_at;
                        s += (row.created_by != '' && row.created_by != null ? "<br>Created by " + row.created_by : '');
                        s += (row.updated_at != '' && row.updated_at != null ? "<br>Updated at " + row.updated_at : '');
                        s += (row.updated_by != '' && row.updated_by != null ? "<br>Updated by " + row.updated_by : '');
                        s += "</details>";
                        return s;
                    }
                },
                {
                    data: 'id',
                    title: 'Aksi',
                    orderable: false,
                    responsivePriority: 9,
                    render: function(value, type, row) {
                        return row.aksi;
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

        $('#fm-jurusan').submit(function(e) {
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
                        html: 'Menyimpan jurusan',
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
                        modal_form_jurusan.hide();
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

        modal_form_jurusan_id.addEventListener('hidden.bs.modal', function(event) {
            modal_form_jurusan_id.querySelector('.modal-title').textContent = 'Tambah Jurusan';
            jurusan_id.value = '';
            $('#fm-jurusan').trigger("reset");
        });

    });

    function edit_jurusan(index, e) {
        var data = data_src[index];
        jurusan_id.value = data.id;
        nama.value = data.nama;
        $(".dtr-bs-modal").find('[data-bs-dismiss="modal"]').click();
        modal_form_jurusan_id.querySelector('.modal-title').textContent = 'Edit jurusan';
        modal_form_jurusan.show();
    }

    function hapus_jurusan(id, jurusan, e) {
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
            html: "Jurusan (<span class=\"text-success\">" + jurusan + "</span>) akan dihapus.",
            icon: 'question',
            showCancelButton: true,
            cancelButtonText: 'Batal',
            confirmButtonText: 'Ya, Hapus',
            allowOutsideClick: false,
            allowEscapeKey: false,
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: '<?= base_url() ?>hapus-jurusan',
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
                            html: JSON.stringify(xhr),
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