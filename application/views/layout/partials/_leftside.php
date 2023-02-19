<!-- ========== Left Sidebar Start ========== -->
<div class="leftside-menu">

    <!-- Brand Logo Light -->
    <a href="<?= base_url() ?>" class="logo logo-light">
        <span class="logo-lg" style="font-size: 2rem;font-weight: bold;color: white;">
            <img src="<?= base_url('assets/images/logo-sipi.png') ?>" alt="logo" style="width: 60px;height: 60px;">
            <?= client('site_name'); ?>
        </span>
        <span class="logo-sm">
            <img src="<?= base_url('assets/images/logo-sipi.png') ?>" alt="small logo" style="width: 32px;height: 32px;">
        </span>
    </a>

    <!-- Brand Logo Dark -->
    <a href="<?= base_url() ?>" class="logo logo-dark">
        <span class="logo-lg" style="font-size: 2rem;font-weight: bold;color: #333333;">
            <img src="<?= base_url('assets/images/logo-sipi.png') ?>" alt="logo" style="width: 60px;height: 60px;">
            <?= client('site_name'); ?>
        </span>
        <span class="logo-sm">
            <img src="<?= base_url('assets/images/logo-sipi.png') ?>" alt="small logo" style="width: 32px;height: 32px;">
        </span>
    </a>

    <!-- Sidebar Hover Menu Toggle Button -->
    <div class="button-sm-hover" data-bs-toggle="tooltip" data-bs-placement="right" title="Show Full Sidebar">
        <i class="ri-checkbox-blank-circle-line align-middle"></i>
    </div>

    <!-- Full Sidebar Menu Close Button -->
    <div class="button-close-fullsidebar">
        <i class="ri-close-fill align-middle"></i>
    </div>

    <!-- Sidebar -left -->
    <div class="h-100" id="leftside-menu-container" data-simplebar>
        <!-- Leftbar User -->
        <div class="leftbar-user">
            <a href="pages-profile.html">
                <img src="<?= base_url() ?>assets/images/users/avatar-1.jpg" alt="user-image" height="42" class="rounded-circle shadow-sm">
                <span class="leftbar-user-name mt-2"><?= $this->session->userdata('nama') ?></span>
            </a>
        </div>

        <!--- Sidemenu -->
        <ul class="side-nav">

            <li class="side-nav-title">Navigation</li>

            <li class="side-nav-item">
                <a href="<?= base_url() ?>" class="side-nav-link">
                    <i class="mdi mdi-home-outline"></i>
                    <span> Beranda </span>
                </a>
            </li>
            <?php
            if ($this->session->userdata('group_id') == 3) {
            ?>
                <li class="side-nav-item">
                    <a href="<?= base_url('logbook') ?>" class="side-nav-link">
                        <i class="mdi mdi-book-clock-outline"></i>
                        <span> Laporan Harian </span>
                    </a>
                </li>
                <li class="side-nav-item">
                    <a href="<?= base_url('absensi') ?>" class="side-nav-link">
                        <i class="mdi mdi-clock-edit-outline"></i>
                        <span> Absensi </span>
                    </a>
                </li>
            <?php
            }
            if ($this->session->userdata('group_id') != 3 && $this->session->userdata('group_id') != 4) {
            ?>
                <li class="side-nav-item">
                    <a href="<?= base_url('kelompok') ?>" class="side-nav-link">
                        <i class="mdi mdi-account-group-outline"></i>
                        <span> Kelompok </span>
                    </a>
                </li>

                <li class="side-nav-item">
                    <a href="<?= base_url('monitoring-siswa') ?>" class="side-nav-link">
                        <i class="mdi mdi-book-clock-outline"></i>
                        <span> Monitoring Siswa</span>
                    </a>
                </li>

                <li class="side-nav-title">Master</li>

                <li class="side-nav-item">
                    <a href="<?= base_url('pengguna') ?>" class="side-nav-link">
                        <i class="mdi mdi-account-key-outline"></i>
                        <span> Pengguna </span>
                    </a>
                </li>
            <?php
            }
            if ($this->session->userdata('group_id') == 1) {
            ?>
                <li class="side-nav-item">
                    <a href="<?= base_url('jurusan') ?>" class="side-nav-link">
                        <i class="mdi mdi-bookmark-box-multiple-outline"></i>
                        <span> Jurusan </span>
                    </a>
                </li>

                <li class="side-nav-item">
                    <a href="<?= base_url('kelas') ?>" class="side-nav-link">
                        <i class="mdi mdi-google-classroom"></i>
                        <span> Kelas </span>
                    </a>
                </li>

                <li class="side-nav-item">
                    <a href="<?= base_url('guru') ?>" class="side-nav-link">
                        <i class="uil-graduation-hat"></i>
                        <span> Guru </span>
                    </a>
                </li>

                <li class="side-nav-item">
                    <a href="<?= base_url('siswa') ?>" class="side-nav-link">
                        <i class="mdi mdi-account-box-multiple-outline"></i>
                        <span> Siswa </span>
                    </a>
                </li>

                <li class="side-nav-item">
                    <a href="<?= base_url('industri') ?>" class="side-nav-link">
                        <i class="uil-bag"></i>
                        <span> Industri </span>
                    </a>
                </li>
            <?php
            }
            if ($this->session->userdata('group_id') == 4) {
            ?>
                <li class="side-nav-item">
                    <a href="<?= base_url('monitoring-siswa') ?>" class="side-nav-link">
                        <i class="mdi mdi-book-clock-outline"></i>
                        <span> Monitoring Siswa</span>
                    </a>
                </li>
            <?php
            }
            ?>

        </ul>
        <!--- End Sidemenu -->

        <div class="clearfix"></div>
    </div>
</div>
<!-- ========== Left Sidebar End ========== -->