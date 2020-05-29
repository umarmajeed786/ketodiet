<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Login | MyKeto</title>
        <meta name="robots" content="noindex, follow" />
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="<?= base_url('assets') ?>/frontend/images/favicon.jpg">

        <!-- CSS
            ============================================ -->

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="<?= base_url('assets') ?>/css/vendor/bootstrap.min.css">

        <!-- Icon Font CSS -->
        <link rel="stylesheet" href="<?= base_url('assets') ?>/css/vendor/material-design-iconic-font.min.css">
        <link rel="stylesheet" href="<?= base_url('assets') ?>/css/vendor/font-awesome.min.css">
        <link rel="stylesheet" href="<?= base_url('assets') ?>/css/vendor/themify-icons.css">
        <link rel="stylesheet" href="<?= base_url('assets') ?>/css/vendor/cryptocurrency-icons.css">

        <!-- Plugins CSS -->
        <link rel="stylesheet" href="<?= base_url('assets') ?>/css/plugins/plugins.css">

        <!-- Helper CSS -->
        <link rel="stylesheet" href="<?= base_url('assets') ?>/css/helper.css">

        <!-- Main Style CSS -->
        <link rel="stylesheet" href="<?= base_url('assets') ?>/css/style.css">

        <!-- Custom Style CSS Only For Demo Purpose -->
        <link id="cus-style" rel="stylesheet" href="<?= base_url('assets') ?>/css/style-primary.css">

    </head>

    <body>

        <div class="main-wrapper">

            <!-- Content Body Start -->
            <div class="content-body m-0 p-0">

                <div class="login-register-wrap">
                    <div class="row">

                        <div class="d-flex align-self-center justify-content-center order-2 order-lg-1 col-lg-5 col-12">
                            <div class="login-register-form-wrap">

                                <div class="content">
                                    <h1>Sign in</h1>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                </div>
                                <!-- Page Content -->
                                <div class="container">
                                    <?php if ($flashmsg = $this->session->flashdata('success_message')) { ?>
                                        <div class="alert alert-success" role="alert">
                                            <strong class="text-capitalize"><?= $flashmsg ?></strong>
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">×</span>
                                            </button>
                                        </div>
                                        <?php
                                    }
                                    if ($flashmsg = $this->session->flashdata('error_message')) {
                                        ?>
                                        <div class="alert alert-warning" role="alert">
                                            <strong class="text-capitalize"><?= $flashmsg ?></strong>
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">×</span>
                                            </button>
                                        </div>
                                    <?php }
                                    if ($flashmsg = $this->session->flashdata('no_user_access')) {
                                        ?>
                                        <div class="alert alert-warning" role="alert">
                                            <strong class="text-capitalize"><?= $flashmsg ?></strong>
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">×</span>
                                            </button>
                                        </div>
                                    <?php }
                                    ?>
                                </div>
                                <div class="login-register-form">
                                    <form action="<?= base_url('panel/user-login')?>" method="post">
                                        <div class="row">
                                            <div class="col-12 mb-20"><input class="form-control" type="email" name="email" placeholder="User ID / Email"></div>
                                            <div class="col-12 mb-20"><input class="form-control" name="password" type="password" placeholder="Password"></div>
                                            <div class="col-12 mb-20"><label for="remember" class="adomx-checkbox-2"><input id="remember" type="checkbox"><i class="icon"></i>Remember.</label></div>
                                            <div class="col-12">
                                                <div class="row justify-content-between">
                                                    <div class="col-auto mb-15"><a href="<?= base_url('forgot-password')?>">Forgot Password?</a></div>
                                                    <!--  <div class="col-auto mb-15">Dont have account? <a href="register.html">Create Now.</a></div> -->
                                                </div>
                                            </div>
                                            <div class="col-12 mt-10"><button type="submit" class="button button-primary button-outline">sign in</button></div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                        <div class="login-register-bg order-1 order-lg-2 col-lg-7 col-12">
                            <div class="content">
                                <h1>Sign in</h1>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                            </div>
                        </div>

                    </div>
                </div>

            </div><!-- Content Body End -->

        </div>

        <!-- JS
    ============================================ -->

        <!-- Global Vendor, plugins & Activation JS -->
        <script src="<?= base_url('assets') ?>/js/vendor/modernizr-3.6.0.min.js"></script>
        <script src="<?= base_url('assets') ?>/js/vendor/jquery-3.3.1.min.js"></script>
        <script src="<?= base_url('assets') ?>/js/vendor/popper.min.js"></script>
        <script src="<?= base_url('assets') ?>/js/vendor/bootstrap.min.js"></script>
        <!--Plugins JS-->
        <script src="<?= base_url('assets') ?>/js/plugins/perfect-scrollbar.min.js"></script>
        <script src="<?= base_url('assets') ?>/js/plugins/tippy4.min.js.js"></script>
        <!--Main JS-->
        <script src="<?= base_url('assets') ?>/js/main.js"></script>

    </body>

</html>