<!-- Vendor js -->
<script src="<?= base_url() ?>assets/js/vendor.min.js"></script>

<!-- App js -->
<script src="<?= base_url() ?>assets/js/app.min.js"></script>

<!-- Node Modules -->
<script src="<?= base_url() ?>assets/node_modules/sweetalert2/dist/sweetalert2.all.min.js"></script>

<!-- CUSTOME SCRIPT -->
<?php $this->layout->renderSection('script') ?>

<script>
    $(document).ready(function() {
        $('.logout').click(function() {
            Swal.fire({
                title: 'Anda yakin?',
                text: "Anda akan kelur dari aplikasi.",
                icon: 'question',
                showCancelButton: true,
                cancelButtonText: 'Batal',
                confirmButtonText: 'Ya, Keluar',
                allowOutsideClick: false,
                allowEscapeKey: false,
            }).then((result) => {
                if (result.isConfirmed) {
                    location.href = "<?= base_url('auth/' . $this->session->userdata('id')) ?>";
                }
            });
        });
    });
</script>