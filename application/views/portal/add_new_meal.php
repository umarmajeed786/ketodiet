<?php
// For the edit page to show the default values
$meal_id=$meal_name = $meal_image = $meal_type_id = $meal_kcal = $meal_preparation_time = $meal_protein = $meal_fats = $meal_carbs = $meat_type_id = $product_type_id = $meal_Ingredients = $meal_recipe_step_description = $meal_description = $meal_additional_tips = $image_path = $active='';
$meat_type_selected_array=$product_type_selected_array=array();
$active=1;
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
    $image_path = 'src="'.base_url('uploads/images/meals/') . $meal_image.'"';

}
// To select the product type and meat type
if ($meals) {
    
    foreach($meat_types_selected as $value){
        $meat_type_selected_array[]=$value->meat_type_id;
    }
    foreach($product_types_selected as $value){
        $product_type_selected_array[]=$value->product_type_id;
    }
}

// Changing the URL and buttons name according to add/edit

if($meals){
    $action=base_url('edit-meal-save');
    $button='Update Meal';
}else{
    $action=base_url('add-meal-save');
    $button='Add Meal';
}
//
?>

<form action="<?= $action ?>"  method="post" enctype="multipart/form-data">
    <input type="hidden" name="meal_id" value="<?=$meal_id?>">
    <div class="modal-body">
        <div class="row">
            <div class="col-md-8 form-group mb-3">
                <label>Meal Name *</label>
                <input type="text" class="form-control" required="" name="meal_name" value="<?= $meal_name ?>">
            </div>
            <div class="col-md-2">
                <img id="meal_image" <?= $image_path ?> height="100" width="100">
            </div>
            <div class="col-md-6 form-group mb-3">
                <label>Meal Image* </label>
                <input type="file"  id="imgInp" class="form-control"  accept="image/*"  <?= $meal_image == '' ? 'required=""' : '' ?> name="meal_image">
            </div>

            <div class="col-md-6 form-group mb-3">
                <label>Meal Type*</label>
                <Select name="meal_type_id" required="" class="form-control">
                    <option value="">Select Meal Type</option>
                    <?php
                    $required = 'required=""';
                    foreach ($meal_types as $key => $value) {
                        ?>
                        <option <?= $value->meal_type_id == $meal_type_id ? 'selected' : '' ?> value="<?= $value->meal_type_id ?>"><?= $value->meal_type_name ?></option>
                        <?php
                    }
                    ?>
                </Select>
            </div>
            <div class="col-md-12">
                <hr>
                <!--<h4 class=""><u>Meal Nutrition</u></h4>-->
            </div>
            <div class="col-md-4 form-group mb-3">
                <label>Meal Kcal*</label>
                <input type="number" min="0" class="form-control" required="" name="meal_kcal" value="<?= $meal_kcal ?>">
            </div>
            <div class="col-md-4 form-group mb-3">
                <label>Time Taken to Prepare the Dish in Mins* </label>
                <input type="number" min="0" class="form-control" required="" name="meal_preparation_time" value="<?= $meal_preparation_time ?>">
            </div>
            <div class="col-md-4 form-group mb-3">
                <label>Meal Protein</label>
                <input type="number" min="0" class="form-control"  name="meal_protein" value="<?= $meal_protein ?>">
            </div>
            <div class="col-md-4 form-group mb-3">
                <label>Meal Fats </label>
                <input type="number" min="0" class="form-control"  name="meal_fats" value="<?= $meal_fats ?>">
            </div>
            <div class="col-md-4 form-group mb-3">
                <label>Meal Carbs </label>
                <input type="number" min="0" class="form-control"  name="meal_carbs" value="<?= $meal_carbs ?>">
            </div>


            <div class="col-md-12 form-group mb-3">
                <hr>
                <!--<h4 class=""><u>Meal Products and Meats</u></h4>-->
                <label>Meal Meat type*</label>
                <br>
                <?php
                foreach ($meat_types as $key => $value) {
                    ?>
                <input <?= in_array($value->meat_type_id, $meat_type_selected_array) ? 'checked' : '' ?> type="checkbox" value="<?= $value->meat_type_id ?>" name="meat_type_id[]"> <?= $value->meat_type_name ?>
                    <?php
                }
                ?>
            </div>
            <div class="col-md-12 form-group mb-3">
                <label>Meal Product Type*</label>
                <br>
                <?php
                foreach ($product_types as $key => $value) {
                    ?>
                    <input <?= in_array($value->product_type_id, $product_type_selected_array) ? 'checked' : '' ?> type="checkbox" value="<?= $value->product_type_id ?>" name="product_type_id[]"> <?= $value->product_type_name ?>
                    <?php
                }
                ?>
            </div>

            <div class="col-md-12 form-group mb-3">
                <hr>
                <!--<h4 class=""><u>Meal Recipe</u></h4>-->
                <label>Meal Ingredients(Comma separated)*</label>
                <textarea class="form-control" required="" name="meal_Ingredients"><?= $meal_Ingredients ?></textarea>
                <hr>
                <h5>Meal Steps*</h5>
                <br>
                <span id="step_box">
                    <?php
                    $start = 1;
                    $limit = 6;
                    $required = 'required=""';
                    if ($meals) {
                        foreach ($meal_recipe_steps as $value) {
                            if ($start > 3) {
                                $required = '';
                            }
                            echo "<label>Step $start</label>";
                            echo '<textarea ' . $required . ' class="form-control meal_steps" name="meal_recipe_step_description[]">' . $value->meal_recipe_step_description . '</textarea>';
                            $start++;
                        }
                    }
                    while ($start <= $limit) {
                        if ($start > 3) {
                            $required = '';
                        }
                        echo "<label>Step $start</label>";
                        echo '<textarea ' . $required . ' class="form-control meal_steps" name="meal_recipe_step_description[]"></textarea>';
                        $start++;
                    }
                    ?>
                </span>
                <br>
                <input type="hidden" id="total_steps" value="<?= $limit ?>">
                <button type="button" onclick="add_more_step_field()" class="btn btn-default btn-sm">Add Step</button>
            </div>
            <div class="col-md-12 form-group mb-3">
                <hr>
                <label>Meal Description</label>
                <textarea class="form-control" name="meal_description"><?= $meal_description ?></textarea>
            </div>
            <div class="col-md-12 form-group mb-3">
                <label>Additional Tips</label>
                <textarea class="form-control" name="meal_additional_tips"><?= $meal_additional_tips ?></textarea>
            </div>
            <div class="col-md-12 form-group mb-3">
                <label class="switch switch-primary mr-3">
                    <span>Status</span>
                    <input type="checkbox" name="active" <?=$active=='1'?'checked':''?> value="<?=$active?>">
                    <span class="slider"></span>
                </label>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="submit" class="btn btn-primary"><?= $button?></button>
    </div>
</form>

<script>
//$(document).ready(function(){
    function add_more_step_field() {
        var total_val = $("#total_steps").val();
        total_val = Number(total_val) + 1;
        var html = '<label>Step ' + total_val + '</label>';
        html += '<textarea class="form-control meal_steps" name="meal_recipe_step_description[]" placeholder="Enter Step ' + total_val + '"></textarea>';
        $("#step_box").append(html);
        $("#total_steps").val(total_val);
    }
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#meal_image').attr('src', e.target.result);
//                ('#meal_image').show();
            }

            reader.readAsDataURL(input.files[0]); // convert to base64 string
        }
    }

    $("#imgInp").change(function () {
        readURL(this);
    });
//});
</script>