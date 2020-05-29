<?php

class Panel_model extends CI_Model {

    public function user_login($email, $password) {
        $this->db->where('user_role_id', '2');
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

    public function get_user_summary() {
        $user_id = $this->session->userdata('customer_id');
        $this->db->where('user_id', $user_id);
        $this->db->select('user_summary.*');
        return $this->db->get('user_summary')->row();
    }

    // Update use summary after adding his meals
    public function update_user_summary() {
        $user_id = $this->session->userdata('customer_id');
        $data = array(
            'is_meals_created' => 1,
            'meal_created_date' => date('Y-m-d H:i:s', time())
        );
        $this->db->where('user_id', $user_id);
        $this->db->update('user_summary', $data);
        return TRUE;
    }

    public function add_user_meal_of_three_weeks($user_id, $kcal) {
        // Step 1 delete all previous meal of the user
        $this->db->where('user_id', $user_id)->delete('user_meals');

        // Step 2 loop to enter three weeks data of user
        $i = 1;
        $days = 28;
        $total_week = 4;
        $week = 1;
        while ($week <= $total_week) {
            //  Step 3 call the function to save user meals into the user meal table
            $this->add_user_meal_save($i, $week, $kcal);
            if ($i == 7 || $i == 14 || $i == 21 || $i == 28) {
                $week++;
                $i = 0;
            }
            $i++;
        }
    }

    public function add_user_meal_save($meal_day, $meal_week, $kcal) {
        //Step 4: Get user meals those are matched with the user preferences
        $user_meals = $this->get_user_meals($kcal);

        // Step 10: Loop thorugh the user data tha is fetched and add it into user meal table
        $user_id = $this->session->userdata('customer_id');
        foreach ($user_meals as $key => $value) {

            $data = array(
                'user_id' => $user_id,
                'meal_id' => $value->meal_id,
                'meal_type_id' => $value->meal_type_id,
                'week' => $meal_week,
                'day' => $meal_day,
            );
            $this->db->insert('user_meals', $data);
        }
        Return true;
    }

    public function get_user_meals($kcal) {
        // Step 5: Get user meals details and check if those are equal to the user desired calalries
        $total_kcal = $ikcal = 0;
        $user_kcal = $kcal;
        $user_kcal_start = $user_kcal - 150;
        $user_kcal_end = $user_kcal + 150;
        while (($total_kcal < $user_kcal_start || $total_kcal > $user_kcal_end) && $ikcal < 5) {
            // step 6: Get the accutal data of the user and check the calaries 
            // Check four times if total calaries are not getting match then be what ever it is
            $result = $this->user_meal_details();
            // this funtion help to count total calries from the result
            $total_kcal = $this->count_total_kcal($result);
            //This is to stop loop after 4 times matching with desire calaries
            $ikcal++;
        }
        // Step 9: Return the result after matching the desired calaries.
        return $result;
    }

    public function user_meal_details() {
        // Step 7: This is acctual query that get the user meal according to user preference
        $user_id = $this->session->userdata('customer_id');
        $query = "select * from (SELECT * FROM meals WHERE
                    meal_id IN
                    ( SELECT meal_id from meal_meat_types WHERE meat_type_id in 
                    (SELECT meat_type_id from user_preference_meat_types WHERE user_id=$user_id))
                    and
                    meal_id IN
                    ( SELECT meal_id from meal_product_types WHERE product_type_id in 
                    (SELECT product_type_id from user_preference_product_types WHERE user_id=$user_id))
                    ORDER BY RAND()) as z";

        $query .= " GROUP BY z.meal_type_id";
        $query .= " LIMIT 4";
        if (!$result = $this->db->query($query)->result()) {
            $error = $this->db->error(); // Has keys 'code' and 'message'
//            dd($error);
        }
        // Step 8: return the result to the called function
        return $result;
    }

    public function count_total_kcal($result) {
        $sum = 0;
        foreach ($result as $row) {
            $sum += $row->meal_kcal;
        }
        return $sum;
    }

    public function get_user_saved_meals($user_id) {
        $user_id = $this->session->userdata('customer_id');
        $week = $this->input->post('week');
        $week = $week != '' ? $week : 1;
        $this->db->where('user_id', $user_id);
        $this->db->where('week', $week);
        $this->db->select('user_meals.*,meals.*');
        $this->db->from('user_meals');
        $this->db->join('meals', 'meals.meal_id=user_meals.meal_id');
        $this->db->order_by('user_meals.week', 'ASC');
        $this->db->order_by('user_meals.day', 'ASC');
        return $this->db->order_by('user_meals.meal_type_id', 'ASC');
    }

    public function get_count_user_saved_meals() {
        $user_id = $this->session->userdata('customer_id');
        $this->db->where('user_id', $user_id);
        $this->db->select('COUNT(user_meal_id) as total');
        return $this->db->get('user_meals')->row();
    }

    public function save_addon_payment() {
        $user_id = $this->session->userdata('customer_id');
        $p_id = $this->input->post('p_id');
        $given_name = $this->input->post('given_name');
        $amount = $this->input->post('amount');
        $amount_type = $this->input->post('amount_type');
        $mehtod = $this->input->post('mehtod');

        $data = array(
            'p_id' => $p_id,
            'user_id' => $user_id,
            'given_name' => $given_name,
            'amount' => $amount,
            'amount_type' => $amount_type,
            'mehtod' => $mehtod,
        );
        return $this->db->insert('user_addon_payments', $data);
    }
    
    public function get_user_addon_payment($type){
         $user_id = $this->session->userdata('customer_id');
        $this->db->where('amount_type',$type);
        $this->db->where('user_id',$user_id);
        $this->db->select('amount_type');
        return $this->db->get('user_addon_payments')->row();
    }

}
