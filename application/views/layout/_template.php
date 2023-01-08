<!DOCTYPE html>
<html lang="en">

<!-- HEAD -->
<?php $this->load->view('layout/partials/_head') ?>

<body data-editor="DecoupledDocumentEditor" data-collaboration="false" data-revision-history="false">

    <!-- Pre-loader -->
    <div id="preloader">
        <div id="status_preloader">
            <div class="bouncing-loader">
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>
    </div>
    <!-- End Preloader-->

    <!-- Begin page -->
    <div class="wrapper">


        <!-- NAVBAR -->
        <?php $this->load->view('layout/partials/_navbar') ?>

        <!-- LEFT SIDE -->
        <?php $this->load->view('layout/partials/_leftside') ?>
        <div class="content-page">

            <!-- CONTENT -->
            <?php $this->layout->renderSection('content') ?>

            <!-- FOOTER -->
            <?php $this->load->view('layout/partials/_footer') ?>

        </div>

    </div>
    <!-- END wrapper -->

    <!-- THEME SETTINGS -->
    <?php $this->load->view('layout/partials/_theme_settings') ?>


    <!-- SCRIPT -->
    <?php $this->load->view('layout/partials/_script') ?>

</body>

</html>