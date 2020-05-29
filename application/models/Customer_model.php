<?php

class Customer_model extends CI_Model {

    public function customer_signup_save() {
        $user_info = $this->session->all_userdata()['client_info'];
        $email = $user_info['client']['email'];
        $password = $this->password_generate(8);
        $options = ['cost' => 10];
        $encrypted_pass = password_hash($password, PASSWORD_BCRYPT, $options);
        $data = array(
            'first_name' => '',
            'last_name' => '',
            'email' => $email,
            'password' => $encrypted_pass,
            'user_role_id' => '2',
            'active' => '1',
            'created_at' => date('Y-m-d H:i:s', time()),
        );
//        $result = $this->db->insert('users', $data);
        if ($result = $this->db->insert('users', $data)) {
            $insert_id = $this->db->insert_id();
        } else {
            dd('Something went wrong');
        }


        $data_return = array(
            'email' => $email,
            'password' => $password,
            'user_id' => $insert_id
        );
        return $data_return;
    }

    public function login_voter($email, $password) {
        $this->db->where('user_role_id', '2');
        $this->db->where('active', 1);
        $this->db->where('email', $email);
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

    public function save_user_info($user_info, $user_id) {

        $meats_array = explode(',', $user_info['settings']['meats']);
        $products_array = explode(',', $user_info['settings']['products']);
        // Add all meat for user
        foreach ($meats_array as $value) {
            $data[] = array(
                'user_id' => $user_id,
                'meat_type_id' => $value
            );
        }
        $result = $this->db->insert_batch('user_preference_meat_types', $data);

        // Add all Products for user
        foreach ($products_array as $value) {
            $data_1[] = array(
                'user_id' => $user_id,
                'product_type_id' => $value
            );
        }
        $result = $this->db->insert_batch('user_preference_product_types', $data_1);


        // Add other client data into user summary
        $gender = $user_info['client']['gender'] == 'male' ? 1 : 2;
        $unit_system = $user_info['client']['unit_system'] == 'metric' ? 1 : 2;
        $data_2 = array(
            'user_id' => $user_id,
            'BMI' => $user_info['client']['bmi'],
            'bmr' => $user_info['client']['bmr'],
            'Kcal' => $user_info['client']['calories'],
            'height' => $user_info['client']['height'],
            'age' => $user_info['client']['age'],
            'gender' => $gender,
            'weight' => $user_info['client']['weight'],
            'target_weight' => $user_info['client']['target_weight'],
            'unit_system' => $unit_system,
        );
        $result = $this->db->insert('user_summary', $data_2);
//        return $result;
    }

    function password_generate($chars) {
        $data = '123456!@#7890ABCDEFGHIJK!LMNOPQRSTUVWXYZabcef-_ghijklmnopqrstuvwxyz';
        return substr(str_shuffle($data), 0, $chars);
    }

    public function save_user_payment($user_id) {
        $p_id = $this->input->post('p_id');
        $given_name = $this->input->post('given_name');
        $amount = $this->input->post('amount');
        $month = $this->input->post('month');
        $pm = $this->input->post('mehtod');
        $data = array(
            'user_id' => $user_id,
            'p_id' => $p_id,
            'amount' => $amount,
            'months' => $month,
            'months' => $month,
            'given_name' => $given_name,
            'payment_method' => $pm,
        );
        return $this->db->insert('user_payments', $data);
    }

    public function customer_email_check($email) {
        $this->db->where('email', $email);
        $result = $this->db->get('users');
        if ($result->num_rows()) {
            return true;
        } else {
            return false;
        }
    }

    public function add_email_to_subscribers($email) {
        $this->db->where('email', $email);
        $result = $this->db->get('subscribers');
        if ($result->num_rows()) {
            return FALSE;
        } else {  
            $data = array(
                'email' => $email
            );
            $this->db->replace('subscribers', $data);
            return TRUE;
        }
    }
    public function delete_email_from_subscribers($email) {
        $this->db->where('email', $email);
        $result = $this->db->delete('subscribers');
    }

}
