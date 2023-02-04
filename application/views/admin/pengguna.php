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
                            <li class="breadcrumb-item active">Pengguna</li>
                        </ol>
                    </div>
                    <h4 class="page-title">Pengguna</h4>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header bg-primary text-white">
                        <button title="Tambah" class="btn btn-light btn-sm float-end" data-bs-toggle="modal" data-bs-target="#modal-form-pengguna"><i class="mdi mdi-account-plus"></i> <span class="d-none d-lg-inline">Tambah</span></button>
                        <h5>Daftar Pengguna</h5>
                    </div>
                    <div class="card-body">
                        <table id="list" class="table table-success table-bordered dt-responsive w-100 nowrap"></table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modal-form-pengguna" tabindex="-1" aria-labelledby="fm-modal-title" aria-hidden="true">
    <div class="modal-dialog">
        <div class=" modal-content">
            <div class="modal-header bg-primary text-white">
                <h5 class="modal-title">Tambah <?= @$title ?></h5>
                <a href="javascript:void(0)" data-bs-dismiss="modal"><i class="mdi mdi-close text-white"></i></a>
            </div>
            <form id="fm-pengguna" action="<?= base_url('simpan-pengguna') ?>" method="POST">
                <input type="hidden" id="user_id" name="user_id" />
                <div class="modal-body">
                    <span class="text-muted"><i>(<span class="text-danger">*</span>) Wajib diisi</i></span>

                    <div class="my-3">
                        <label for="group_id" class="form-label">Leval Pengguna<span class="text-danger">*</span></label>
                        <select class="form-control" id="group_id" name="group_id" placeholder="Pilih..." required>
                        </select>
                    </div>

                    <div class="my-3 optional" style="display: none;">
                        <label for="kode" class="form-label"><span class="text-danger">*</span></label>
                        <select class="form-control" id="kode" name="kode" placeholder="Pilih..." disabled>
                        </select>
                    </div>

                    <div class="mb-3 optional" style="display: none;">
                        <label for="nama" class="form-label">Nama Lengkap<span class="text-danger">*</span></label>
                        <input type="text" id="nama" name="nama" class="form-control" placeholder="Masukkan nama lengkap" readonly>
                    </div>

                    <div class="mb-3">
                        <label for="username" class="form-label">Nama Pengguna<span class="text-danger">*</span></label>
                        <input type="text" id="username" name="username" class="form-control" placeholder="Masukkan nama pengguna" required>
                    </div>

                    <div class="mb-3">
                        <label for="password" class="form-label">Kata Sandi<span class="text-danger">*</span></label>
                        <div class="input-group input-group-merge">
                            <input type="password" id="password" name="password" class="form-control" placeholder="Masukkan kata sandi">
                            <div class="input-group-text" data-password="false">
                                <span class="password-eye"></span>
                            </div>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" id="email" name="email" class="form-control" placeholder="Masukkan email">
                    </div>

                    <div class="mb-3">
                        <label for="keterangan" class="form-label">Keterangan</label>
                        <textarea class="form-control" id="keterangan" name="keterangan" rows="5" placeholder="Masukkan keterangan"></textarea>
                    </div>

                    <div class="mb-3">
                        <label for="status_user_id" class="form-label">Status Pengguna<span class="text-danger">*</span></label>
                        <select class="form-control" id="status_user_id" name="status_user_id" placeholder="Pilih...">
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
    var modal_form_pengguna_id = document.getElementById("modal-form-pengguna");
    var modal_form_pengguna = new bootstrap.Modal(modal_form_pengguna_id, {
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
                            return data.username.toUpperCase() + ' - ' + data.nama.toUpperCase();
                        }
                    }),
                    renderer: function(api, rowIdx, columns) {
                        var data = $.map(columns, function(col, i) {
                            if (col.data != '') {
                                return '<tr data-dt-row="' + col.rowIndex + '" data-dt-column="' + col.columnIndex + '">' +
                                    '<td class="border-bottom border-light" valign="top">' + col.title + '</td> ' +
                                    '<td class="border-bottom border-light" valign="top">:</td> ' +
                                    '<td class="border-bottom border-light" valign="top">' + col.data + '</td>' +
                                    '</tr>';
                            }
                        }).join('');

                        return data ?
                            $('<table cellpadding="5" class="w-100"/>').append(data) :
                            false;
                    }
                }
            },
            ajax: {
                url: '<?= base_url() ?>list-pengguna',
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
                    data: 'username',
                    responsivePriority: 2,
                    title: 'Nama Pengguna',
                    render: function(value, type, row) {
                        return value;
                    }
                },
                {
                    data: 'nama_group',
                    responsivePriority: 3,
                    title: 'Level',
                    render: function(value, type, row) {
                        return "<span class=\"badge badge-outline-info\">" + value + "</span>";
                    }
                },
                {
                    data: 'nama',
                    responsivePriority: 4,
                    title: 'Nama',
                    render: function(value, type, row) {
                        return value
                    }
                },
                {
                    data: 'kode',
                    responsivePriority: 7,
                    title: 'Kode',
                    render: function(value, type, row) {
                        return value
                    }
                },
                {
                    data: 'email',
                    responsivePriority: 8,
                    title: 'Email',
                    render: function(value, type, row) {
                        return value
                    }
                },
                {
                    data: 'last_login',
                    responsivePriority: 9,
                    title: 'Login',
                    render: function(value, type, row) {
                        return value
                    }
                },
                {
                    data: 'last_logout',
                    responsivePriority: 10,
                    title: 'Logout',
                    render: function(value, type, row) {
                        return value
                    }
                },
                {
                    data: 'nama_jurusan',
                    responsivePriority: 11,
                    title: 'Jurusan',
                    render: function(value, type, row) {
                        return value
                    }
                },
                {
                    data: 'nama_kelas',
                    responsivePriority: 12,
                    title: 'Kelas',
                    render: function(value, type, row) {
                        return value
                    }
                },
                {
                    data: 'keterangan',
                    responsivePriority: 13,
                    title: 'Keterangan',
                    render: function(value, type, row) {
                        return value
                    }
                },
                {
                    data: 'status_user_id',
                    title: 'Status',
                    responsivePriority: 7,
                    render: function(value, type, row) {
                        var s = "";
                        if (value == 1) {
                            s += "<span class=\"badge badge-outline-success\">" + row.nama_status_user + "</span>";
                        } else if (value == 2) {
                            s += "<span class=\"badge badge-outline-warning\">" + row.nama_status_user + "</span>";
                        } else {
                            s += "<span class=\"badge badge-outline-danger\">" + row.nama_status_user + "</span>";
                        }
                        return s;
                    }
                },
                {
                    data: 'created_at',
                    title: 'Info',
                    responsivePriority: 6,
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
                    responsivePriority: 5,
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

        $("#group_id").select2({
            minimumResultsForSearch: 10,
            dropdownParent: $('#group_id').parent(),
            placeholder: 'Pilih...',
            theme: "bootstrap-5",
            ajax: {
                url: '<?= base_url() ?>master-group',
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
        }).on('select2:select', function(e) {
            group_id_change(this.value);
        });

        $("#kode").select2({
            minimumResultsForSearch: 10,
            dropdownParent: $('#kode').parent(),
            placeholder: 'Pilih...',
            theme: "bootstrap-5",
            ajax: {
                url: '<?= base_url() ?>master-kode',
                dataType: "json",
                type: "post",
                data: function(params) {

                    var queryParameters = {
                        term: params.term,
                        group_id: $('#group_id').val(),
                    }
                    return queryParameters;
                },
                processResults: function(data) {
                    return {
                        results: $.map(data, function(item) {
                            return {
                                id: item.id,
                                text: item.id + ' - ' + item.text,
                            }
                        })
                    };
                },
            }
        });

        $("#status_user_id").select2({
            minimumResultsForSearch: 10,
            dropdownParent: $('#status_user_id').parent(),
            placeholder: 'Pilih...',
            theme: "bootstrap-5",
            ajax: {
                url: '<?= base_url() ?>master-status-user',
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

        $('#fm-pengguna').submit(function(e) {
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
                        html: 'Menyimpan Akun',
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
                        modal_form_pengguna.hide();
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
                        title: "Status: " + status + "<br> Error: " + error,
                        html: xhr.responseText,
                        allowOutsideClick: false,
                        allowEscapeKey: false,
                    });
                },
            });
        });

        modal_form_pengguna_id.addEventListener('hidden.bs.modal', function(event) {
            modal_form_pengguna_id.querySelector('.modal-title').textContent = 'Tambah Akun';
            $('#group_id,#kode').prop('disabled', false);
            user_id.value = '';
            group_id.innerHTML = '';
            kode.innerHTML = '';
            status_user_id.innerHTML = '';
            $('#fm-pengguna').trigger("reset");
        });

    });

    function edit_akun(index, e) {
        var data = data_src[index];
        select2SetVal('#group_id', data.nama_group, data.group_id);
        group_id_change(data.group_id);
        user_id.value = data.id;
        nama.value = data.nama;
        username.value = data.username;
        password.value = data.password;
        email.value = data.email;
        keterangan.value = data.keterangan;

        if (data.kode > 0 && data.group_id != 1) {
            select2SetVal('#kode', data.nama, data.kode);
        }
        $('#group_id,#kode').prop('disabled', true);
        select2SetVal('#status_user_id', data.nama_status_user, data.status_user_id);
        $(".dtr-bs-modal").find('[data-bs-dismiss="modal"]').click();
        modal_form_pengguna_id.querySelector('.modal-title').textContent = 'Edit Akun';
        modal_form_pengguna.show();
    }

    function hapus_akun(id, user, e) {
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
            html: "Pengguna (<span class=\"text-success\">" + user + "</span>) akan dihapus.",
            icon: 'question',
            showCancelButton: true,
            cancelButtonText: 'Batal',
            confirmButtonText: 'Ya, Hapus',
            allowOutsideClick: false,
            allowEscapeKey: false,
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: '<?= base_url() ?>hapus-pengguna',
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
                            $('#list').DataTable().ajax.reload();
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
            $(target).append(new Option(value + ' - ' + text, value, true, true)).trigger('change');
        }
    }

    function group_id_change(value) {
        $('#kode').html('').prop('required', false).prop('disabled', true).closest('.optional').hide();
        $('#nama').val('').prop('required', false).prop('readonly', false).closest('.optional').hide();
        if (value == 2) {
            $('#kode').html('').prop('required', true).prop('disabled', false).closest('.optional').show();
            $('[for=kode]').text('Nama Guru');
            $('#nama').prop('required', false).prop('readonly', true).closest('.optional').hide();
        } else if (value == 3) {
            $('#kode').html('').prop('required', true).prop('disabled', false).closest('.optional').show();
            $('[for=kode]').text('Nama Siswa');
            $('#nama').prop('required', false).prop('readonly', true).closest('.optional').hide();
        } else if (value == 4) {
            $('#kode').html('').prop('required', true).prop('disabled', false).closest('.optional').show();
            $('[for=kode]').text('Nama Industri');
            $('#nama').prop('required', true).prop('readonly', false).closest('.optional').show();
        } else {
            $('#kode').html('').prop('required', false).prop('disabled', true).closest('.optional').hide();
            $('#nama').prop('required', true).prop('readonly', false).closest('.optional').show();
        }
    }
</script>
<?php $this->layout->endSection() ?>
<?php $this->layout->extend('layout/_template') ?>