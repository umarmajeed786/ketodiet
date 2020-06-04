<link rel="stylesheet" href="<?= base_url('assets/frontend/css/checkout.css') ?>" />
<div id="navbar-fixed" class="navbar navbar-fixed">
    <div class="navbar-fixed--inner container">
        <img src="<?= base_url('assets\frontend/images/keto-diet-logo.png') ?>" alt="KetoCycle.Diet" class="regular-logo">
        <div class="limited-offer">
            The offer expires in: <span class="time is-pulsing">15:00</span>
        </div>
        <button class="e-btn cta-btn select-plan-3">Get your plan</button>
    </div>
</div>
<div id="billing" class="m-billing--v5 m-billing--v6 m-billing--v7 m-checkout--11 m-billing--fixed active adyen-checkout">
    <div class="with-bg">
        <div class="container ">
            <img src="<?= base_url('assets\frontend/images/keto-diet-logo.png') ?>" alt="KetoCycle.Diet" class="regular-logo">
            <div class="block-content">
                <h1 class="e-intro-title">The Most
                    <span>Popular</span> Keto Diet
                </h1>
                <h2 style="font-size: 29px;text-decoration:none;"><i>
                    Loved by Over <span>40,000+</span> Active Members</i>
                    </h2>
            </div>
            <div class="limited-offer">
                The offer expires in: <span class="time is-pulsing">15:00</span>
            </div>
            <div class="flex-block">
                <div class="plan-selection subscriptions subscriptions-en">
                    <h3>Select your plan</h3>
                    <div class="pricing-options">
                        <div class="pricing-option pricing-1" data-pricing="1">
                            <div class="tick"><i></i></div>
                            <div class="option-title">
                                3 months<br /> Keto diet
                                <div class="billing-period">Billed every 3 months</div>
                            </div>
                            <div class="option-price single-month currency-USD">
                                <div>$3.50</div>
                                <div class="per-week">per week</div>
                                <div class="old-price">$5</div>
                            </div>
                        </div>
                        <div class="pricing-option pricing-3 active" data-pricing="3">
                            <div class="tick"><i></i></div>
                            <div class="option-title">
                                12 months<br />Keto diet
                                <div class="billing-period">Billed every 12 months</div>
                            </div>
                            <div class="option-price">
                                <div class="per-week">per week</div>
                                <div>$2.10</div>
                                <div class="old-price">$5</div>
                            </div>
                            <div class="discount">
                                Special offer - save 75%
                            </div>
                        </div>
                        <div class="pricing-option pricing-2" data-pricing="2">
                            <div class="tick"><i></i></div>
                            <div class="option-title">
                                1 month<br /> Keto diet
                                <div class="billing-period">Billed every 1 month</div>
                            </div>
                            <div class="option-price  currency-USD">
                                <div>$4.70</div>
                                <div class="per-week">per week</div>
                                <div class="old-price">$5</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="benefits-listed  v2 ">
                    <h3>All plans include</h3>
                    <ul>
                        <li class="e-feature">
                            <i class="fas fa-check" style=""></i>
                            A personalized Keto meal plan
                            <div class="feature-description">Know exactly what to eat for breakfast, lunch, and dinner.</div>
                        </li>
                        <li class="e-feature">
                            <i class="fas fa-check" style=""></i>
                            Keto snacks and desserts
                            <div class="feature-description">Lose weight eating chocolate, peanut butter and more. (We will tell you how)</div>
                        </li>
                        <li class="e-feature">
                            <i class="fas fa-check" style=""></i>
                            Easy-to-follow recipes
                            <div class="feature-description">Quickly prepare meals that leave you pleasantly full, and know what to order when you eat out.</div>
                        </li>
                        <li class="e-feature">
                            <i class="fas fa-check" style=""></i>
                            Simple ingredients from any store
                            <div class="feature-description">Save time &amp; money with a printable grocery list.</div>
                        </li>
                        <li class="e-feature">
                            <i class="fas fa-check" style=""></i>
                            24/7 nutritionist support
                            <div class="feature-description">Get science-based advice at any time of the day.</div>
                        </li>
                        <li class="e-feature">
                            <i class="fas fa-check" style=""></i>
                            A complete Keto diet guide for beginners
                        </li>
                    </ul>
                </div>
                <div class="payment-info">
                    <div class="e-termsconditions">
                        <div class="e-termsconditions-checkbox">
                            <div class="payment-disclaimer">
                                <input id="terms_and_conditions" name="terms_and_conditions" type="checkbox" style="display:none;" checked="checked" class="e-terms_and_conditions  e-checkbox m-general">
                                By purchasing, you agree to our
                                <a href="#" data-toggle="modal" data-target="#terms_and_conditions_modal_us">
                                    T&amp;Cs
                                </a>
                                and
                                <a href="#" data-toggle="modal" data-target="#privacy_policy_modal">
                                    Privacy policy
                                </a>
                            </div>
                        </div>
                        <div class="error-msg" style="display:none;">
                            Please check that you agree with the Terms and Conditions
                        </div>
                    </div>
                    <button class="e-btn cta-btn subscribe-btn">Click here to get your plan</button>

                    <div class="secure-payment cm-payment-1">
                        <img src="<?= base_url('assets\frontend/images/safecheckout.png') ?>" alt="Secure payment" />
                    </div>
                </div>
                <div class="secure-payment cm-payment-2">
                    <img src="<?= base_url('assets\frontend/images/safecheckout.png') ?>" alt="Secure payment" />
                </div>
            </div>
            <div class="main-container">

                <!--<div class="product-composition">
                    <div class="block-content">
                        <div class="left-side">
                            <h3>Your personalized Keto diet plan</h3>
                        </div>
                        <div class="right-side">
                            <img src="<?= base_url('assets\frontend/images/keto-plan.webp') ?>" alt="Shopping list" />
                        </div>
                    </div>
                </div>-->
                <div class="keto-benefits">
                    <div class="block-content">
                        <h2 style="text-decoration: none;">Keto benefits</h2>
                        <ul>
                            <li class="e-feature">
                                <i class="fas fa-check" style=""></i>Sustainable weight loss
                            </li>
                            <li class="e-feature">
                                <i class="fas fa-check" style=""></i>Reduced risk of inflammation
                            </li>
                            <li class="e-feature">
                                <i class="fas fa-check" style=""></i>It can reduce insulin resistance, lowering blood sugar by 3–6% and insulin levels by 20–31%
                            </li>
                            <li class="e-feature">
                                <i class="fas fa-check" style=""></i>Reduces &quot;bad&quot; LDL cholesterol, blood triglycerides, inflammatory markers, and blood sugar
                            </li>
                            <li class="e-feature">
                                <i class="fas fa-check" style=""></i>Increases sleep quality; accelerates metabolism
                            </li>
                        </ul>
                    </div>
                </div>
            </div>


            <div class="covered">
                <div class="heading">Keto Diet was covered in</div>
                <div class="covered-logos">
                    <img src="<?= base_url('assets\frontend/images/covered-1.png') ?>" alt="Health Insider" />
                    <img src="<?= base_url('assets\frontend/images/covered-2.png') ?>" alt="Business Insider" />
                    <img src="<?= base_url('assets\frontend/images/covered-3.png') ?>" alt="New york times" />
                </div>
            </div>

            <div style="height:50px;"></div>
            
            <div class="container">
                <div class="row pt-5">
                    <div class="col-md-12">
                        <h2 style="text-decoration:none;">What Our Customer Says</h2>
                        <div class="carousel slide" data-ride="carousel" id="quote-carousel">
                            <!-- Carousel Slides / Quotes -->
                            <div class="carousel-inner text-center">
                                <!-- Quote 1 -->
                                <div class="item active">
                                    <blockquote>
                                        <div class="row">
                                            <div class="col-sm-8 col-sm-offset-2">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                                <small>Someone famous</small>
                                            </div>
                                        </div>
                                    </blockquote>
                                </div>
                                <!-- Quote 2 -->
                                <div class="item">
                                    <blockquote>
                                        <div class="row">
                                            <div class="col-sm-8 col-sm-offset-2">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                                <small>Someone famous</small>
                                            </div>
                                        </div>
                                    </blockquote>
                                </div>
                                <!-- Quote 3 -->
                                <div class="item">
                                    <blockquote>
                                        <div class="row">
                                            <div class="col-sm-8 col-sm-offset-2">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                                <small>Someone famous</small>
                                            </div>
                                        </div>
                                    </blockquote>
                                </div>
                            </div>
                            <!-- Bottom Carousel Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#quote-carousel" data-slide-to="0" class="active"><img class="img-responsive " src="<?= base_url('assets\frontend/images/Michelle-Wigle.jpg') ?>" alt="">
                                
                                </li>
                                <li data-target="#quote-carousel" data-slide-to="1"><img class="img-responsive" src="https://s3.amazonaws.com/uifaces/faces/twitter/adhamdannaway/128.jpg" alt="">
                                </li>
                                <li data-target="#quote-carousel" data-slide-to="2"><img class="img-responsive" src="https://s3.amazonaws.com/uifaces/faces/twitter/brad_frost/128.jpg" alt="">
                                </li>
                            </ol>

                            <!-- Carousel Buttons Next/Prev -->
                            <a data-slide="prev" href="#quote-carousel" class="left carousel-control"><i class="fa fa-chevron-left"></i></a>
                            <a data-slide="next" href="#quote-carousel" class="right carousel-control"><i class="fa fa-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <!--<div class="product-composition-media">
                <div class="block-content-media">
                    <h3>Your personalized Keto diet plan</h3>
                    <img src="<?= base_url('assets\frontend/images/keto-plan.webp') ?>" alt="Shopping list" />
                </div>
            </div>-->

            
            <div class="faq">
                <div class="block-content">
                    <h2 style="text-decoration: none;">People often ask us</h2>
                    <div class="block-content-items">
                        <p><span>What happens after I order?</span><br>
                            After you place your order we get to work! Based on the questions you answered in the quiz,
                            we’ll craft your plan to your exact personal nutrition requirements. All plans are double
                            verified - by the person making it and a supervisor - so you can be certain the plan you get is
                            the best.
                        </p>
                        <p><span>When do I get my plan?</span><br>
                            Our every plan is personalized and our nutritionists work hard to make them for you to like.
                            Usually it takes up to 2 hours for your plan to be delivered into your email.
                        </p>
                    </div>
                </div>
            </div>

            <div class="text-center payment-info">
                <button class="e-btn cta-btn subscribe-btn">Click here to get your plan</button>
            </div>

            <div class="limited-offer">
                The offer expires in: <span class="time is-pulsing">15:00</span>
            </div>
            <br />

            <div class="secure-payment">
                <img src="<?= base_url('assets\frontend/images/safecheckout.png') ?>" alt="Secure payment" width="300">
            </div>
            <br />

        </div>
    </div>
