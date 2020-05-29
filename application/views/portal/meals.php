<div class="row mb-3 ml-1">
    <div class="col-xl-9 col-lg-6 col-md-4">
        <a href="<?= base_url('admin/add-new-meal')?>"><button class="btn btn-primary">Add Meal</button></a>
    </div>

    <div class="col-xl-3 col-lg-6 col-md-8">
        <form>
            <div class="row">
                <div class="col-sm-8 mt-3 mt-md-0">
                    <input type="text" value="<?= $search ?>" name="name" class="form-control" placeholder="Name">
                </div>
                <div class="col-sm-4 mt-3 mt-md-0">
                    <button type="submit" class="btn btn-primary btn-block">Search</button>
                </div>
            </div>
        </form>
    </div>
</div>
<div class="row">
    <div class="col-md-12 col-lg-12">
        <div class="table-responsive">
            <table class="display table table-bordered">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">IMG</th>
                        <th scope="col">Name</th>
                        <th scope="col">Kcal</th>
                        <th scope="col">P. Time</th>
                        <th scope="col">Protein</th>
                        <th scope="col">Fats</th>
                        <th scope="col">Carbs</th>
                        <th scope="col">M Type</th>
                        <th scope="col">Meat type</th>
                        <th scope="col">Product type</th>
                        <th scope="col">Created At</th>
                        <th scope="col">Status</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $sr = $this->paginator->get_start_count();
                    $ptah=base_url('uploads/images/meals/');
                     $CI = get_instance();
                    foreach ($meals as $key => $value) {
                       $neal_product_types= $CI->portal_model->get_meal_product_types($value->meal_id)->result();
                        $mael_meat_types=$CI->portal_model->get_meal_meat_types($value->meal_id)->result();
                        $product_types_name='';
                        foreach ($neal_product_types as $i=>$j){
                            $product_types_name.=$j->product_type_name .', ';
                        }
                        $meal_types_name='';
                        foreach ($mael_meat_types as $k=>$l){
                            $meal_types_name.=$l->meat_type_name .', ';
                        }
                        ?>
                        <tr>
                            <th class="align-middle"><?= $sr++ ?></th>
                            <td class="align-middle"><img height="80" width="80" src="<?= $ptah.$value->meal_image ?>"></td>
                            <td class="align-middle"><?= $value->meal_name ?></td>
                            <td class="align-middle"><?= $value->meal_kcal ?></td>
                            <td class="align-middle"><?= $value->meal_preparation_time ?> Min</td>
                            <td class="align-middle"><?= $value->meal_protein ?>g</td>
                            <td class="align-middle"><?= $value->meal_fats ?>g</td>
                            <td class="align-middle"><?= $value->meal_carbs ?>g</td>
                            <td class="align-middle"><?= $value->meal_type_name ?></td>
                            <td class="align-middle"><?= $meal_types_name ?></td>
                            <td class="align-middle"><?= $product_types_name ?></td>
                            <td class="align-middle"><?= $value->created_at ?></td>
                            <td class="align-middle"><?= ($value->active) ? 'Active' : 'Inactive' ?></td>
                            <td class="align-middle">
                                <a class="btn btn-primary" href="<?= base_url('admin/edit-meal').'/'.$value->meal_id ?>" title="Edit Meal">
                                    <span class="fa fa-pen"></span>
                                </a>
                                <button class="btn btn-danger delete-country" data-id="<?= $value->meal_id ?>" title="Delete Meal">
                                    <span class="fa fa-trash"></span>
                                </button>
                            </td>
                        </tr>
                        <?php
                    }
                    if (empty($meals)) {
                        ?>
                        <tr>
                            <td colspan="100" class="text-center">No Record Found</td>
                        </tr>
                    <?php }
                    ?>
                </tbody>
            </table>
        </div>
        <?php echo $this->paginator->get_links(); ?>
        <div class="modal fade" id="add_meal" data-backdrop="static" data-keyboard="false">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form action="<?= base_url('add-meal') ?>"  method="post" enctype="multipart/form-data">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Add Meal</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12 form-group mb-3">
                                    <label>Meal Name</label>
                                    <input type="text" class="form-control" required="" name="meal_name" value="<?= set_value('meal_name') ?>">
                                </div>
                                <div class="col-md-12 form-group mb-3">
                                    <label>Meal Kcal</label>
                                    <input type="number" min="0" class="form-control" required="" name="meal_kcal" value="<?= set_value('meal_kcal') ?>">
                                </div>
                                <div class="col-md-12 form-group mb-3">
                                    <label>Meal Preparation </label>
                                    <input type="number" min="0" class="form-control" required="" name="meal_preparation_time" value="<?= set_value('meal_preparation_time') ?>">
                                </div>
                                <div class="col-md-12 form-group mb-3">
                                    <label>Meal Protein</label>
                                    <input type="number" min="0" class="form-control" required="" name="meal_protein" value="<?= set_value('meal_protein') ?>">
                                </div>
                                <div class="col-md-12 form-group mb-3">
                                    <label>Meal Fats </label>
                                    <input type="number" min="0" class="form-control" required="" name="meal_fats" value="<?= set_value('meal_fats') ?>">
                                </div>
                                <div class="col-md-12 form-group mb-3">
                                    <label>Meal Carbs </label>
                                    <input type="number" min="0" class="form-control" required="" name="meal_carbs" value="<?= set_value('meal_carbs') ?>">
                                </div>
                                <div class="col-md-12 form-group mb-3">
                                    <label>Meal Image </label>
                                    <input type="file"  class="form-control"  accept="image/*"  required="" name="meal_image" value="<?= set_value('meal_image') ?>">
                                </div>
                                <div class="col-md-12 form-group mb-3">
                                    <label>Meal Type</label>
                                    <Select name="meal_type_id" required="" class="form-control">
                                        <?php
                                        foreach ($meal_types as $key => $value) {
                                            ?>
                                            <option value="<?= $value->meal_type_id ?>"><?= $value->meal_type_name ?></option>
                                            <?php
                                        }
                                        ?>
                                    </Select>
                                </div>
                                <div class="col-md-12 form-group mb-3">
                                    <label>Meal Meat type</label>
                                    <br>
                                        <?php
                                        foreach ($meat_types as $key => $value) {
                                            ?>
                                    <input type="checkbox" value="<?= $value->meat_type_id ?>" name="meat_type_id[]"> <?= $value->meat_type_name ?>
                                            <?php
                                        }
                                        ?>
                                </div>
                                <div class="col-md-12 form-group mb-3">
                                    <label>Meal Product Type</label>
                                    <br>
                                        <?php
                                        foreach ($product_types as $key => $value) {
                                            ?>
                                    <input type="checkbox" value="<?= $value->product_type_id ?>" name="product_type_id[]"> <?= $value->product_type_name ?>
                                            <?php
                                        }
                                        ?>
                                </div>
                                <div class="col-md-12 form-group mb-3">
                                    <label class="switch switch-primary mr-3">
                                        <span>Status</span>
                                        <input type="checkbox" name="active" checked value="1">
                                        <span class="slider"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Add Meal</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        $('.delete-country').click(function () {
            var country_id = $(this).data('id');
            swal({
                title: 'Are you sure?',
                text: "All of its options and Votes will be deleted.",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
            }).then(function () {
                $.post('<?= base_url() ?>delete-meal',
                        {id: country_id},
                        function (data, status) {
                            if (status === 'success') {
                                swal({
                                    title: "Deleted!",
                                    text: "Meal has been deleted.",
                                    type: "success"
                                }).then(function () {
                                    window.location.href = '';
                                });
                            }
                        });

            })
        });
<?php if ($this->session->flashdata('add_meal_error')): ?>
            $('#add_meal').modal('show');
<?php endif; ?>
    });
</script>