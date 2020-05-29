<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Panel extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Panel_model');
        $this->load->model('portal_model');
        $public = array(
            'panel/index',
            'panel/user_login',
        );

        $current_url = $this->router->fetch_class() . '/' . $this->router->fetch_method();
        if ($this->session->userdata('customer_logged_in')) {
            if ((in_array($current_url, $public))) {
                redirect('panel/dashboard');
            }
        } elseif (!$this->session->userdata('customer_logged_in') && !in_array($current_url, $public)) {
            redirect('panel/login');
        }
    }

    public function index() {
        $data['page_title'] = 'Login';
        $this->load->view('panel/login', $data);
    }

    public function user_login() {
        $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');
        $this->form_validation->set_rules('password', 'Password', 'trim|required');
        if (!$this->form_validation->run()) {
            $this->session->set_flashdata('error_message', 'Something went wrong. Please try again!');
            $data['page_title'] = 'Sign in';
            $this->load->view('panel/login', $data);
        } else {
            $email = $this->input->post('email');
            $password = $this->input->post('password');
            if ($user = $this->Panel_model->user_login($email, $password)) {
                $voterdata = array(
                    'customer_id' => $user->id,
                    'name' => $user->first_name . ' ' . $user->last_name,
                    'user_profile_image' => $user->profile_image,
                    'user_role_id' => $user->user_role_id,
                    'customer_logged_in' => true
                );
                $this->session->set_userdata($voterdata);


                // For the meals
                $result = $this->Panel_model->get_user_summary();
                $create_at = $result->create_at;

                // Days untill now with user resgistration
                $now = time(); // or your date as well
                $your_date = strtotime($create_at);
                $datediff = $your_date - $now;
                $datediff = round($datediff / (60 * 60 * 24));
                $this->session->set_userdata('user_created_days', $datediff);
                $this->session->set_userdata('user_kcal', $result->Kcal);
                $this->session->set_userdata('is_meals_created', $result->is_meals_created);


                redirect('panel/dashboard');
            } else {
//                dd('here');
                $this->session->set_flashdata('no_user_access', 'Invalid Email / Password.');
                redirect('panel/login');
            }
        }
    }

    public function logout() {
        $this->session->sess_destroy();
        redirect('panel/login');
    }

    public function user_dashboard() {
        $data['page_title'] = 'Dashboard';
        $data['main_view'] = 'panel/dashboard';
        $this->load->view('panel/layout', $data);
    }

    public function user_meal_plan() {
        $data['page_title'] = 'My Meal Plan';
//        $data['user_meals'] = $usermeals = $this->get_user_meals()->get()->result();
        $data['user_meals'] = '';
        $result = $this->Panel_model->get_user_summary();
        $data['user_summary'] = $result;
        $data['meal_types'] = $this->portal_model->get_meal_types()->result();
        $data['product_types'] = $this->portal_model->get_product_types()->result();
        $data['main_view'] = 'panel/user_meal_plan';
        $this->load->view('panel/layout', $data);
    }

    public function get_user_meals() {
        $user_id = $this->session->userdata('customer_id');
        return $usermeals = $this->Panel_model->get_user_saved_meals($user_id);
    }

    public function get_meals_deatil($id) {
        $data['page_title'] = 'Meal Recipe';
        $data['meals'] = $result = $this->portal_model->get_meal_deatil($id)->result();
        $data['meal_recipe_steps'] = $this->portal_model->get_meal_recipe_steps($id)->result();
        // meal selected values
        $data['meat_types_selected'] = $this->portal_model->get_meal_meat_types($id)->result();
        $data['product_types_selected'] = $this->portal_model->get_meal_product_types($id)->result();
//        $this->load->view('panel/meal_recipe', $data);
        $data['main_view'] = 'panel/meal_recipe';
        $this->load->view('panel/layout', $data);
    }

    public function get_user_meals_ajax() {
        $datediff = $this->session->userdata('user_created_days');
        $Kcal = $this->session->userdata('user_kcal');
        $is_meals_created = $this->session->userdata('is_meals_created');
        $user_id = $this->session->userdata('customer_id');
        // If use meail is not created previously create it again
        //or if 4 weeks has been completed add meals for 4 weeks again
        if ($is_meals_created == 0 || $datediff == 28) {
            $this->Panel_model->add_user_meal_of_three_weeks($user_id, $Kcal);
            // Chanege the bit so that it will update again and again
            $this->Panel_model->update_user_summary();
            $this->session->set_userdata('is_meals_created', 1);
        } else {
            // Check if its not update in the above situation then add the user meal again
            $result_total = $this->Panel_model->get_count_user_saved_meals();
            if ($result_total->total == 0) {
                $this->Panel_model->add_user_meal_of_three_weeks($user_id, $Kcal);
                // Chanege the bit so that it will update again and again
                $this->Panel_model->update_user_summary();
            }
        }

        $week = $this->input->post('week');
        $usermeals = $this->Panel_model->get_user_saved_meals($user_id = '')->get()->result();
        $count = 0;
        foreach ($usermeals as $row => $value) {
//            $count++;
//            $dif = $value->meal_type_id - $count;
//            if($dif < 0){
//                $dif = 4 + $dif;
//            }
//            for($i=0; $i<$dif; $i++){
//                echo '<div class="col-lg-3 col-md-4 col-sm-6 mb-4 ">'
//                . 'not found'
//                        . '</div>';
//            }
//            $count = $value->meal_type_id;
//            if($dif != 1 && $value->meal_type_id != 4){
//                
//            
            ?>

            <?php
            if ($count == 0) {
                ?>
                <div class="row plan-div py-3">
                    <div class="col-md-1 plan-day"><h4> Day <?= $value->day ?> </h4></div>

                    <div class="col-md-11">
                        <!-- Row Start -->
                        <div class="row pl-3 pr-3  mb-2 plan-div-col">
                            <?php
                        }
                        ?>
                        <!-- Top Report Start -->
                        <div class="col-md-3 my-2">
                            <a href="<?= base_url('panel/meal-recipe/' . $value->meal_id . '/' . clean($value->meal_name)) ?>">
                                <h4 class="cm-title-01"></h4>
                                <div class="card text-white">
                                    <img src="<?= base_url('uploads') ?>/images/meals/<?= $value->meal_image ?>" class="card-img img-fluid" style="height: 250px !important;" alt="">
                                    <div class="card-img-overlay">
                                        <h5 class="card-title text-white text-uppercase"><?= $value->meal_name ?></h5>
                                        <p class="card-text">Kcal: <?= $value->meal_kcal ?></p>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <?php
                        if ($count >= 3) {
                            $count = 0;
                            ?>
                        </div>
                        <!-- Row END -->
                    </div>

                </div>
                <?php
            } else {
                $count++;
            }
            ?>

            <?php
//            }
//        if($count >= 4){
//                $count = 0;
//            }
        }
    }

    public function personalized_workout() {
        $data['page_title'] = 'Personalized Workout';
        $type = 2;
        $addon_payment = $this->Panel_model->get_user_addon_payment($type);
        if ($addon_payment) {
            $data['addon_payment_type'] = $addon_payment->amount_type;
        } else {
            $data['addon_payment_type'] = '';
        }
        $data['main_view'] = 'panel/personalized_workout';
        $this->load->view('panel/layout', $data);
    }

    public function personalized_training() {
        $data['page_title'] = 'Personal Training';
        $type = 1;
        $addon_payment = $this->Panel_model->get_user_addon_payment($type);
        if ($addon_payment) {
            $data['addon_payment_type'] = $addon_payment->amount_type;
        } else {
            $data['addon_payment_type'] = '';
        }
        $data['main_view'] = 'panel/personalized_training';
        $this->load->view('panel/layout', $data);
    }

    public function keto_guides() {
        $data['page_title'] = 'Keto Guides';
        $data['main_view'] = 'panel/keto_guides';
        $this->load->view('panel/layout', $data);
    }

    public function faq() {
        $data['page_title'] = 'FAQ';
        $data['main_view'] = 'panel/faq';
        $this->load->view('panel/layout', $data);
    }

    public function my_progress() {
        $data['page_title'] = 'My Pprogress';
        $data['main_view'] = 'panel/my_progress';
        $this->load->view('panel/layout', $data);
    }

    public function save_addon_payment() {
        $p_id = $this->input->post('p_id');
        $data = $this->Panel_model->save_addon_payment();
        if ($data) {
            return TRUE;
        } else {
            return false;
        }
    }

}
