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
                        <a href="<?= base_url('laporan_absensi?id=') . encrypt_url($siswa_id) ?>" title="Cetak" class="btn btn-light btn-sm float-end" target="_blank"><i class="mdi mdi mdi-printer"></i> <span class="d-none d-lg-inline">Cetak</span></a>
                        <h5>Daftar <?= @$title ?></h5>
                    </div>
                    <div class="card-body">
                        <div class="alert bg-success bg-opacity-10 shadow-sm">
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
                        <div class="card cta-box bg-danger text-white p-2">
                            <h4><i class="mdi mdi-bullhorn-outline mdi-24px"></i> Hari Kerja</h4>
                            <div class="d-flex align-items-center">
                                <div class="w-100 overflow-hidden">
                                    <?php foreach ($hari_kerja as $row) : ?>
                                        <div class="row mb-1">
                                            <div class="col-lg-2 col-5 ps-lg-3 <?= (date('N') == $row['hari_id'] ? 'fw-bold' : '') ?>"><?= $row['nama_hari'] ?></div>
                                            <div class="col-lg-10 col-7 <?= (date('N') == $row['hari_id'] ? 'fw-bold' : '') ?>"><i class="mdi mdi-clock-outline"></i> <?= date('H:i', strtotime($row['waktu_masuk'])) ?> - <?= date('H:i', strtotime($row['waktu_pulang'])) ?> <?= (date('N') == $row['hari_id'] ? '<i class="mdi mdi-arrow-left-bold-outline"></i>' : '') ?></div>
                                        </div>
                                    <?php endforeach ?>
                                </div>
                                <img class="ms-3 d-none d-lg-block" src="<?= base_url() ?>assets/images/svg/email-campaign.svg" alt="Generic placeholder image" width="26%">
                            </div>
                        </div>
                        <table id="list" class="table bg-success bg-opacity-10 table-bordered dt-responsive w-100">
                            <thead>
                                <tr>
                                    <th class="text-center">No</th>
                                    <th class="text-center">Tanggal</th>
                                    <th class="text-center">Absen Masuk</th>
                                    <th class="text-center">Absen Pulang</th>
                                    <th class="text-center">Status Kehadiran</th>
                                    <th class="text-center">Keterangan</th>
                                    <th class="text-center">Verifikasi</th>
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
                <input type="hidden" id="siswa_id" name="siswa_id" value="<?= $siswa_id ?>" />
                <input type="hidden" id="tanggal" name="tanggal" />
                <input type="hidden" id="waktu_masuk" name="waktu_masuk" />
                <input type="hidden" id="waktu_pulang" name="waktu_pulang" />
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
                    <div class="form-check form-radio-danger form-check-inline">
                        <input type="radio" id="alpa" name="status" class="form-check-input" value="4">
                        <label class="form-check-label" for="alpa">Alpa</label>
                    </div>
                    <br />
                    <br />
                    <div class="row d-hadir">
                        <div class="col-6 col-lg-4">
                            <div class="mb-3">
                                <label for="absen_masuk" class="form-label">Absen Masuk</label>
                                <input type="time" id="absen_masuk" name="absen_masuk" class="form-control form-control-sm" required>
                            </div>
                        </div>
                        <div class="col-6 col-lg-4">
                            <div class="mb-3">
                                <label for="absen_pulang" class="form-label">Absen Masuk</label>
                                <input type="time" id="absen_pulang" name="absen_pulang" class="form-control form-control-sm">
                            </div>
                        </div>
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
            $('.d-hadir').show();
            $('#absen_masuk').prop('required', true);
            $('#fm-absensi').trigger("reset");
        });

        $('[name=status]').change(function(e) {
            if (this.value == 1) {
                $('.d-hadir').show();
                $('#absen_masuk').prop('required', true);
            } else {
                $('.d-hadir').hide();
                $('#absen_masuk').prop('required', false);
            }
        })

        list_absensi();

    });

    function list_absensi() {
        $.ajax({
            url: '<?= base_url() ?>list-absensi',
            dataType: 'json',
            type: 'post',
            data: ({
                siswa_id: '<?= $siswa_id ?>'
            }),
            beforeSend: function() {
                $('#list').DataTable().rows().remove().draw();
            },
            success: function(data) {
                data_src = data;
                var no = data.length;
                for (let i = 0; i < data.length; i++) {
                    d = data[i];
                    verif = "<select class=\"form-control form-control-sm\" style=\"width: 142px;\" onchange=\"edit_verifikasi('" + d.siswa_id + "','" + d.tanggal + "', this)\">\
                    <option value=\"0\">Belum Verifikasi</option>\
                    <option value=\"1\"" + (d.verifikasi_stat == 1 ? 'selected' : '') + ">Diverifikasi</option>\
                    </select>";
                    $('#list').DataTable().row.add([no, d.tanggal, d.absen_masuk, d.absen_pulang, d.nama_status, d.keterangan_siswa, verif, d.aksi]).draw(false);
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
        tanggal.value = data.tanggal;
        waktu_masuk.value = data.waktu_masuk;
        waktu_pulang.value = data.waktu_pulang;
        if (data.status != '') {
            $('[name=status][value=' + data.status + ']').prop('checked', true).trigger('change');
        } else {
            $('[name=status][value=1]').prop('checked', true).trigger('change');
        }
        if (data.absen_masuk != '') {
            absen_masuk.value = data.absen_masuk.substring(0, 5);
        } else {
            absen_masuk.value = data.waktu_masuk.substring(0, 5);
        }
        if (data.absen_pulang != '') {
            absen_pulang.value = data.absen_pulang.substring(0, 5);
        }
        keterangan_siswa.value = data.keterangan_siswa;
        modal_form_absensi.show();
    }

    function edit_verifikasi(siswa_id, tanggal, e) {
        $.ajax({
            url: '<?= base_url() ?>simpan-verifikasi-absensi',
            data: ({
                siswa_id,
                tanggal,
                verifikasi_stat: e.value,
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
</script>
<?php $this->layout->endSection() ?>
<?php $this->layout->extend('layout/_template') ?>