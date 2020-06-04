<style>

    body {

        background: #fff !important;

    }

</style>


<header class="blog-header pt-3">
    <div class="row ">
        <div class="col text-center">
            <img src="<?= base_url('assets/frontend/images/keto-diet-logo.png') ?>" alt="Keto Diet Simplified" class="regular-logo" width="160">
        </div>
    </div>
</header>

<div class="subheader my-4" style="display:block;">
    <div class="progress-bar">
        <div class="progress" style="width:100%;"></div>
    </div>
</div>



<div id="app" class="results-2 results-3 c-content" data-gender="male">

    <div class="summary-container c-maincontent">

        <div class="container container-intro">

            <h3 align="center">Your Results Are-</h3>

            <div class="b-blocks-featured">

                <div class="row">
                    <div class="col col-calorie">
                        <div class="b-result b-result--text">
                            <div class="b-stats--header">
                                <?=  number_format($info['client']['calories'],0); ?>
                            </div>
                            <div class="b-stats--footer">
                                Daily Calories
                            </div>
                        </div>
                    </div>

                    <div class="col rslt-col-50">
                        <div class="b-result b-result--text">
                            <div class="b-stats--header">
                                <p><?=  number_format($info['client']['bmi'],0); ?></p>
                                <br>
                            </div>
                            <div class="b-stats--footer ">
                                <strong>Bmi </strong><br>
                                <span class="e-special">
                                <?php if($info['client']['bmi']<=18.5) echo  'underweight'; 

                                elseif($info['client']['bmi']>18.5 && $info['client']['bmi']<=24.9) echo 'Normal';

                                elseif($info['client']['bmi']>24.9 && $info['client']['bmi']<=29.9) echo 'Overweight';

                                else echo 'Obese'; ?>   
                                    </span>
                            </div>
                        </div>
                </div>

                <div class="col rslt-col-50">
                        <div class="b-result b-result--text">
                            <div class="b-stats--header">
                                3.5 <span>L</span>
                            </div>
                            <div class="b-stats--footer">
                                Recommended 
                                <b>water</b>
                                <span class="e-special">
                                    intake
                                </span>
                            </div>
                        </div>
                    </div>
                </div>

        </div>



        <div class="summary">

            <div class="row">

                <div class="col-md-12">
                    <div style="font-size: 22px;"><strong>Your Current Stats</strong></div>
                </div>

                <div class="col my-3">

                    <div id="bmi" class="b-result results-box">

                        <div class="e-row is-selected">

                            <span class="e-name">Age(full years)</span>

                            <span class="e-number"><?=  $info['client']['age']; ?></span>

                        </div>

                    </div>

                </div>

                <div class="col my-3">

                    <div id="bmi" class="b-result results-box">

                        <div class="e-row is-selected">

                            <span class="e-name">Height</span>

                            <span class="e-number"><?=  $info['client']['height']; ?></span>

                        </div>

                    </div>

                </div>

                <div class="col my-3">

                    <div id="bmi" class="b-result results-box">

                        <div class="e-row is-selected">

                            <span class="e-name">Current Weight</span>

                            <span class="e-number"><?=  $info['client']['weight']; ?></span>

                        </div>

                    </div>

                </div>

                <div class="col my-3">

                    <div id="bmi" class="b-result results-box">

                        <div class="e-row is-selected">

                            <span class="e-name">Target Weight</span>

                            <span class="e-number"><?=  $info['client']['target_weight']; ?></span>

                        </div>

                    </div>

                </div>

            </div>
            <div style="height:25px;"></div>
            <div class="row my-5">
                <div class="col-md-12 col-12 text-center">
                    <a href="<?= base_url('payment') ?>" class="cm-btn">Get Your Personalised Meal Plan</a>
                </div>
            </div>



        </div>



    </div>


    <div class="container">

        <div class="row">

            <div class="col-12 col-md-5">

                <h1 class="result__message">Get your personalized <span style="color: #44d8b1;">28-days</span> Keto diet meal plan</h1>

                <h2 class="result__message">Simple printable instructions and video guides for each recipe</h2>

            </div>

            <div class="col-12 col-md-7">

                <img src="<?= base_url('assets/frontend/images/listketo.png') ?>" style="width: 100%;">

            </div>

        </div>

    </div>


    <div class="covered">

        <div class="heading">Keto Diet was covered in</div>

        <div class="covered-logos">

            <img src="<?= base_url('assets/frontend/images/covered-1.png') ?>" alt="Health Insider" />

            <img src="<?= base_url('assets/frontend/images/covered-2.png') ?>" alt="Business Insider" />

            <img src="<?= base_url('assets/frontend/images/covered-3.png') ?>" alt="New york times" />

        </div>

        <div class="row my-5">
            <div class="col-md-12 col-12 text-center">
                <a href="<?= base_url('payment') ?>" class="cm-btn">Get Your Personalised Meal Plan</a>
            </div>
        </div>

    </div>

    
    <div class="container">
        <div class="row my-5">
            <div class="col-md-12 text-center img-slider">

                <div class="carousel slide" data-ride="carousel" id="quote-carousel">
                    <!-- Carousel Slides / Quotes -->
                    <div class="carousel-inner text-center">
                        <!-- Quote 1 -->
                        <div class="item">
                            <blockquote>
                                <div class="row">
                                    <div class="col-sm-8 col-sm-offset-2">
                                        <img src="<?= base_url('assets/frontend/images/Beforeafter.png') ?>" alt="Before After" width="300"/>
                                    </div>
                                </div>
                            </blockquote>
                        </div>
                        <!-- Quote 2 -->
                        <div class="item">
                            <blockquote>
                                <div class="row">
                                    <div class="col-sm-8 col-sm-offset-2">
                                        <img src="<?= base_url('assets/frontend/images/Beforeafter-2.png') ?>" alt="Before After" width="300"/>
                                    </div>
                                </div>
                            </blockquote>
                        </div>
                        <!-- Quote 3 -->
                        <div class="item active">
                            <blockquote>
                                <div class="row">
                                    <div class="col-sm-8 col-sm-offset-2">
                                        <img src="<?= base_url('assets/frontend/images/Beforeafter-3.png') ?>" alt="Before After" width="300"/>
                                    </div>
                                </div>
                            </blockquote>
                        </div>
                    </div>
                    <!-- Bottom Carousel Indicators -->
                    <ol class="carousel-indicators">
                        
                        <li data-target="#quote-carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#quote-carousel" data-slide-to="1"></li>
                        <li data-target="#quote-carousel" data-slide-to="2"></li>
                    </ol>

                </div>

            </div>
        </div>
    </div>

    <div class="container" id="summary-footer">

        <div class="row">

            <div class="container">

                <div class="b-ourpromise">

                    <h2>OUR PROMISE</h2>

                    <p class="e-text">

                        We believe in a balanced way to lose weight and keep the weight off. We know that most of the diets or weight loss programs that you have tried in the past don’t work - they are just too hard to follow. Enormous food cravings, friends that visit you with a bottle of wine, that freshly baked cheesecake… Everything affects your journey and if your diet is not easy-to-follow, you are not going to achieve your results.

                        <br><br>

                        Don’t blame yourself. It’s really hard. That’s why our nutritionists and personal coaches work around the clock to prepare the most personalized plans you love. We want to make sure that it becomes a part of your life. We don’t change habits, we help you to improve them.

                        <br><br>

                        Try it out and we guarantee you will be satisfied.

                    </p>

                    <div class="b-namesurname" style="display:flex;align-items: center;justify-content: flex-start;">

                        <div class="b-namesurname-namesurname" style="padding-right: 30px;">

                            <p class="e-heading">Head of Nutrition,</p>

                            <p class="e-subtitle">Janett Oliver</p>

                        </div>

                       

                    </div>

                </div>

            </div>

        </div>

    </div>



    <div class="row my-5">
        <div class="col-md-12 col-12 text-center">

            <a href="<?= base_url('payment') ?>" class="cm-btn" data-name="seemore" name="email">Get Your Personalised Meal Plan</a>

        </div>

    </div>

</div>

</div>


