<?php

class Portal_model extends CI_model {

    public function add_log($type, $id, $token) {
        $this->logger
                ->user($this->session->userdata('user_id'))
                ->type($type)
                ->id($id)
                ->token($token)
                ->comment($this->session->userdata('name') . ' ' . $token . ' ' . $type)
                ->log();
    }

    // Function to check if the email and password is valid
    public function login_user($email, $password) {
        $this->db->where('email', $email);
        $this->db->where('user_role_id', 1);
        $this->db->where('active', 1);
        $result = $this->db->get('users');
        if ($result->num_rows()) {
            $db_password = $result->row(1)->password;

            if (password_verify($password, $db_password)) {
                return $result->row(1);
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    public function match_current_password($current_password) {
        $this->db->where('id', $this->session->userdata('user_id'));
        $result = $this->db->get('users');
        if ($result->num_rows()) {
            $db_password = $result->row(1)->password;

            if (password_verify($current_password, $db_password)) {
                return True;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    public function user_forgot_password($email) {
        $this->db->where('email', $email);
        $result = $this->db->get('users');
        if ($result->num_rows()) {
            $secret_code = random_string('sha1');
            $data = array(
                'secret_code' => $secret_code
            );
            $this->db->where('email', $email);
            $this->db->update('users', $data);

            return $secret_code;
        } else {
            return FALSE;
        }
    }

    public function user_check_secret_code($secret) {
        $this->db->where('secret_code', $secret);
        $result = $this->db->get('users');
        if ($result->num_rows()) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

    public function user_reset_password($secret) {
        $options = ['cost' => 10];
        $encrypted_pass = password_hash($this->input->post('password'), PASSWORD_BCRYPT, $options);
        $data = array(
            'password' => $encrypted_pass,
            'secret_code' => NULL
        );
        $this->db->where('secret_code', $secret);
        $this->db->update('users', $data);
        return $this->db->affected_rows();
    }

    public function user_account_update($is_password = FALSE) {
        $data = array(
            'first_name' => $this->input->post('first_name'),
            'last_name' => $this->input->post('last_name'),
        );
        $this->session->set_userdata('name', $this->input->post('first_name') . ' ' . $this->input->post('last_name'));
        if ($is_password) {
            $options = ['cost' => 10];
            $encrypted_pass = password_hash($this->input->post('new_password'), PASSWORD_BCRYPT, $options);
            $data['password'] = $encrypted_pass;
        }
        if (isset($_FILES['profile_image']) && $_FILES['profile_image']['name'] != '') {
            $config['upload_path'] = './assets/images/admin/';
            $config['allowed_types'] = 'jpg|png|jpeg';
            $config['file_name'] = time() . $_FILES['profile_image']['name'];
            $profile_image = $config['file_name'];
            $this->upload->initialize($config);
            if ($this->upload->do_upload('profile_image')) {
                $data['profile_image'] = $profile_image;
                $this->session->set_userdata('user_profile_image', $profile_image);
            }
        }
        $this->db->where('id', $this->session->userdata('user_id'));
        return $this->db->update('users', $data);
    }

    public function get_admin_profile_image_by_id($user_id) {
        return $this->db->where('id', $user_id)->get('users')->row()->profile_image;
    }

    public function get_admin_name_by_id($user_id) {
        $result = $this->db->where('id', $user_id)->get('users')->row();
        if ($result)
            return $result->first_name . ' ' . $result->last_name;
        else
            return '-';
    }

    public function get_all_users() {
        if ($this->input->get('name')) {
            $this->db->like('users.name', $this->input->get('name'));
        }
        if ($this->input->get('role')) {
            $this->db->where('user_role_id', $this->input->get('role'));
            if($this->input->get('role')==2){
                 $this->db->select('user_payments.*');
                 $this->db->join('user_payments','user_payments.user_id=users.id');
            }
        }
        $this->db->select('users.*');
        $this->db->from('users');
        return $this->db->order_by('users.id', 'ASC');

    }

    public function add_user_save() {
        $user_role_id = $this->input->post('user_role_id');
        $user_role = $user_role_id != '' ? $user_role_id : '2';
        $options = ['cost' => 10];
        $encrypted_pass = password_hash($this->input->post('password'), PASSWORD_BCRYPT, $options);
        $data = array(
            'first_name' => $this->input->post('first_name'),
            'last_name' => $this->input->post('last_name'),
            'email' => $this->input->post('email'),
            'password' => $encrypted_pass,
            'user_role_id' => $user_role,
            'active' => $this->input->post('active'),
            'created_at' => date('Y-m-d H:i:s', time()),
            'created_by' => $this->session->userdata('user_id')
        );
//        $uuid = UUID();
//        $this->db->set('id', "$uuid", TRUE);
        $result = $this->db->insert('users', $data);
        return $result;
    }

    public function edit_user_save() {
        $data = array(
            'first_name' => $this->input->post('first_name'),
            'last_name' => $this->input->post('last_name'),
            'active' => $this->input->post('active'),
            'updated_at' => date('Y-m-d H:i:s', time()),
            'updated_by' => $this->session->userdata('user_id')
        );
        $result = $this->db->where('id', $this->input->post('id'))->update('users', $data);
        return $result;
    }

    public function get_all_meals($id = '') {
        if ($this->input->get('name')) {
            $this->db->like('meals.meal_name', $this->input->get('name'));
        }
        if ($id != '') {
            $this->db->where('meal_id', $id);
        }
        $this->db->select('meals.*,meal_types.meal_type_name');
        $this->db->select('meals.*');
        $this->db->from('meals');
        $this->db->join('meal_types', "meal_types.meal_type_id=meals.meal_type_id");
        return $this->db->order_by('meals.meal_name', 'ASC');
    }

    public function get_meal_recipe_steps($meal_id) {
        $this->db->where("meal_recipe_steps.meal_id",$meal_id);
        $this->db->select("meal_recipe_steps.*");
        $this->db->order_by('meal_recipe_steps.meal_recipe_step_id', 'ASC');
        return $this->db->get('meal_recipe_steps');
    }
    public function get_meal_types() {
        $this->db->select("meal_types.*");
        $this->db->order_by('meal_types.meal_type_id', 'ASC');
        return $this->db->get('meal_types');
    }

    public function get_meat_types($meal_id = '') {
        $this->db->select("meat_types.*");
        $this->db->from('meat_types');
        $this->db->order_by('meat_types.meat_type_id', 'ASC');
        return $this->db->get();
    }
    // to get the meat type for a specific meal dish
    public function get_meal_meat_types($meal_id = '') {
        if ($meal_id != '') {
            $this->db->where("meal_id", $meal_id);
        }
        $this->db->select("meal_meat_types.meat_type_id,meat_types.meat_type_name");
        $this->db->from('meal_meat_types');
        $this->db->join('meat_types', 'meat_types.meat_type_id=meal_meat_types.meat_type_id');
        $this->db->order_by('meal_meat_types.meat_type_id', 'ASC');
        return $this->db->get();
    }

    public function get_product_types($meal_id = '') {
        $this->db->select("product_types.*");
        $this->db->from('product_types');
        $this->db->order_by('product_types.product_type_id', 'ASC');
        return $this->db->get();
    }

    public function get_meal_product_types($meal_id = '') {
        if ($meal_id != '') {
            $this->db->where("meal_id", $meal_id);
        }
        $this->db->select("meal_product_types.product_type_id,product_types.product_type_name");
        $this->db->from('meal_product_types');
        $this->db->join('product_types', 'product_types.product_type_id=meal_product_types.product_type_id');
        $this->db->order_by('meal_product_types.product_type_id', 'ASC');
        return $this->db->get();
    }

    public function add_meal_save() {
        $count_1 = count($this->input->post('product_type_id'));
        $count_2 = count($this->input->post('meat_type_id'));
        if ($count_1 == 0 || $count_2 == 0) {
            return FALSE;
        }

        $data = array(
            'meal_name' => $this->input->post('meal_name'),
            'meal_preparation_time' => $this->input->post('meal_preparation_time'),
            'meal_kcal' => $this->input->post('meal_kcal'),
            'meal_protein' => $this->input->post('meal_protein'),
            'meal_fats' => $this->input->post('meal_fats'),
            'meal_carbs' => $this->input->post('meal_carbs'),
            'meal_type_id' => $this->input->post('meal_type_id'),
            'active' => $this->input->post('active'),
            'created_at' => date('Y-m-d H:i:s', time()),
            'created_by' => $this->session->userdata('user_id')
        );
        $ptah = './uploads/images/meals/';
        if (!is_dir($ptah)) {
            mkdir($ptah, 0777, TRUE);
        }
//        dd($_FILES);
        if (isset($_FILES['meal_image']) && $_FILES['meal_image']['name'] != '') {
            $config['upload_path'] = $ptah;
            $config['allowed_types'] = 'jpg|png|jpeg';
            $file_name=substr($this->input->post('meal_name'),0 , 10);
            $config['file_name'] = clean($file_name) . '-' . time() . '.png';
            $profile_image = $config['file_name'];
            $this->upload->initialize($config);
            if ($this->upload->do_upload('meal_image')) {
                $data['meal_image'] = $profile_image;
            }
        }
        $this->db->insert('meals', $data);
        $insert_id = $this->db->insert_id();

        // Add all the options of a meat types using loop

        $data = [];
        $i = 0;
        while ($i < $count_1) {
            if ($this->input->post('product_type_id[' . $i . ']') != '') {
                $data[] = array(
                    'meal_id' => $insert_id,
                    'product_type_id' => $this->input->post('product_type_id[' . $i . ']'),
                );
            }
            $i++;
        }
        if ($data) {
            $result = $this->db->insert_batch('meal_product_types', $data);
        }
        // Add all the meat types of a meal using loop

        $data = [];
        $i = 0;
        while ($i < $count_2) {
            if ($this->input->post('meat_type_id[' . $i . ']') != '') {
                $data[] = array(
                    'meal_id' => $insert_id,
                    'meat_type_id' => $this->input->post('meat_type_id[' . $i . ']'),
                );
            }
            $i++;
        }
        if ($data) {
            $result = $this->db->insert_batch('meal_meat_types', $data);
        }

        //  Add meal details
        $data = array(
        'meal_id' => $insert_id,
        'meal_description' => trim($this->input->post('meal_description')),
        'meal_Ingredients' => trim($this->input->post('meal_Ingredients')),
        'meal_additional_tips' => trim($this->input->post('meal_additional_tips')),
        );
        $this->db->insert('meal_details', $data);
        // Add meal Steps
        $count_3 = count($this->input->post('meal_recipe_step_description'));
        $data = [];
        $i = 0;
        while ($i < $count_3) {
            if ($this->input->post('meal_recipe_step_description[' . $i . ']') != '') {
                $data[] = array(
                    'meal_id' => $insert_id,
                    'meal_recipe_step_description' => trim($this->input->post('meal_recipe_step_description[' . $i . ']'))
                );
            }
            $i++;
        }
        if ($data) {
            $result = $this->db->insert_batch('meal_recipe_steps', $data);
        }

        return TRUE;
    }
    public function edit_meal_save() {
        $count_1 = count($this->input->post('product_type_id'));
        $count_2 = count($this->input->post('meat_type_id'));
        if ($count_1 == 0 || $count_2 == 0) {
            return FALSE;
        }

        $data = array(
            'meal_name' => $this->input->post('meal_name'),
            'meal_preparation_time' => $this->input->post('meal_preparation_time'),
            'meal_kcal' => $this->input->post('meal_kcal'),
            'meal_protein' => $this->input->post('meal_protein'),
            'meal_fats' => $this->input->post('meal_fats'),
            'meal_carbs' => $this->input->post('meal_carbs'),
            'meal_type_id' => $this->input->post('meal_type_id'),
            'active' => $this->input->post('active'),
            'created_at' => date('Y-m-d H:i:s', time()),
            'created_by' => $this->session->userdata('user_id')
        );
        $ptah = './uploads/images/meals/';
        if (!is_dir($ptah)) {
            mkdir($ptah, 0777, TRUE);
        }
        
        if (isset($_FILES['meal_image']) && $_FILES['meal_image']['name'] != '') {
            $config['upload_path'] = $ptah;
            $config['allowed_types'] = 'jpg|png|jpeg';
            $file_name=substr($this->input->post('meal_name'),0 , 40);
            $file_name = strtr($file_name, "é", "e");
            $config['file_name'] = clean($file_name) . '-' . time() . '.png';
            $profile_image = $config['file_name'];
            $this->upload->initialize($config);
            if ($this->upload->do_upload('meal_image')) {
                $data['meal_image'] = $profile_image;
            }else{
                dd($this->upload->display_errors());
            }
        }
        
        $insert_id=$meal_id=$this->input->post('meal_id');
        $this->db->where('meal_id',$meal_id);
        $this->db->update('meals', $data);
        
        //Delete the previous data from tables
        
        $this->db->where('meal_id', $meal_id)->delete('meal_product_types');
        $this->db->where('meal_id', $meal_id)->delete('meal_meat_types');
        $this->db->where('meal_id', $meal_id)->delete('meal_recipe_steps');
        
        // Add all the options of a meat types using loop

        $data = [];
        $i = 0;
        while ($i < $count_1) {
            if ($this->input->post('product_type_id[' . $i . ']') != '') {
                $data[] = array(
                    'meal_id' => $insert_id,
                    'product_type_id' => $this->input->post('product_type_id[' . $i . ']'),
                );
            }
            $i++;
        }
        if ($data) {
            $result = $this->db->insert_batch('meal_product_types', $data);
        }
        // Add all the meat types of a meal using loop

        $data = [];
        $i = 0;
        while ($i < $count_2) {
            if ($this->input->post('meat_type_id[' . $i . ']') != '') {
                $data[] = array(
                    'meal_id' => $insert_id,
                    'meat_type_id' => $this->input->post('meat_type_id[' . $i . ']'),
                );
            }
            $i++;
        }
        if ($data) {
            $result = $this->db->insert_batch('meal_meat_types', $data);
        }

        //  Add meal details
        $data = array(
        'meal_id' => $insert_id,
        'meal_description' => trim($this->input->post('meal_description')),
        'meal_Ingredients' => trim($this->input->post('meal_Ingredients')),
        'meal_additional_tips' => trim($this->input->post('meal_additional_tips')),
        );
        $this->db->where('meal_id',$meal_id);
        $this->db->update('meal_details', $data);
        // Add meal Steps
        $count_3 = count($this->input->post('meal_recipe_step_description'));
        $data = [];
        $i = 0;
        while ($i < $count_3) {
            if ($this->input->post('meal_recipe_step_description[' . $i . ']') != '') {
                $data[] = array(
                    'meal_id' => $insert_id,
                    'meal_recipe_step_description' => trim($this->input->post('meal_recipe_step_description[' . $i . ']'))
                );
            }
            $i++;
        }
        if ($data) {
            $result = $this->db->insert_batch('meal_recipe_steps', $data);
        }

        return TRUE;
    }

    public function edit_poll_save() {
        // Code to update the poll name
        $insert_id = $this->input->post('poll_id');
        $data = array(
            'poll_name' => $this->input->post('poll_name'),
            'active' => $this->input->post('active'),
            'updated_at' => date('Y-m-d H:i:s', time()),
            'updated_by' => $this->session->userdata('user_id')
        );
        $this->db->where('poll_id', $insert_id);
        $result = $this->db->update('polls', $data);

        //Delete the previous poll options
        $this->db->where('poll_id', $insert_id)->delete('poll_options');

        // Add all the options of a poll using loop
        $count = count($this->input->post('poll_option'));
        $data = [];
        $i = 0;
        while ($i < $count) {
            if ($this->input->post('poll_option[' . $i . ']') != '') {
                $data[] = array(
                    'poll_id' => $insert_id,
                    'poll_option_name' => $this->input->post('poll_option[' . $i . ']'),
                );
            }
            $i++;
        }
        if ($data) {
            $result = $this->db->insert_batch('poll_options', $data);
            return $result;
        }
        return NULL;
    }
    
    public function get_meal_deatil($meal_id=''){
        $this->db->where('meals.meal_id',$meal_id);
        $this->db->select('meals.*,meal_details.*');
        $this->db->join('meal_details','meal_details.meal_id=meals.meal_id');
        return $this->db->get('meals');
    }

}

?>