</div>

<div id="cc-modal" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Get your plan</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!--<div id="paypal-button"></div>-->
                <!--                <div class="payment-loader">
                                    <img src="<?= base_url('assets\frontend/images/loader.gif') ?>" alt="Processing" />
                                </div>-->
                                <!--<a href="<?= base_url('paypal-success') ?>"><button class="btn btn-info">Pay through paypal</button></a>-->
                <!--<div id="paypal-button-container"></div>-->
                <?php
                if ($this->session->userdata('email_already_exists')) {
                    ?>
                <p>The Email you entered (<?=$this->session->userdata('email_already_exists')?>) is already exits</p>
                <a class="btn btn-lg btn-success" href="<?= base_url('panel')?>">Login Now</a>
                    <?php
                } else {
                    ?>
                <div id="paypal-button-container"></div>
                <?php } ?>
                <div class="payment-loader" id="payment-loader">
                    <img src="<?= base_url('assets/frontend/images/loader.gif') ?>" alt="Processing" />
                </div>

                <div class="text-center py-2">
                    <img src="<?= base_url('assets/frontend/images/safecheckout.png') ?>" alt="Secure payment">
                </div>
                <div class="payment-pop">
                    <ul>
                        <li class="e-feature">
                            <i class="fa fa-check-square-o" aria-hidden="true"></i>
                            Secure Payment
                        </li>
                        <li class="e-feature">
                            <i class="fa fa-check-square-o" aria-hidden="true"></i>
                            Immediate Plan Delivery
                        </li>
                        <li class="e-feature">
                            <i class="fa fa-check-square-o" aria-hidden="true"></i>
                            Personalised Guidance
                        </li>
                    </ul>
                </div>

                <div class="payment-separator">
                    <!--<span>or pay with a card</span>-->
                </div>

                <div class="final-price subscription">
                    <strong>Total:</strong>
                    <span class="amount" id="amount">$109.00</span> &nbsp;
                    billed every <span class="period" id="month">12</span> month(s)
                </div>
            </div>
        </div>
    </div>
