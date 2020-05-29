<!-- Content Body Start -->
<div class="content-body">

    <!-- Page Headings Start -->
    <div class="row mb-10">

        <!-- Page Heading Start -->
        <div class="col-12 col-lg-auto ml-15 mr-15">
            <div class="page-heading">
                <h3>Your Plan</h3>
            </div>
        </div><!-- Page Heading End -->

    </div><!-- Page Headings End -->


    <!-- Row Start -->
    <div class="row py-4 pl-3 pr-3  mb-2 plan-details">

        <div class="col-xlg-3 col-md-3 col-12 my-2">
            <div class="top-report">
                <div class="media border-bottom mb-10 pb-10">
                    <img class="mr-3" src="<?= base_url('assets') ?>/images/p2.svg" >
                    <div class="media-body">
                        <h5 class="mt-0"><?= $user_summary->weight ?> kg</h5>
                        <p><strong>Current weight</strong></p>
                    </div>
                </div>
                <div class="media mt-3">
                    <img class="mr-3" src="<?= base_url('assets') ?>/images/p2.svg" >
                    <div class="media-body">
                        <h5 class="mt-0"><?= $user_summary->target_weight ?> kg</h5>
                        <p><strong>Target weight</strong></p>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xlg-3 col-md-3 col-12 my-2">
            <div class="top-report">
                <div class="media border-bottom mb-10 pb-10">
                    <img class="mr-3" src="<?= base_url('assets') ?>/images/p2.svg" >
                    <div class="media-body">
                        <h5 class="mt-0"><?= $user_summary->height ?> cm</h5>
                        <p><strong>Height</strong></p>
                    </div>
                </div>
                <div class="media mt-3">
                    <img class="mr-3" src="<?= base_url('assets') ?>/images/p2.svg" >
                    <div class="media-body">
                        <h5 class="mt-0">Low</h5>
                        <p><strong>Activity Level</strong></p>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xlg-3 col-md-3 col-12 my-2">
            <div class="top-report">
                <div class="media border-bottom mb-10 pb-10">
                    <img class="mr-3" src="<?= base_url('assets') ?>/images/p2.svg" >
                    <div class="media-body">
                        <h5 class="mt-0"><?= $user_summary->Kcal ?></h5>
                        <p><strong>Daily Calories</strong></p>
                    </div>
                </div>
                <div class="media mt-3">
                    <img class="mr-3" src="<?= base_url('assets') ?>/images/p2.svg" >
                    <div class="media-body">
                        <h5 class="mt-0"><?= $user_summary->BMI ?> - <?= $user_summary->bmr ?></h5>
                        <p><strong>BMI/BMR</strong></p>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xlg-3 col-md-3 col-12 my-2">
            <div class="top-report">
                <div class="media border-bottom mb-10 pb-10">
                    <img class="mr-3" src="<?= base_url('assets') ?>/images/p2.svg" >
                    <div class="media-body">
                        <h5 class="mt-0">7.3 L</h5>
                        <p><strong>Water intake</strong></p>
                    </div>
                </div>
                <div class="media mt-3">
                    <img class="mr-3" src="<?= base_url('assets') ?>/images/p2.svg" >
                    <div class="media-body">
                        <h5 class="mt-0"><?= $user_summary->target_weight ?> kg</h5>
                        <p><strong>Expected 30 Days</strong></p>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- Row End -->


    <!-- Row Start -->
    <div class="row">

        <div class="col-12 col-md-4 col-lg-auto ml-15 mr-15">
            <div class="page-heading">
                <h3>Your Custom Meal Plan</h3>
            </div>
        </div>

        <div class="col-12 col-md-8 col-lg-auto ml-15 mr-15">

            <nav aria-label="Page navigation example" class="d-inline-block">
                <ul class="pagination">
                    <li class="page-item"><button onclick="shownextweek(0)" class="page-link cm-pre"> < </button></li>
                    <li class="page-item"><a class="page-link">WEEK <span id="week_number">1</span></a></li>
                    <li class="page-item"><button onclick="shownextweek(1)" class="page-link cm-pre" > > </button></li>

                </ul>
            </nav>
            <div class="spinner-grow" id="loading" style="display:none" role="status">
                <span class="sr-only">Loading...</span>
            </div>
            <!--<button class="button button-outline button-danger text-uppercase" data-toggle="modal" data-target="#changeingredients"><span>CHANGE INGREDIENTS</span></button>-->
            <!--<button class="button button-danger text-uppercase"><span>Download Shopping list</span></button>-->
        </div>

    </div><!-- Row End -->
    
    <!----------Change Ingredients Model-------------->
    <div class="modal fade show" id="changeingredients">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Select or change food ingredients</h5>
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button>
                </div>
                <div class="modal-body">
                    <nav>
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                            <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">MEAT</a>
                            <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">PRODUCTS</a>
                        </div>
                    </nav>
                    <div class="tab-content" id="nav-tabContent">

                        <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                            <div class="d-flex flex-wrap my-3">
                                <label class="ingredients-check mr-3 mb-4"><input type="checkbox"  > <span class="ic-title"><img src="<?= base_url('assets') ?>/images/chicken.png" alt="Chicken"> <span>Chicken</span></span></label>

                                <label class="ingredients-check mr-3 mb-4"><input type="checkbox"  > <span class="ic-title"><img src="<?= base_url('assets') ?>/images/chicken.png" alt="Chicken"> <span>Pork</span></span></label>

                                <label class="ingredients-check mr-3 mb-4"><input type="checkbox" > <span class="ic-title"><img src="<?= base_url('assets') ?>/images/chicken.png" alt="Chicken"> <span>Beef</span></span></label>

                                <label class="ingredients-check mr-3 mb-4"><input type="checkbox" > <span class="ic-title"><img src="<?= base_url('assets') ?>/images/chicken.png" alt="Chicken"> <span>Fish</span></span></label>

                                <label class="ingredients-check mr-3 mb-4"><input type="checkbox" > <span class="ic-title"><img src="<?= base_url('assets') ?>/images/chicken.png" alt="Chicken"> <span>Bacon</span></span></label>

                                <label class="ingredients-check mr-3 mb-4"><input type="checkbox" > <span class="ic-title"><img src="<?= base_url('assets') ?>/images/chicken.png" alt="Chicken"> <span>No Meat</span></span></label>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                            <div class="d-flex flex-wrap my-3">
                                <label class="ingredients-check mr-3 mb-4"><input type="checkbox" > <span class="ic-title"><img src="<?= base_url('assets') ?>/images/chicken.png" alt="Chicken"> <span>Chicken</span></span></label>

                                <label class="ingredients-check mr-3 mb-4"><input type="checkbox" > <span class="ic-title"><img src="<?= base_url('assets') ?>/images/chicken.png" alt="Chicken"> <span>Pork</span></span></label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="button button-danger">Save changes</button>
                </div>
            </div>
        </div>
    </div>
  

    <div class="row py-4 pl-3 pr-3  mb-2 plan-div-col">
        <div class="col-lg-12 col-md-12">
            <div class="row" >

                <?php
                /*
                  $i = $j = 1;
                  $rowbeark = TRUE;

                  foreach ($user_meals as $key => $value) {
                  //        print_r($value);
                  ?>
                  <div class="col-lg-3 col-md-4 col-sm-6 mb-4 ">
                  <div class="card" style="width: 18rem;">
                  <h5 class="card-title"><?= $value->meal_name ?></h5>
                  <img class="card-img-top img-custom" src="<?= base_url('uploads') ?>/images/meals/<?= $value->meal_image ?>" alt="Meal Image">
                  <div class="card-body">
                  <p class="card-text">Kcal: <?= $value->meal_kcal ?></p>
                  </div>
                  </div>
                  </div>

                  <?php
                  $i++;
                  $rowbeark = FALSE;
                  } */
                ?>
            </div>
        </div>
    </div>
      <div class="row plan-title-div pt-3">
                <div class="col-md-1"></div>

                <div class="col-md-11">
                    <!-- Row Start -->
                    <div class="row pl-3 pr-3  mb-2 plan-div-col">
                        <div class="col-md-3 my-2">
                            <h4>Breakfast</h4>
                        </div>

                        <div class="col-md-3 my-2">
                            <h4>Lunch</h4>
                        </div>

                        <div class="col-md-3 my-2">
                            <h4>Dinner</h4>
                        </div>

                        <div class="col-md-3 my-2">
                            <h4>Snacks</h4>
                        </div>
                    </div>

                </div>
            </div>
    
    <div id="meals_data">
        
    </div>
</div><!-- Content Body End -->
<input type="hidden" id="current_week" value="1">
<script>
    $(document).ready(function () {
        var week = 1;
        get_user_meals(week);

    });
    function shownextweek(week) {
        var current_week = $('#current_week').val();
        if (week == 0) {
            if (current_week > 1) {
                var next_week = Number(current_week) - 1;
            }
        } else {
            if (current_week < 4) {
                var next_week = Number(current_week) + 1;
            }
        }
        $('#current_week').val(next_week);
        $('#week_number').html(next_week);
        get_user_meals(next_week);
    }
    function get_user_meals(week) {
        $('#loading').show();
        $.post('<?= base_url() ?>panel/get-user-meal',
                {week: week},
                function (data, status) {
                    if (data) {
                        console.log(data);
                        $('#meals_data').html(data);
                        $('#loading').hide();
                    }
                });
    }
</script>