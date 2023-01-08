<?php $this->layout->section('content') ?>

<div class="content">

    <!-- Start Content-->
    <div class="container-fluid">

        <div class="row">
            <div class="col-12">
                <div class="page-title-box">
                    <div class="page-title-right">
                        <ol class="breadcrumb m-0">
                            <li class="breadcrumb-item"><a href="javascript: void(0);">Pengaturan</a></li>
                            <li class="breadcrumb-item active"><?= @$title ?></li>
                        </ol>
                    </div>
                    <h4 class="page-title"><?= @$title ?></h4>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="card bg-primary">
                    <div class="card-body profile-user-box">
                        <div class="row">
                            <div class="col-sm-8">
                                <div class="row align-items-start">
                                    <div class="col-auto">
                                        <div class="avatar-lg">
                                            <img src="<?= (client('logo_instansi') <> '' ? base_url(client('logo_instansi')) : base_url('assets/images/logo_instansi.png')) ?>" alt="" class="rounded-circle img-thumbnail logo_instansi">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div>

                                            <h4 class="mt-1 mb-1 text-white nama_instansi"><?= client('nama_instansi') ?></h4>
                                            <p class="font-13 text-white-50">Nama Instansi</p>

                                            <h4 class="mt-1 mb-1 text-white npsn"><?= client('npsn') ?></h4>
                                            <p class="font-13 text-white-50">Nomor Pokok Sekolah Nasional (NPSN)</p>

                                            <h4 class="mt-1 mb-1 text-white no_telp"><?= client('no_telp') ?></h4>
                                            <p class="font-13 text-white-50">Nomor Telepon</p>

                                            <h4 class="mt-1 mb-1 text-white provinsi"><?= client('provinsi') ?></h4>
                                            <p class="font-13 text-white-50">Provinsi</p>

                                            <h4 class="mt-1 mb-1 text-white kab_kota"><?= client('kab_kota') ?></h4>
                                            <p class="font-13 text-white-50">Kabupaten / Kota</p>

                                            <h4 class="mt-1 mb-1 text-white kecamatan"><?= client('kecamatan') ?></h4>
                                            <p class="font-13 text-white-50">Kecamatan</p>

                                            <h4 class="mt-1 mb-1 text-white kelurahan_desa"><?= client('kelurahan_desa') ?></h4>
                                            <p class="font-13 text-white-50">Kelurahan / Desa</p>

                                            <h4 class="mt-1 mb-1 text-white alamat"><?= client('alamat') ?></h4>
                                            <p class="font-13 text-white-50">Alamat</p>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <div class="text-center mt-sm-0 mt-3 text-sm-end">
                                    <button type="button" class="btn btn-light" data-bs-toggle="modal" data-bs-target="#modal-profil-instansi">
                                        <i class="mdi mdi-account-edit me-1"></i> Edit
                                    </button>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </div> <!-- container -->

</div>