</div>

<div id="terms_and_conditions_modal_us" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <button type="button" style="position: absolute;z-index: 1;right: 5px;top: -25px;color: white;opacity: 1;" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <!-- <div class="b-text b-text-api" style="display: none"></div> -->
            <div class="b-text b-text-fallback" >
                <p><strong>General Terms and Conditions</strong></p>
                <p>
                    <strong>1. Introduction</strong>
                </p>
                <p>
                    1.1. This Agreement govern the entire relationship between you the Client and the Company.
                </p>
            </div>
        </div>
    </div>
</div>
<div id="privacy_policy_modal" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <button type="button" style="position: absolute;z-index: 1;right: 5px;top: -25px;color: white;opacity: 1;" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <!-- <div class="b-text b-text-api" style="display: none"></div> -->
            <div class="b-text b-text-fallback">
                <p><strong>Data protection policy</strong></p>
                <p style="margin-top:0.23in; margin-bottom:0.11in">
                    <span style="line-height:100%">
                        <font color="#444444">
                        <font face="Karla, serif">
                        <font size="2">
                        <font style="font-size: 10pt"><b>KETO CYCLE COMMITMENT TO PRIVACY</b></font>
                        </font>
                        </font>
                        </font>
                    </span>
                </p>

            </div>
        </div>
    </div>
