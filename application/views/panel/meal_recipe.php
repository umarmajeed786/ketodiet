<?php
if ($meals) {
    $meal_id = $meals[0]->meal_id;
    $meal_name = $meals[0]->meal_name;
    $meal_image = $meals[0]->meal_image;
    $meal_type_id = $meals[0]->meal_type_id;
    $meal_kcal = $meals[0]->meal_kcal;
    $meal_preparation_time = $meals[0]->meal_preparation_time;
    $meal_protein = $meals[0]->meal_protein;
    $meal_fats = $meals[0]->meal_fats;
    $meal_carbs = $meals[0]->meal_carbs;
    $active = $meals[0]->active;
    $meal_Ingredients = $meals[0]->meal_Ingredients;
    $meal_description = $meals[0]->meal_description;
    $meal_additional_tips = $meals[0]->meal_additional_tips;
    $image_path = 'src="' . base_url('uploads/images/meals/') . $meal_image . '"';
}
?> 
<!-- Content Body Start -->
<div class="content-body">
    <div class="container mt-2 mb-5 recipe-container">

        <!--row start -->
        <div class="row py-5">
            <div class="col-md-6 ">
                <div class="card bg-dark text-white">
                    <img <?= $image_path ?> class="img-fluid">
                    <div class="card-img-overlay">

                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <h2 class="card-title pt-3"><?= $meal_name ?></h2>
                <p class="card-text"><?= $meal_description ?></p>
                <p class="card-text">
                    <span class="rd-icon"><i class="fa fa-clock-o"></i> <?= $meal_preparation_time ?> Minutes </span> 
<!--                    <span class="rd-icon"><i class="fa fa-tag"></i> Serves 2 |</span> 
                    <span class="rd-icon"><i class="fa fa-bookmark-o"></i> Medium</span>-->
                </p>
            </div>

        </div>
        <!--row end --> 

        <!--row start -->
        <div class="row my-5 pt-1 pb-4">
            <div class="col-sm-4">

                <!-- card one -->
                <div class="card recipe-card-filter">
                    <article class="card-group-item">
                        <header class="card-header">
                            <h3 class="title"><strong>Ingredients</strong></h3>
                        </header>
                        <div class="filter-content">
                            <div class="card-body">
                                <form>
                                    <?php
//                                        $ingredients=explode(','.$meal_Ingredients);
                                    $ingredients = explode(',', $meal_Ingredients);
                                    foreach ($ingredients as $value) {
                                        ?>

                                        <label class="form-check">
                                            <input class="form-check-input" checked="" type="checkbox" value="">
                                            <span class="checkmark"></span>
                                            <span class="form-check-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?= $value ?></span>
                                        </label> <!-- form-check.// -->
                                        <?php
                                    }
                                    ?>
                               
                                </form>

                            </div> <!-- card-body.// -->
                        </div>
                    </article>
                </div>
                <!-- card end -->

                <div class="card my-4 recipe-card-filter-2">
                    <article class="card-group-item">
                        <header class="card-header">
                            <h3 class="title"><strong>Nutrition</strong></h3>
                        </header>
                        <div class="filter-content">
                            <div class="list-group list-group-flush">
                                  <a href="#" class="list-group-item">Net carbs <span class="float-right badge badge-light "><?= $meal_carbs ?> g</span> </a>

                                    <a href="#" class="list-group-item">Fat <span class="float-right badge badge-light "><?= $meal_fats ?> g</span>  </a>

                                    <a href="#" class="list-group-item">Protein <span class="float-right badge badge-light "><?= $meal_protein ?> g</span>  </a>

                            </div>  <!-- list-group .// -->
                        </div>
                    </article> <!-- card-group-item.// -->
                </div>

            </div>


            <div class="col-sm-8 recipe-div">
                <h3 class="title"><strong>Nutrition</strong></h3>
                <ol>
                        <?php
                        foreach ($meal_recipe_steps as $value) {
                            echo "<li>$value->meal_recipe_step_description</li>";
                        }
                        ?>
                    </ol>
                    <?php
                    if ($meal_additional_tips != '') {
                        echo "<h3 class='title mt-5'><strong>Additional Tips</strong></h3>";
                        echo "<p>" . $meal_additional_tips . "</p>";
                    }
                    ?>

            </div>

        </div>

    </div>
</div>