<div id="modal-profil-instansi" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="modal-profil-instansiLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="modal-profil-instansiLabel">Edit Profil</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
            </div>
            <form id="fm-profil-instansi" action="<?= base_url('simpan-profil-instansi') ?>" method="POST">
                <div class="modal-body">
                    <span class="text-muted"><i>(<span class="text-danger">*</span>) Wajib diisi</i></span>

                    <div class="my-3">
                        <label for="nama_instansi" class="form-label">Nama Instansi<span class="text-danger">*</span></label>
                        <input type="text" id="nama_instansi" name="nama_instansi" value="<?= client('nama_instansi') ?>" class="form-control" placeholder="Masukkan nama instansi" required>
                    </div>

                    <div class="mb-3">
                        <label for="npsn" class="form-label">Nomor Pokok Sekolah Nasional (NPSN)</label>
                        <input type="text" id="npsn" name="npsn" value="<?= client('npsn') ?>" class="form-control" placeholder="Masukkan nomor pokok sekolah nasional">
                    </div>

                    <div class="mb-3">
                        <label for="no_telp" class="form-label">Nomor Telepon</label>
                        <input type="text" id="no_telp" name="no_telp" value="<?= client('no_telp') ?>" class="form-control" placeholder="Masukkan nomor telepon">
                    </div>

                    <div class="mb-3">
                        <label for="provinsi" class="form-label">Provinsi<span class="text-danger">*</span></label>
                        <input type="text" id="provinsi" name="provinsi" value="<?= client('provinsi') ?>" class="form-control" placeholder="Masukkan provinsi" required>
                    </div>

                    <div class="mb-3">
                        <label for="kab_kota" class="form-label">Kabupaten / Kota<span class="text-danger">*</span></label>
                        <input type="text" id="kab_kota" name="kab_kota" value="<?= client('kab_kota') ?>" class="form-control" placeholder="Masukkan masukkan kabupaten / kota" required>
                    </div>

                    <div class="mb-3">
                        <label for="kecamatan" class="form-label">Kecamatan<span class="text-danger">*</span></label>
                        <input type="text" id="kecamatan" name="kecamatan" value="<?= client('kecamatan') ?>" class="form-control" placeholder="Masukkan kecamatan" required>
                    </div>

                    <div class="mb-3">
                        <label for="kelurahan_desa" class="form-label">Kelurahan / Desa<span class="text-danger">*</span></label>
                        <input type="text" id="kelurahan_desa" name="kelurahan_desa" value="<?= client('kelurahan_desa') ?>" class="form-control" placeholder="Masukkan kelurahan / desa" required>
                    </div>

                    <div class="mb-3">
                        <label for="alamat" class="form-label">Alamat</label>
                        <textarea class="form-control" id="alamat" name="alamat" rows="3" placeholder="Masukkan alamat"><?= client('alamat') ?></textarea>
                    </div>

                    <div class="mb-3">
                        <label for="logo_instansi" class="form-label">Logo Instansi</label>
                        <input type="file" id="logo_instansi" name="logo_instansi" class="form-control">
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="submit" title="Simpan" class="btn btn-primary btn-sm"><i class="mdi mdi-content-save"></i> <span class="d-none d-lg-inline">Simpan</span></button>
                    <button type="button" title="Batal" class="btn btn-secondary btn-sm" data-bs-dismiss="modal"><i class="mdi mdi-window-close"></i> <span class="d-none d-lg-inline">Batal</span></button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<?php $this->layout->endSection() ?>

<?php $this->layout->section('script') ?>

<script>
    var modal_profil_instansi_id = document.getElementById("modal-profil-instansi");
    var modal_profil_instansi = new bootstrap.Modal(modal_profil_instansi_id, {
        backdrop: 'static',
        keyboard: false,
    });
    $(document).ready(function(e) {
        $('#fm-profil-instansi').submit(function(e) {
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
                        html: 'Menyimpan Profil',
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
                        getDetail();
                        modal_profil_instansi.hide();
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
                        text: error,
                        allowOutsideClick: false,
                        allowEscapeKey: false,
                    });
                },
            });
        });
    });

    function getDetail() {
        $.ajax({
            url: '<?= base_url('master-profil-instansi') ?>',
            dataType: 'json',
            type: 'get',
            success: function(data) {
                $.each(data, function(i, v) {
                    if (i == 'logo_instansi' && v != '') {
                        $('.' + i).attr('src', '<?= base_url() ?>' + v);
                    } else {
                        $('.' + i).html(v);
                    }
                });
            },
            error: function(xhr, status, error) {
                Swal.fire({
                    icon: 'error',
                    title: status,
                    text: error,
                    allowOutsideClick: false,
                    allowEscapeKey: false,
                });
            }
        });
    }
</script>

<?php $this->layout->endSection() ?>

<?php $this->layout->extend('layout/_template') ?>