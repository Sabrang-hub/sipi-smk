<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title><?= client('site_name') ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
    <meta content="Coderthemes" name="author" />

    <!-- App favicon -->
    <link rel="shortcut icon" href="<?= base_url() ?>assets/images/favicon.ico">

    <!-- Theme Config Js -->
    <script src="<?= base_url() ?>assets/js/hyper-config.js"></script>

    <!-- App css -->
    <link href="<?= base_url() ?>assets/css/app-saas.min.css" rel="stylesheet" type="text/css" id="app-style" />

    <!-- Icons css -->
    <link href="<?= base_url() ?>assets/css/icons.min.css" rel="stylesheet" type="text/css" />

    <style>
        body.authentication-bg {
            background-image: url('<?= base_url(client('bg_login')) ?>');
        }
    </style>
</head>

<body class="authentication-bg">
    <div class="account-pages pt-1 pt-sm-3 pb-2 pb-sm-3">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xxl-4 col-lg-5">
                    <div class="card">

                        <div class="card-body p-4 py-2">

                            <div class="text-center w-75 m-auto">
                                <h4 class="text-dark-50 text-center pb-0 fw-bold"><?= client('site_name') ?></h4>
                                <p class="text-muted mb-4">Masukkan nama pengguna dan kata sandi</p>
                            </div>

                            <form id="fm-login" action="<?= base_url('do-login') ?>" method="POST">

                                <div class="mb-3">
                                    <label for="group_id" class="form-label">Sebagai</label>
                                    <select class="form-select" id="group_id" name="group_id" required>
                                        <option value="">Pilih...</option>
                                        <?php
                                        $res = $this->db->order_by('id')->get('m_group')->result();
                                        foreach ($res as $row) {
                                            echo "<option value=\"$row->id\">$row->nama</option>";
                                        }
                                        ?>
                                    </select>
                                </div>

                                <div class="mb-3">
                                    <label for="username" class="form-label">Name Pengguna</label>
                                    <input class="form-control" type="text" id="username" name="username" required="" placeholder="Masukkan nama pengguna">
                                </div>

                                <div class="mb-3">
                                    <label for="password" class="form-label">Kata Sandi</label>
                                    <div class="input-group input-group-merge">
                                        <input type="password" id="password" name="password" class="form-control" placeholder="Masukkan kata sandi">
                                        <div class="input-group-text" data-password="false">
                                            <span class="password-eye"></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="mb-3 mb-3">
                                    <div class="form-check">
                                        <input type="checkbox" class="form-check-input" id="checkbox-signin">
                                        <label class="form-check-label" for="checkbox-signin">Remember me</label>
                                    </div>
                                </div>

                                <div class="mb-3 mb-0 text-center">
                                    <button class="btn btn-primary" type="submit"> Login </button>
                                </div>

                            </form>

                        </div> <!-- end card-body -->
                    </div>
                    <!-- end card -->

                </div> <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>

    <footer class="footer footer-alt">
        2022 - <script>
            document.write(new Date().getFullYear())
        </script> © <?= client('site_name') ?>
    </footer>
    <!-- end page -->
    <?php $this->load->view('layout/partials/_script') ?>
    <script>
        const rmCheck = document.getElementById("checkbox-signin"),
            usr = document.getElementById("username");

        if (localStorage.checkbox && localStorage.checkbox !== "") {
            rmCheck.setAttribute("checked", "checked");
            usr.value = localStorage.username;
        } else {
            rmCheck.removeAttribute("checked");
            usr.value = "";
        }

        function lsRememberMe() {
            if (rmCheck.checked && usr.value !== "") {
                localStorage.username = usr.value;
                localStorage.checkbox = rmCheck.value;
            } else {
                localStorage.username = "";
                localStorage.checkbox = "";
            }
        }

        $(document).ready(function() {
            $('#fm-login').submit(function(e) {
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
                            html: 'Memeriksa akun',
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
                                showConfirmButton: false,
                            });
                            lsRememberMe();
                            location.href = '<?= base_url() ?>';
                        } else {
                            if (data.kode == 0) {
                                Swal.fire({
                                    iconHtml: '<img src="<?= base_url() ?>assets/images/wrong_way.png" class="img-fluid avatar-md rounded-circle">',
                                    customClass: {
                                        icon: 'border-0'
                                    },
                                    title: 'Oops...',
                                    text: data.msg,
                                    allowOutsideClick: false,
                                    allowEscapeKey: false,
                                });
                            } else if (data.kode == 2) {
                                Swal.fire({
                                    iconHtml: '<img src="<?= base_url() ?>assets/images/lock.png" class="img-fluid avatar-md rounded-circle">',
                                    customClass: {
                                        icon: 'border-0'
                                    },
                                    title: 'Oops...',
                                    text: data.msg,
                                    allowOutsideClick: false,
                                    allowEscapeKey: false,
                                });
                            } else {
                                Swal.fire({
                                    icon: 'warning',
                                    title: 'Oops...',
                                    text: data.msg,
                                    allowOutsideClick: false,
                                    allowEscapeKey: false,
                                });
                            }
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
    </script>

</body>

</html>