<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title><?= $page_title ?> -MyKeto</title>
        <meta name="robots" content="noindex, follow" />
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="<?= base_url('assets') ?>/frontend/images/favicon.jpg">

        <link rel="icon" type="image/png" href="<?= base_url('assets/frontend/images/favicon.jpg') ?>" sizes="196x196" />
        <link rel="icon" type="image/png" href="<?= base_url('assets/frontend/images/favicon.jpg') ?>" sizes="96x96" />
        <link rel="icon" type="image/png" href="<?= base_url('assets/frontend/images/favicon.jpg') ?>" sizes="32x32" />
        <link rel="icon" type="image/png" href="<?= base_url('assets/frontend/images/favicon.jpg') ?>" sizes="16x16" />
        <link rel="icon" type="image/png" href="<?= base_url('assets/frontend/images/favicon.jpg') ?>" sizes="128x128" />

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
        <link rel="stylesheet" href="<?= base_url('assets') ?>/css/custom.css">

        <!-- Custom Style CSS Only For Demo Purpose -->
        <link id="cus-style" rel="stylesheet" href="<?= base_url('assets') ?>/css/style-primary.css">
        <script src="<?= base_url('assets') ?>/js/vendor/jquery-3.5.1.min.js"></script>
        <style>
            .img-custom{
                width: auto;
                height: 225px;
            }
        </style>
    </head>

    <body>

        <div class="main-wrapper">


            <!-- Header Section Start -->
            <div class="header-section">
                <div class="container-fluid">
                    <div class="row justify-content-between align-items-center">

                        <!-- Header Logo (Header Left) Start -->
                        <div class="header-logo col-auto">
                            <a href="<?= base_url('panel/dashboard') ?>">
                                <img src="<?= base_url('assets') ?>/frontend/images/keto-diet-logo.png" alt="">
                                <!--<img src="<?= base_url('assets') ?>//frontend/images/logo/logo-light.png" class="logo-light" alt="">-->
                            </a>
                        </div><!-- Header Logo (Header Left) End -->

                        <!-- Header Right Start -->
                        <div class="header-right flex-grow-1 col-auto">
                            <div class="row justify-content-between align-items-center">

                                <!-- Side Header Toggle & Search Start -->
                                <div class="col-auto">
                                    <div class="row align-items-center">

                                        <!--Side Header Toggle-->
                                        <div class="col-auto"><button class="side-header-toggle"><i class="zmdi zmdi-menu"></i></button></div>


                                    </div>
                                </div><!-- Side Header Toggle & Search End -->

                                <!-- Header Notifications Area Start -->
                                <div class="col-auto">

                                    <ul class="header-notification-area">

                                        <!--Notification-->
                                        <!--                                    <li class="adomx-dropdown col-auto">
                                                                                <a class="toggle" href="#"><i class="zmdi zmdi-notifications"></i><span class="badge"></span></a>
                                        
                                                                                 Dropdown 
                                                                                <div class="adomx-dropdown-menu dropdown-menu-notifications">
                                                                                    <div class="head">
                                                                                        <h5 class="title">You have 3 new notification.</h5>
                                                                                    </div>
                                                                                    <div class="body custom-scroll">
                                                                                        <ul>
                                                                                            <li>
                                                                                                <a href="#">
                                                                                                    <i class="zmdi zmdi-notifications-none"></i>
                                                                                                    <p>There are many variations of pages available.</p>
                                                                                                    <span>11.00 am   Today</span>
                                                                                                </a>
                                                                                                <button class="delete"><i class="zmdi zmdi-close-circle-o"></i></button>
                                                                                            </li>
                                                                                            <li>
                                                                                                <a href="#">
                                                                                                    <i class="zmdi zmdi-block"></i>
                                                                                                    <p>There are many variations of pages available.</p>
                                                                                                    <span>11.00 am   Today</span>
                                                                                                </a>
                                                                                                <button class="delete"><i class="zmdi zmdi-close-circle-o"></i></button>
                                                                                            </li>
                                                                                            <li>
                                                                                                <a href="#">
                                                                                                    <i class="zmdi zmdi-info-outline"></i>
                                                                                                    <p>There are many variations of pages available.</p>
                                                                                                    <span>11.00 am   Today</span>
                                                                                                </a>
                                                                                                <button class="delete"><i class="zmdi zmdi-close-circle-o"></i></button>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </div>
                                                                                    <div class="footer">
                                                                                        <a href="#" class="view-all">view all</a>
                                                                                    </div>
                                                                                </div>
                                        
                                                                            </li>-->

                                        <!--User-->
                                        <li class="adomx-dropdown col-auto">
                                            <a class="toggle" href="#">
                                                <span class="user">
                                                    <span class="avatar">
                                                        <img src="<?= base_url('assets') ?>/images/avatar/avatar-1.jpg" alt="">
                                                        <span class="status"></span>
                                                    </span>
                                                    <span class="name"><?= $this->session->userdata('name') ?></span>
                                                </span>
                                            </a>

                                            <!-- Dropdown -->
                                            <div class="adomx-dropdown-menu dropdown-menu-user">
                                                <div class="head">
                                                    <h5 class="name"><a href="#"><?= $this->session->userdata('name') ?></a></h5>
                                                    <!--<a class="mail" href="#"><?= $this->session->userdata('email') ?></a>-->
                                                </div>
                                                <div class="body">
                                                    <!--                                                <ul>
                                                                                                        <li><a href="profile.html"><i class="zmdi zmdi-account"></i>Profile</a></li>
                                                                                                        <li><a href="#"><i class="zmdi zmdi-email-open"></i>Inbox</a></li>
                                                                                                        <li><a href="#"><i class="zmdi zmdi-wallpaper"></i>Activity</a></li>
                                                                                                    </ul>-->
                                                    <ul>
                                                        <!--<li><a href="#"><i class="zmdi zmdi-settings"></i>Setting</a></li>-->
                                                        <li><a href="<?= base_url('panel/logout'); ?>"><i class="zmdi zmdi-lock-open"></i>Sing out</a></li>
                                                    </ul>
                                                    <!--                                                <ul>
                                                                                                        <li><a href="pricing.html"><i class="zmdi zmdi-paypal"></i>Payment</a></li>
                                                                                                        <li><a href="#"><i class="zmdi zmdi-google-pages"></i>Invoice</a></li>
                                                                                                    </ul>-->
                                                </div>
                                            </div>

                                        </li>

                                    </ul>

                                </div><!-- Header Notifications Area End -->

                            </div>
                        </div><!-- Header Right End -->

                    </div>
                </div>
            </div><!-- Header Section End -->
            <!-- Side Header Start -->
            <div class="side-header show">
                <button class="side-header-close"><i class="zmdi zmdi-close"></i></button>
                <!-- Side Header Inner Start -->
                <div class="side-header-inner custom-scroll">

                    <nav class="side-header-menu" id="side-header-menu">
                        <ul>
                            <li><a href="<?= base_url('panel/dashboard') ?>"><i class="ti-home"></i> <span>Home</span></a></li>
                            <li><a href="<?= base_url('panel/meal-plan'); ?>"><i class="fa fa-spoon"></i> <span>Your Plan</span></a></li>
                            <li><a href="<?= base_url('panel/personalized-workout'); ?>"><i class="fa fa-file-text-o"></i> <span>Personalized Workout</span></a></li>
                            <li><a href="<?= base_url('panel/personalized-training'); ?>"><i class="ti-book"></i> <span>Personalized training</span></a></li>
                            <li><a href="<?= base_url('panel/keto-guides'); ?>"><i class="fa fa-archive"></i> <span>Keto Guides</span></a></li>
                            <li><a href="<?= base_url('panel/faq'); ?>"><i class="fa fa-question-circle-o"></i> <span>FAQ</span></a></li>
                            <li><a href="<?= base_url('panel/my-progress'); ?>"><i class="fa fa-battery-half"></i> <span>My progress</span></a></li>
                        </ul>
                    </nav>

                </div><!-- Side Header Inner End -->
            </div><!-- Side Header End -->

            <!---->
            <?php $this->load->view($main_view); ?>
            <!-- Footer Section Start -->
            <div class="footer-section">
                <div class="container-fluid">

                    <div class="footer-copyright text-center">
                        <p class="text-body-light">2020 &copy; <a href="#">Myketo</a></p>
                    </div>

                </div>
            </div><!-- Footer Section End -->

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

        <!-- Plugins & Activation JS For Only This Page -->

        <!--Moment-->
        <script src="<?= base_url('assets') ?>/js/plugins/moment/moment.min.js"></script>

        <!--Daterange Picker-->
        <script src="<?= base_url('assets') ?>/js/plugins/daterangepicker/daterangepicker.js"></script>
        <script src="<?= base_url('assets') ?>/js/plugins/daterangepicker/daterangepicker.active.js"></script>

        <!--Echarts-->
        <script src="<?= base_url('assets') ?>/js/plugins/chartjs/Chart.min.js"></script>
        <script src="<?= base_url('assets') ?>/js/plugins/chartjs/chartjs.active.js"></script>

        <!--VMap-->
        <script src="<?= base_url('assets') ?>/js/plugins/vmap/jquery.vmap.min.js"></script>
        <script src="<?= base_url('assets') ?>/js/plugins/vmap/maps/jquery.vmap.world.js"></script>
        <script src="<?= base_url('assets') ?>/js/plugins/vmap/maps/samples/jquery.vmap.sampledata.js"></script>
        <script src="<?= base_url('assets') ?>/js/plugins/vmap/vmap.active.js"></script>
        <script>
            $(document).ready(function () {
                //         $('#changeingredients').modal('show');
            });
        </script>
        <script
            src="https://www.paypal.com/sdk/js?client-id=<?=pp_client_id?>"> // Required. Replace SB_CLIENT_ID with your sandbox client ID.
        </script>
        <script>

            paypal.Buttons({
                createOrder: function (data, actions) {
                    var amt = document.getElementById("total_amount").value;
                    // This function sets up the details of the transaction, including the amount and line item details.
                    return actions.order.create({
                        purchase_units: [{
                                amount: {
                                    value: amt
                                }
                            }]
                    });
                },
                onApprove: function (data, actions) {
                    // This function captures the funds from the transaction.
                    return actions.order.capture().then(function (details) {
                        $("#payment-loader").show();
                        var amt = document.getElementById("total_amount").value;
                        var amount_type = document.getElementById("amount_type").value;
                        var p_id = details.id;
                        var given_name = details.payer.name.given_name;
                        if (p_id) {
                            // This function shows a transaction success message to your buyer.
                            $.post('<?= base_url() ?>panel/save-user-addon-payment',
                                    {
                                        p_id: p_id,
                                        given_name: given_name,
                                        amount: amt,
                                        amount_type: amount_type,
                                        mehtod: 'pp'
                                    },
                                    function (data, status) {
                                        if (status == 'success') {
                                             $("#payment-loader").hide();
                                             location.reload();
                                        } else {
                                            alert('Something went wrong');
                                        }
                                    });

                        }
                    });
                }
            }).render('#paypal-button-container');

        </script>

    </body>

</html>