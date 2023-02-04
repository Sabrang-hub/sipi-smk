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
                        <button title="Tambah" class="btn btn-light btn-sm float-end" data-bs-toggle="modal" data-bs-target="#modal-form-industri"><i class="mdi mdi-account-plus"></i> <span class="d-none d-lg-inline">Tambah</span></button>
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

<div class="modal fade" id="modal-form-industri" tabindex="-1" aria-labelledby="fm-modal-title" aria-hidden="true">
    <div class="modal-dialog">
        <div class=" modal-content">
            <div class="modal-header bg-primary text-white">
                <h5 class="modal-title">Tambah <?= @$title ?></h5>
                <a href="javascript:void(0)" data-bs-dismiss="modal"><i class="mdi mdi-close text-white"></i></a>
            </div>
            <form id="fm-industri" action="<?= base_url('simpan-industri') ?>" method="POST">
                <input type="hidden" id="industri_id" name="industri_id" />
                <div class="modal-body">
                    <span class="text-muted"><i>(<span class="text-danger">*</span>) Wajib diisi</i></span>

                    <div class="my-3">
                        <label for="nama" class="form-label">Nama Industri<span class="text-danger">*</span></label>
                        <input type="text" id="nama" name="nama" class="form-control" placeholder="Masukkan nama industri" required>
                    </div>

                    <div class="mb-3">
                        <label for="nama_pimpinan" class="form-label">Nama Pimpinan</label>
                        <input type="text" id="nama_pimpinan" name="nama_pimpinan" class="form-control" placeholder="Masukkan nama pimpinan">
                    </div>

                    <div class="mb-3">
                        <label for="alamat" class="form-label">Alamat</label>
                        <textarea class="form-control" id="alamat" name="alamat" rows="3" placeholder="Masukkan alamat"></textarea>
                    </div>

                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" id="email" name="email" class="form-control" placeholder="Masukkan email">
                    </div>

                    <div class="mb-3">
                        <label for="no_telp" class="form-label">Nomor Telepon</label>
                        <input type="text" id="no_telp" name="no_telp" class="form-control" placeholder="Masukkan nomor telepon">
                    </div>

                    <div class="mb-3">
                        <label for="jenis_usaha_id" class="form-label">Jenis Usaha<span class="text-danger">*</span> </label>
                        <select id="jenis_usaha_id" name="jenis_usaha_id" class="form-control" placeholder="Pilih..." required>
                        </select>
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
    var modal_form_industri_id = document.getElementById("modal-form-industri");
    var modal_form_industri = new bootstrap.Modal(modal_form_industri_id, {
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
                url: '<?= base_url() ?>list-industri',
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
                    title: 'Nama Industri',
                    render: function(value, type, row) {
                        return value;
                    }
                },
                {
                    data: 'nama_pimpinan',
                    responsivePriority: 5,
                    title: 'Pimpinan',
                    render: function(value, type, row) {
                        return value;
                    }
                },
                {
                    data: 'alamat',
                    responsivePriority: 6,
                    title: 'Alamat',
                    render: function(value, type, row) {
                        return value;
                    }
                },
                {
                    data: 'email',
                    responsivePriority: 7,
                    title: 'Email',
                    render: function(value, type, row) {
                        return value;
                    }
                },
                {
                    data: 'no_telp',
                    responsivePriority: 8,
                    title: 'No. Telp',
                    render: function(value, type, row) {
                        return value;
                    }
                },
                {
                    data: 'nama_jenis_usaha',
                    responsivePriority: 9,
                    title: 'Jenis Usaha',
                    render: function(value, type, row) {
                        return value;
                    }
                },
                {
                    data: 'created_at',
                    title: 'Info',
                    responsivePriority: 3,
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
                    responsivePriority: 4,
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

        $("#jenis_usaha_id").select2({
            minimumResultsForSearch: 10,
            dropdownParent: $('#jenis_usaha_id').parent(),
            placeholder: 'Pilih...',
            theme: "bootstrap-5",
            ajax: {
                url: '<?= base_url() ?>master-jenis-usaha',
                dataType: "json",
                type: "post",
                data: function(params) {

                    var queryParameters = {
                        term: params.term
                    }
                    return queryParameters;
                },
                processResults: function(data) {
                    return {
                        results: $.map(data, function(item) {
                            return {
                                id: item.id,
                                text: item.text,
                            }
                        })
                    };
                },
            }
        });

        $('#fm-industri').submit(function(e) {
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
                        html: 'Menyimpan industri',
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
                        modal_form_industri.hide();
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

        modal_form_industri_id.addEventListener('hidden.bs.modal', function(event) {
            modal_form_industri_id.querySelector('.modal-title').textContent = 'Tambah Industri';
            industri_id.value = '';
            $('#fm-industri').trigger("reset");
        });

    });

    function edit_industri(index, e) {
        var data = data_src[index];
        $.each(data, function(i, v) {
            if (i == 'jenis_usaha_id' && v > 0) {
                select2SetVal('#jenis_usaha_id', data.nama_jenis_usaha, data.jenis_usaha_id);
            } else {
                $('#' + i).val(v);
            }
        });
        $(".dtr-bs-modal").find('[data-bs-dismiss="modal"]').click();
        modal_form_industri_id.querySelector('.modal-title').textContent = 'Edit industri';
        modal_form_industri.show();
    }

    function hapus_industri(id, industri, e) {
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
            html: "Industri (<span class=\"text-success\">" + industri + "</span>) akan dihapus.",
            icon: 'question',
            showCancelButton: true,
            cancelButtonText: 'Batal',
            confirmButtonText: 'Ya, Hapus',
            allowOutsideClick: false,
            allowEscapeKey: false,
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: '<?= base_url() ?>hapus-industri',
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

    function select2SetVal(target, text, value) {
        if ($(target).find("option[value='" + value + "']").length) {
            $(target).val(value).trigger('change');
        } else {
            $(target).append(new Option(text, value, true, true)).trigger('change');
        }
    }
</script>
<?php $this->layout->endSection() ?>
<?php $this->layout->extend('layout/_template') ?>