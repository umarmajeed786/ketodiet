<?php
$model_class='';
if($addon_payment_type!=1){
}
?>
<!-- Content Body Start -->
<div class="content-body">

    <!-- Page Headings Start -->
    <div class="row mb-10">

        <!-- Page Heading Start -->
        <div class="col-12 col-lg-auto ml-15 mr-15">
            <div class="page-heading">
                <h3>Personal Training</h3>
            </div>
        </div><!-- Page Heading End -->

    </div>

    <div class="row my-4">

        <div class="col-md-6 my-4">
            <div class="card bg-dark text-white">
                <img class="card-img" src="./assets/images/class-3.jpg" alt="Card image">
                <div class="card-img-overlay">

                    <h3 class="text-white">Workout 1</h3>

                    <div class="uk-position-cover uk-flex uk-flex-center uk-flex-bottom">
                        <div class="ak-overlay-classes uk-width-1-1">
                            <div class="tm-radial uk-float-left" data-circle-value="0.40">    <canvas width="116" height="116"></canvas>
                                <div>Duration <span>25 minutes</span></div>
                            </div>
                            <div class="tm-radial uk-float-left" data-circle-value="0.5">
                                <canvas width="116" height="116"></canvas>
                                <div>Calories <span>750</span></div>
                            </div>
                            <div class="tm-radial uk-float-left" data-circle-value="0.15">
                                <canvas width="116" height="116"></canvas>
                                <div>Level <span>Easy</span></div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="col-md-6 my-4">
            <div class="card bg-dark text-white">
                <img class="card-img" src="./assets/images/class-2.jpg" alt="Card image">
                <div class="card-img-overlay">

                    <h3 class="text-white">Workout 2</h3>

                    <div class="uk-position-cover uk-flex uk-flex-center uk-flex-bottom">
                        <div class="ak-overlay-classes uk-width-1-1">
                            <div class="tm-radial uk-float-left" data-circle-value="0.40">    <canvas width="116" height="116"></canvas>
                                <div>Duration <span>25 minutes</span></div>
                            </div>
                            <div class="tm-radial uk-float-left" data-circle-value="0.5">
                                <canvas width="116" height="116"></canvas>
                                <div>Calories <span>750</span></div>
                            </div>
                            <div class="tm-radial uk-float-left" data-circle-value="0.15">
                                <canvas width="116" height="116"></canvas>
                                <div>Level <span>Easy</span></div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </div>
    <?php
    if ($addon_payment_type == 1) {
        ?>
        <div class="download-buttons center-block">
                    <button class="btn btn-lg btn-success "  type="button">Download Training</button>
        </div>
    </div>
        <?php
    }else{
    ?>

</div>
<!-- Content Body End -->



<div class="modal fade show workout" id="personalizedWorkout" aria-modal="true" style="padding-right: 17px; display: block;">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Workout Plan</h5>
                <a href="<?= base_url('panel/dashboard') ?>"" class="button button-danger">Cancel</a>
                <!-- <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button> -->
            </div>
            <div class="modal-body">

                <div class="workouts-upsell">
                    <div class="notice">
                        <div class="e-text">
                            <strong>Oops..</strong>
                            <p style="color: #ff2743;">Unfortunately, your current plan does not include a workout routine. If you would like to get one - check our offer below.</p>
                        </div>
                        <!-- <div class="e-img">
                            <img src="/assets/foundation/images/oops.png" alt="Oops">
                        </div> -->
                    </div>
                    <div class="workout-benefits">
                        <h3>Get your personal workout plan!</h3>
                        <ul>
                            <li><i class="fa fa-check"></i> No equipment needed</li>
                            <li><i class="fa fa-check"></i> Workout anywhere you want</li>
                            <li><i class="fa fa-check"></i> Only 15-45 minutes per workout</li>
                        </ul>
                    </div>
                    <div class="unlock-now">
                        <div class="unlock">Unlock your workout plan now for:</div>
                        <div class="price">19.99 USD</div>
                        <div class="old-price">39.99 USD</div>
                    </div>
                    <div class="payment-buttons">
                        <button class="add-workout-upsell"  data-toggle="modal" data-target="#personalizedWorkoutpayment" type="button">Add to my order</button>
                    </div>
                </div>

            </div>
            <!-- <div class="modal-footer">
                <button class="button button-danger">Save changes</button>
            </div> -->
        </div>
    </div>
</div>
    <?php } ?>
<input type="hidden" name="total_amount" id="total_amount" value="19.99">
<input type="hidden" name="amount_type" id="amount_type" value="1">

<div class="modal fade " id="personalizedWorkoutpayment" aria-modal="true"  data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"></h5>
                 <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button> 
            </div>
            <div class="modal-body">
                <div id="paypal-button-container"></div>
                <div class="payment-loader" style="display: none" id="payment-loader">
                    <img style="margin-left: 50%;" src="<?= base_url('assets/frontend/images/loader.gif') ?>" alt="Processing" />
                </div>
            </div>
        </div>
    </div>
</div>