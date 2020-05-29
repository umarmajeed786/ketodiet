<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Portal extends CI_Controller {

    public function __construct() {
        parent::__construct();
        date_default_timezone_set("Asia/Karachi");
        $public = array(
            'portal/index',
            'portal/signin',
            'portal/forgot_password',
            'portal/forgot_password_send',
            'portal/reset_password',
            'portal/reset_password_save',
        );
        $private = array(
            'portal/dashboard',
            'portal/logout',
            'portal/account',
            'portal/account_save',
        );
        $this->load->model('portal_model');
        $current_url = $this->router->fetch_class() . '/' . $this->router->fetch_method();
        if ($this->session->userdata('user_logged_in')) {
            if ((in_array($current_url, $public))) {
                redirect('dashboard');
            }
        } elseif (!$this->session->userdata('user_logged_in') && !in_array($current_url, $public)) {
            redirect('admin');
        }
    }

    public function index() {
        $data["page_title"] = "Myketo";
        $data['main_view'] = "portal/login_view";
        $this->load->view('portal/login', $data);
    }

    public function signin() {
        $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');
        $this->form_validation->set_rules('password', 'Password', 'trim|required');
        if (!$this->form_validation->run()) {
            $data["page_title"] = "Myketo System";
            $this->load->view('portal', $data);
        } else {
            $email = $this->input->post('email');
            $password = $this->input->post('password');
            $this->load->model('portal_model');
            if ($user = $this->portal_model->login_user($email, $password)) {
                $userdata = array(
                    'user_id' => $user->id,
                    'name' => $user->first_name . ' ' . $user->last_name,
                    'admin_profile_image' => $user->profile_image,
                    'user_role_id' => $user->user_role_id,
                    'user_logged_in' => true
                );
                $this->session->set_userdata($userdata);
                redirect('dashboard');
            } else {
                $this->session->set_flashdata('no_user_access', 'Invalid Email / Password.');
                redirect('admin');
            }
        }
    }

    public function logout() {
        $this->session->sess_destroy();
        redirect('admin');
    }

    public function forgot_password() {
        $data["page_title"] = "Voter System";
        $data['main_view'] = "portal/forgot_password_view";
        $this->load->view('portal/forgot_password_view', $data);
    }

    public function forgot_password_send() {
        $email = $this->input->post('email');
        $this->load->model('portal_model');
        if ($secret = $this->portal_model->user_forgot_password($email)) {
            $htmlContent = '<h1>Myketo System Reset Password Request</h1>';
            $htmlContent .= '<p>Click on the link below to reset your password.</p>';
            $htmlContent .= '<p><a href="' . base_url('user') . '/reset-password/' . $secret . '">Reset Password</a></p>';

            $this->email->to($this->input->post('email'));
            $this->email->from(EMAIL_FROM_SMTP, 'Myketo');
            $this->email->subject('Myketo System Reset Password Request');
            $this->email->message($htmlContent);
            $this->email->send();
            $this->session->set_flashdata('signup_success', 'Reset password link has been sent. Check your inbox.');
            redirect('forgot-password');
        } else {
            $this->session->set_flashdata('no_user_access', 'Invalid Email! Please try again.');
            redirect('forgot-password');
        }
    }

    public function reset_password($code) {
        $data['is_code_valid'] = $this->portal_model->user_check_secret_code($code);
        $data['secret_code'] = $code;
        $data["page_title"] = "SGIC - Admin Portal";
        $data['main_view'] = "portal/reset_password_view";
        $this->load->view('portal/reset_password_view', $data);
    }

    public function reset_password_save() {
        $code = $this->input->post('secret_code');
        $data['is_code_valid'] = $this->portal_model->user_check_secret_code($code);
        $data['secret_code'] = $code;
        if (!$data['is_code_valid']) {
            redirect('reset-password/' . $code);
        }
        $this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[8]');
        $this->form_validation->set_rules('cpassword', 'Confirm Password', 'matches[password]');
        if (!$this->form_validation->run()) {
            $data['secret_code'] = $code;
            $data["page_title"] = "SGIC - Employee Portal";
            $data['main_view'] = "portal/reset_password_view";
            $this->load->view('portal/reset_password_view', $data);
        } else {
            if ($this->portal_model->user_reset_password($code)) {
                $this->session->set_flashdata('signup_success', 'Password changed successfully!');
                redirect('admin');
            } else {
                $this->session->set_flashdata('no_user_access', 'Something went wrong! Please try again.');
                redirect('reset-password/' . $code);
            }
        }
    }

    public function account() {
        $data['page_title'] = "Account Settings";
        $data['main_view'] = "portal/account";
        $data['account'] = $this->db->where('id', $this->session->userdata('user_id'))->get('users')->row();
        $this->load->view('portal/layout', $data);
    }

    public function account_save() {
        $data['page_title'] = "Account Settings";
        $data['main_view'] = "portal/account";
        $is_password = FALSE;
        $this->form_validation->set_rules('first_name', 'First Name', 'trim|required');
        $this->form_validation->set_rules('last_name', 'Surname', 'trim|required');
        if ($this->input->post('new_password')) {
            $this->form_validation->set_rules('current_password', 'Current Password', 'trim|required|callback_current_password_check');
            $this->form_validation->set_rules('new_password', 'New Password', 'trim|required');
            $this->form_validation->set_rules('confirm_password', 'Confirm Password', 'trim|required|matches[new_password]');
            $is_password = TRUE;
        }
        if (!$this->form_validation->run()) {
            $data['account'] = $this->db->where('id', $this->session->userdata('user_id'))->get('users')->row();
            $this->load->view('portal/layout', $data);
        } else {
            if ($this->portal_model->user_account_update($is_password)) {
                $this->session->set_flashdata('success_message', 'Account updated successfully!');
                redirect('account');
            } else {
                $data['account'] = $this->db->where('id', $this->session->userdata('user_id'))->get('users')->row();
                $this->session->set_flashdata('errorr_message', 'Something went wrong. Please try again!');
                $this->load->view('portal/layout', $data);
            }
        }
    }

    public function current_password_check($current_password) {
        if (!$this->portal_model->match_current_password($current_password)) {
            $this->form_validation->set_message('current_password_check', 'Current password doesn\'t not match');
            return FALSE;
        }
        return TRUE;
    }

    public function dashboard() {
        $data['page_title'] = "Dashboard";
        $data['main_view'] = "portal/dashboard";
        $this->load->view('portal/layout', $data);
    }

    public function error404() {
        $this->load->view('404');
    }

    public function users_list() {
        $data['page_title'] = "Users List";
        if (!$this->input->get('role')) {
            $_GET['role'] = 2;
        }
        $result = $this->portal_model->get_all_users();
        $data['users'] = $this->paginator->paginate($result, ['base_url' => 'portal/users']);
        $data['search'] = $this->input->get('name');
        $data['role'] = $this->input->get('role');
        $data['main_view'] = "portal/users";
        $this->load->view('portal/layout', $data);
    }

    public function add_user_save() {
        $this->form_validation->set_rules('first_name', 'First Name', 'trim|required');
        $this->form_validation->set_rules('last_name', 'Last Name', 'trim|required');
        $this->form_validation->set_rules('email', 'Email', 'trim|required|is_unique[users.email]');
        $this->form_validation->set_rules('password', 'Email', 'trim|required|min_length[8]');
        if (!$this->form_validation->run()) {
            $this->session->set_flashdata('errorr_message', 'Something went wrong. Please try again!');
            $this->session->set_flashdata('add_user_error', 'Something went wrong. Please try again!');
//            redirect('users');
            $this->users_list();
        } else {
            if ($this->portal_model->add_user_save()) {
                $this->session->set_flashdata('success_message', 'User added successfully.');
                redirect('users');
            } else {
                $this->session->set_flashdata('errorr_message', 'Something went wrong. Please try again!');
                redirect('users');
            }
        }
    }

    public function edit_user_save() {
        $this->form_validation->set_rules('first_name', 'First Name', 'trim|required');
        if (!$this->form_validation->run()) {
            $this->session->set_flashdata('errorr_message', 'Something went wrong. Please try again!');
            redirect('users');
        } else {
            if ($this->portal_model->edit_user_save()) {
                $this->session->set_flashdata('success_message', 'User updated successfully.');
                redirect('users');
            } else {
                $this->session->set_flashdata('errorr_message', 'Something went wrong. Please try again!');
                redirect('users');
            }
        }
    }

    public function delete_user() {
        $this->db->where('id', $this->input->post('id'))->delete('users');
        $this->db->where('user_id', $this->input->post('id'))->delete('user_meals');
        $this->db->where('user_id', $this->input->post('id'))->delete('user_payments');
        $this->db->where('user_id', $this->input->post('id'))->delete('user_preferences');
        $this->db->where('user_id', $this->input->post('id'))->delete('user_preference_meat_types');
        $this->db->where('user_id', $this->input->post('id'))->delete('user_preference_product_types');
        $this->db->where('user_id', $this->input->post('id'))->delete('user_summary');
    }

    public function meals_list() {
        $data['page_title'] = "Meals List";
        $result = $this->portal_model->get_all_meals();
        $data['meals'] = $this->paginator->paginate($result, ['base_url' => 'meals']);
        $data['meal_types'] = $this->portal_model->get_meal_types()->result();
        $data['product_types'] = $this->portal_model->get_product_types()->result();
        $data['search'] = $this->input->get('name');
        $data['main_view'] = "portal/meals";
        $this->load->view('portal/layout', $data);
    }

    public function edit_meal_list($id) {
        $data['page_title'] = "Edit Meal";
        $result = $this->portal_model->get_meal_deatil($id);
        $data['meals'] = $result->result();
        $data['meal_recipe_steps'] = $this->portal_model->get_meal_recipe_steps($id)->result();
        // meal selected values
        $data['meat_types_selected'] = $this->portal_model->get_meal_meat_types($id)->result();
        $data['product_types_selected'] = $this->portal_model->get_meal_product_types($id)->result();
        // default value
        $data['meal_types'] = $this->portal_model->get_meal_types()->result();
        $data['meat_types'] = $this->portal_model->get_meat_types()->result();
        $data['product_types'] = $this->portal_model->get_product_types()->result();

        $data['main_view'] = "portal/add_new_meal";
        $this->load->view('portal/layout', $data);
    }

    public function add_new_meal() {
        $data['page_title'] = "Add Meal ";
        $data['main_view'] = "portal/add_new_meal";
        $data['meal_types'] = $this->portal_model->get_meal_types()->result();
        $data['meat_types'] = $this->portal_model->get_meat_types()->result();
        $data['product_types'] = $this->portal_model->get_product_types()->result();
        $data['meals'] = '';
        $this->load->view('portal/layout', $data);
    }

    public function add_meal_save() {
        $this->form_validation->set_rules('meal_name', 'Name', 'trim|required');
        if (!$this->input->post('meat_type_id')) {
            $this->session->set_flashdata('error_message', 'Meal Must be selected. Please try again!');
            redirect('admin/add-new-meal');
        }
        if (!$this->input->post('product_type_id')) {
            $this->session->set_flashdata('error_message', 'Product Must be selected. Please try again!');
            redirect('admin/add-new-meal');
        }
        if (!$this->form_validation->run()) {
            $this->session->set_flashdata('error_message', 'Something went wrong. Please try again!');
            redirect('admin/add-new-meal');
        } else {
            if ($this->portal_model->add_meal_save()) {
                $this->session->set_flashdata('success_message', 'Meal added successfully.');
                redirect('admin/add-new-meal');
            } else {
                $this->session->set_flashdata('error_message', 'Something went wrong. Please Make sure to fill required fields!');
                redirect('admin/add-new-meal');
            }
        }
    }

    public function edit_meal_save() {
        $id = $this->input->post('meal_id');
        $this->form_validation->set_rules('meal_name', 'Name', 'trim|required');
        if (!$this->input->post('meat_type_id')) {
            $this->session->set_flashdata('error_message', 'Meal Must be selected. Please try again!');
            redirect('admin/edit-meal/' . $id);
        }
        if (!$this->input->post('product_type_id')) {
            $this->session->set_flashdata('error_message', 'Product Must be selected. Please try again!');
            redirect('admin/edit-meal/' . $id);
        }
        if (!$this->form_validation->run()) {
            $this->session->set_flashdata('error_message', 'Something went wrong. Please try again!');
            redirect('admin/edit-meal/' . $id);
        } else {
            if ($this->portal_model->edit_meal_save()) {
                $this->session->set_flashdata('success_message', 'Meal updated successfully.');
                redirect('admin/edit-meal/' . $id);
            } else {
                $this->session->set_flashdata('error_message', 'Something went wrong. Please try again!');
                redirect('admin/edit-meal/' . $id);
                ;
            }
        }
    }

    public function delete_meal() {
        $this->db->where('meal_id', $this->input->post('id'))->delete('meals');
        $this->db->where('meal_id', $this->input->post('id'))->delete('meal_details');
        $this->db->where('meal_id', $this->input->post('id'))->delete('meal_product_types');
        $this->db->where('meal_id', $this->input->post('id'))->delete('meal_meat_types');
        $this->db->where('meal_id', $this->input->post('id'))->delete('meal_recipe_steps');
    }

}
