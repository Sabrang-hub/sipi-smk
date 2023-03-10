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
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header bg-primary text-white">
                        <h5>Daftar <?= @$title ?></h5>
                    </div>
                    <div class="card-body">
                        <table id="list" class="table bg-success bg-opacity-10 table-bordered dt-responsive w-100 nowrap"></table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modal-form-kelompok" tabindex="-1" aria-labelledby="fm-modal-title" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h5 class="modal-title">Tambah <?= @$title ?></h5>
                <a href="javascript:void(0)" data-bs-dismiss="modal"><i class="mdi mdi-close text-white"></i></a>
            </div>
            <form id="fm-kelompok" action="<?= base_url('simpan-kelompok') ?>" method="POST">
                <input type="hidden" id="kelompok_id" name="kelompok_id">
                <div class="modal-body">
                    <span class="text-muted"><i>(<span class="text-danger">*</span>) Wajib diisi</i></span>
                    <div class="row">
                        <div class="col-lg-6 col-12">
                            <div class="my-3">
                                <label for="industri_id" class="form-label">Nama Industri<span class="text-danger">*</span></label>
                                <select id="industri_id" name="industri_id" class="form-control" required disabled></select>
                            </div>
                        </div>
                        <div class="col-lg-6 col-12">
                            <div class="my-3">
                                <label for="guru_id" class="form-label">Guru Pembimbing<span class="text-danger">*</span></label>
                                <select id="guru_id" name="guru_id" class="form-control" required disabled></select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-5 col-12">
                            <div class="mb-3">
                                <label for="siswa_id" class="form-label">Nama Siswa<span class="text-danger">*</span></label>
                                <select id="siswa_id" name="siswa_id" class="form-control" required disabled></select>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="mb-3 position-relative" id="tanggal_awal_container">
                                <label for="tanggal_awal" class="form-label">Tanggal Mulai<span class="text-danger">*</span></label>
                                <input id="tanggal_awal" name="tanggal_awal" class="form-control" placeholder="dd-mm-yyyy" data-date-autoclose="true" data-date-format="dd-mm-yyyy" data-provide="datepicker" data-date-container="#tanggal_awal_container" required>
                            </div>
                        </div>
                        <div class="col-1 pt-4 d-lg-block d-none text-center">S/D</div>
                        <div class="col-lg-3">
                            <div class="mb-3 position-relative" id="tanggal_akhir_container">
                                <label for="tanggal_akhir" class="form-label">Tanggal Berakhir<span class="text-danger">*</span></label>
                                <input id="tanggal_akhir" name="tanggal_akhir" class="form-control" placeholder="dd-mm-yyyy" data-date-autoclose="true" data-date-format="dd-mm-yyyy" data-provide="datepicker" data-date-container="#tanggal_akhir_container" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="mb-3">
                                <label for="pembimbing_id" class="form-label">Pembimbing Lapangan</label>
                                <select id="pembimbing_id" name="pembimbing_id" class="form-control"></select>
                            </div>
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
    var data_sub_src = [];
    var modal_form_kelompok_id = document.getElementById("modal-form-kelompok");
    var modal_form_kelompok = new bootstrap.Modal(modal_form_kelompok_id, {
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
                            return data.siswa_id + ' - ' + data.nama_siswa.toUpperCase();
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
                url: '<?= base_url() ?>list-kelompok',
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
                    data: 'nama_siswa',
                    responsivePriority: 2,
                    title: 'Siswa',
                    render: function(value, type, row) {
                        return row.siswa_id + ' - ' + value;
                    }
                },
                {
                    data: 'nama_industri',
                    responsivePriority: 3,
                    title: 'Industri',
                    render: function(value, type, row) {
                        return value;
                    }
                },
                {
                    data: 'nama_guru',
                    responsivePriority: 4,
                    title: 'Nama Guru',
                    render: function(value, type, row) {
                        return value;
                    }
                },
                {
                    data: 'nama_pembimbing',
                    responsivePriority: 5,
                    title: 'Pemb. Lapangan',
                    render: function(value, type, row) {
                        return value;
                    }
                },
                {
                    data: 'created_at',
                    title: 'Info',
                    responsivePriority: 7,
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
                    responsivePriority: 6,
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

        $("#industri_id").select2({
            minimumResultsForSearch: 10,
            dropdownParent: $('#industri_id').parent(),
            placeholder: 'Pilih...',
            theme: "bootstrap-5",
            ajax: {
                url: '<?= base_url() ?>master-industri',
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

        $("#guru_id").select2({
            minimumResultsForSearch: 10,
            dropdownParent: $('#guru_id').parent(),
            placeholder: 'Pilih...',
            theme: "bootstrap-5",
            ajax: {
                url: '<?= base_url() ?>master-guru',
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

        $("#siswa_id").select2({
            dropdownParent: $('#siswa_id').parent(),
            placeholder: 'Pilih...',
            theme: "bootstrap-5",
            ajax: {
                url: '<?= base_url() ?>siswa-kelompok',
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
                                text: item.id + ' - ' + item.text,
                            }
                        })
                    };
                },
            }
        });

        $("#pembimbing_id").select2({
            minimumResultsForSearch: 10,
            dropdownParent: $('#pembimbing_id').parent(),
            placeholder: 'Pilih...',
            theme: "bootstrap-5",
            ajax: {
                url: '<?= base_url() ?>pembimbing-kelompok',
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
                                text: item.text + ' - ' + item.nama_industri,
                            }
                        })
                    };
                },
            }
        });

        $('#fm-kelompok').submit(function(e) {
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
                        html: 'Menyimpan kelompok',
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
                        modal_form_kelompok.hide();
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

        modal_form_kelompok_id.addEventListener('hidden.bs.modal', function(event) {
            modal_form_kelompok_id.querySelector('.modal-title').textContent = 'Tambah Kelompok';
            $('#tanggal_awal,#tanggal_akhir').prop('disabled', false);
            kelompok_id.value = '';
            industri_id.innerHTML = '';
            guru_id.innerHTML = '';
            siswa_id.innerHTML = '';
            $('#fm-kelompok').trigger("reset");
        });

    });

    function edit_kelompok(index, e) {
        var data = data_src[index];
        kelompok_id.value = data.id;
        tanggal_awal.value = data.tanggal_awal;
        tanggal_akhir.value = data.tanggal_akhir;
        if (data.industri_id > 0) {
            select2SetVal('#industri_id', data.nama_industri, data.industri_id, false);
        }
        if (data.guru_id != '') {
            select2SetVal('#guru_id', data.nama_guru, data.guru_id, false);
        }
        if (data.siswa_id != '') {
            select2SetVal('#siswa_id', data.nama_siswa, data.siswa_id, true);
        }
        if (data.pembimbing_id > 0) {
            select2SetVal('#pembimbing_id', data.nama_pembimbing + ' - ' + data.nama_industri, data.pembimbing_id, false);
        }
        $(".dtr-bs-modal").find('[data-bs-dismiss="modal"]').click();
        modal_form_kelompok_id.querySelector('.modal-title').textContent = 'Edit Kelompok';
        modal_form_kelompok.show();
    }

    function hapus_kelompok(id, nama, e) {
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
            html: "Siswa (<span class=\"text-success\">" + nama + "</span>) akan dihapus.",
            icon: 'question',
            showCancelButton: true,
            cancelButtonText: 'Batal',
            confirmButtonText: 'Ya, Hapus',
            allowOutsideClick: false,
            allowEscapeKey: false,
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: '<?= base_url() ?>hapus-kelompok',
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

    function select2SetVal(target, text, value, kode) {
        if ($(target).find("option[value='" + value + "']").length) {
            $(target).val(value).trigger('change');
        } else {
            if (kode == true) {
                $(target).append(new Option(value + ' - ' + text, value, true, true)).trigger('change');
            } else {
                $(target).append(new Option(text, value, true, true)).trigger('change');
            }
        }
    }
</script>
<?php $this->layout->endSection() ?>
<?php $this->layout->extend('layout/_template') ?>