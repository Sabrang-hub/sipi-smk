<head>
    <meta charset="utf-8" />
    <title><?= @$title ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
    <meta content="Coderthemes" name="author" />
    <link rel="shortcut icon" href="<?= base_url() ?>assets/images/favicon.ico">
    <script src="<?= base_url() ?>assets/js/hyper-config.js"></script>
    <link href="<?= base_url() ?>assets/css/app-saas.min.css" rel="stylesheet" type="text/css" id="app-style" />
    <link href="<?= base_url() ?>assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <?php $this->layout->renderSection('style') ?>
</head>