</div>
<div id="terms_and_conditions_modal_eu" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <button type="button" style="position: absolute;z-index: 1;right: 5px;top: -25px;color: white;opacity: 1;" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <!-- <div class="b-text b-text-api" style="display: none"></div> -->
            <div class="b-text b-text-fallback" >
                <P ALIGN=CENTER STYLE="margin-bottom: 0.17in; line-height: 100%">
                    <FONT SIZE=4><B>General
                        Terms and Conditions</B></FONT>
                </P>
                <P ALIGN=JUSTIFY STYLE="margin-left: 0.97in; text-indent: -0.49in; margin-bottom: 0.17in; line-height: 100%">
                    <FONT SIZE=3><B>1. Introduction</B></FONT>
                </P>
                <P ALIGN=JUSTIFY STYLE="margin-left: 0.97in; text-indent: -0.49in; margin-bottom: 0.17in; line-height: 100%">
                    <FONT SIZE=2>1.1. These General Terms and Conditions (the
                    “</FONT>
                    <FONT SIZE=2><B>T&amp;Cs</B></FONT>
                    <FONT SIZE=2>”) govern
                    the entire relationship between you the Client and the Company acting
                    as an individual meal plan provider based on Keto diet.</FONT>
                </P>
            </div>
        </div>
    </div>
</div>
<style>
    body {
        background: #fff !important;
    }
</style>
<script src="<?= base_url('assets/frontend/js/jquery.min.js') ?>" type="text/javascript"></script>
<script type="text/javascript" src="<?= base_url('assets\frontend/js/payment.js') ?>"></script>
<input type="hidden" name="total_amount" id="total_amount" value="109">
<input type="hidden" name="total_months" id="total_months" value="12">
<script>
    $('.pricing-option').click(function () {
        var mothnly_plan = $(this).data('pricing');
        var amount = 0;
        var month = 0;
        if (mothnly_plan == 2) {
            // one month
            amount = 18.8;
            month = 1;
        } else if (mothnly_plan == 1) {
            //3 month
            amount = 42;
            month = 3;
        } else {
            // one year
            amount = 109;
            month = 12;
        }
        $("#amount").html('$' + amount);
        $("#month").html(month);
        // assign to hidden fields
        $("#total_amount").val(amount);
        $("#total_months").val(month);
    });

</script>
<script
    src="https://www.paypal.com/sdk/js?client-id=<?= pp_client_id ?>"> // Required. Replace SB_CLIENT_ID with your sandbox client ID.
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
                var month = document.getElementById("total_months").value;
                var p_id = details.id;
                var given_name = details.payer.name.given_name;
                if (p_id) {
                    // This function shows a transaction success message to your buyer.
                    $.post('<?= base_url() ?>save-user-payment',
                            {
                                p_id: p_id,
                                given_name: given_name,
                                amount: amt,
                                month: month,
                                mehtod: 'pp'
                            },
                            function (data, status) {

                                if (status == 'success') {
                                    window.location.replace("<?= base_url('payment-success') ?>");
                                } else {
                                    alert('Something went wrong');
                                }
                            });

                }
            });
        }
    }).render('#paypal-button-container');

</script>
