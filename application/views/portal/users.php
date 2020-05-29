<div class="row mb-3 ml-1">
    <div class="col-xl-7 col-lg-6 col-md-4">
        <button class="btn btn-primary" data-toggle="modal" data-target="#add_user">Add User</button>
    </div>

    <div class="col-xl-5 col-lg-6 col-md-8">
        <form>
            <div class="row">
                <div class="col-sm-4">
                    <input type="text" value="<?= $search ?>" name="name" class="form-control" placeholder="Name">
                </div>
                <div class="col-sm-4">
                    <select name="role" class="form-control">
                        <option <?= $role == 2 ? 'selected' : '' ?> value="2">Customers</option>
                        <option <?= $role == 1 ? 'selected' : '' ?>  value="1">Admin</option>
                    </select>
                </div>
                <div class="col-sm-4 ">
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
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <?php
                        if ($role == 2) {
                            ?>
                            <th scope="col">Amount</th>
                            <th scope="col">Duration</th>
                            <th scope="col">Paid Date</th>
                            <?php
                        }
                        ?>
                        <th scope="col">User Type</th>
                        <th scope="col">Created At</th>
                        <th scope="col">Status</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $sr = $this->paginator->get_start_count();
                    foreach ($users as $key => $value) {
                        ?>
                        <tr>
                            <th class="align-middle"><?= $sr++ ?></th>
                            <td class="align-middle"><?= $value->first_name . ' ' . $value->last_name ?></td>
                            <td class="align-middle"><?= $value->email ?></td>
                            <?php
                            if ($role == 2) {
                                ?>
                                <td class="align-middle">$<?= $value->amount ?></td>
                                <td class="align-middle"><?= $value->months ?> Month</td>
                                <td class="align-middle"><?= $value->created_date ?></td>
                                <?php
                            }
                            ?>
                            <td class="align-middle"><?= ($value->user_role_id == '1') ? 'Admin' : 'Customer' ?></td>
                            <td class="align-middle"><?= $value->created_at ?></td>
                            <td class="align-middle"><?= ($value->active) ? 'Active' : 'Inactive' ?></td>
                            <td class="align-middle">
                                <button class="btn btn-success" data-toggle="modal" data-target="#user_<?= $value->id ?>" title="Edit User">
                                    <span class="fa fa-pen"></span>
                                </button>
                                <button class="btn btn-danger delete-country" data-id="<?= $value->id ?>" title="Delete User">
                                    <span class="fa fa-trash"></span>
                                </button>
                            </td>
                        </tr>

                    <div class="modal fade" id="user_<?= $value->id ?>" data-backdrop="static" data-keyboard="false">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <form action="<?= base_url('edit-user') ?>" method="post">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Edit User</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">×</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-md-12 form-group mb-3">
                                                <label>First Name</label>
                                                <input type="text" class="form-control" required="" name="first_name" value="<?= $value->first_name ?>">
                                                <div class="text-danger"><?= form_error('first_name'); ?></div>
                                            </div>
                                            <div class="col-md-12 form-group mb-3">
                                                <label>Last Name</label>
                                                <input type="text" class="form-control" required="" name="last_name" value="<?= $value->last_name ?>">
                                                <div class="text-danger"><?= form_error('last_name'); ?></div>
                                            </div>
                                            <div class="col-md-12 form-group mb-3">
                                                <label class="switch switch-primary mr-3">
                                                    <span>Status</span>
                                                    <input type="checkbox" name="active" <?= ($value->active) ? 'checked' : '' ?> value="1">
                                                    <span class="slider"></span>
                                                </label>
                                            </div>
                                        </div>
                                        <input type="hidden" class="form-control" required="" name="id" value="<?= $value->id ?>">
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="submit" class="btn btn-primary">Edit User</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <?php
                }
                if (empty($users)) {
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
        <div class="modal fade" id="add_user" data-backdrop="static" data-keyboard="false">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form action="<?= base_url('add-user') ?>" method="post">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Add User</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12 form-group mb-3">
                                    <label>First Name</label>
                                    <input type="text" class="form-control" required="" name="first_name" value="<?= set_value('first_name') ?>">
                                    <div class="text-danger"><?= form_error('first_name'); ?></div>
                                </div>
                                <div class="col-md-12 form-group mb-3">
                                    <label>Last Name</label>
                                    <input type="text" class="form-control" required="" name="last_name" value="<?= set_value('last_name') ?>">
                                    <div class="text-danger"><?= form_error('last_name'); ?></div>
                                </div>
                                <div class="col-md-12 form-group mb-3">
                                    <label>Email</label>
                                    <input type="text" class="form-control" required="" name="email" value="<?= set_value('email') ?>">
                                    <div class="text-danger"><?= form_error('email'); ?></div>
                                </div>
                                <div class="col-md-12 form-group mb-3">
                                    <label>Password</label>
                                    <input type="password" class="form-control" required="" name="password" value="<?= set_value('password') ?>">
                                    <div class="text-danger"><?= form_error('password'); ?></div>
                                </div>
                                <div class="col-md-12 form-group mb-3">
                                    <label>User Type</label>
                                    <select name="user_role_id" class="form-control">
                                        <option value="1">Admin</option>
                                        <option value="2">Customer</option>
                                    </select>
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
                            <button type="submit" class="btn btn-primary">Add User</button>
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
                text: "It will  be deleted.",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
            }).then(function () {
                $.post('<?= base_url() ?>delete-user',
                        {id: country_id},
                        function (data, status) {
                            if (status === 'success') {
                                swal({
                                    title: "Deleted!",
                                    text: "User has been deleted.",
                                    type: "success"
                                }).then(function () {
                                    window.location.href = '';
                                });
                            }
                        });

            })
        });
<?php if ($this->session->flashdata('add_user_error')): ?>
            $('#add_user').modal('show');
<?php endif; ?>
    });
</script>