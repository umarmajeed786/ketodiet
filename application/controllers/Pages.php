<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Pages extends CI_Controller {

    public function __construct()
    {
        parent:: __construct();
        clear_cache();
//        $this->load->library('encryption');
//        $this->load->model('superadmin_model');
//        $this->load->model('common_model');
//        $this->load->library('session');
        //redirect(base_url());
    }

    public function index(){ 
        $data['title'] = 'Home';
        $data['template'] = 'frontend/index';
        $this->load->view('template/frontend/template',$data);
    }
     public function error404() {
        $this->load->view('404');
    }
    public function quiz2($gender=''){
        $data['title']      = ucfirst($gender);
        $data['menu_type']  = true;
        $data['template']   = 'frontend/quiz2/'.$gender;
        $this->load->view('template/frontend/template',$data);
    }
    public function save(){
        $this->session->set_userdata('client_info',$_POST);
        echo json_encode(array('status'=>true));          
    }   
    public function summary(){
        $data['title']      = 'Summary';
        $data['info']       = $this->session->all_userdata()['client_info'];
    //    $data['menu_type']  = true;
      //  p($data);die;
        $data['template']   = 'frontend/quiz2/summary';
        $this->load->view('template/frontend/template',$data);
        
    }
    public function payment(){
        $data['title']      = 'Payment';
        $data['template']   = 'frontend/quiz2/payment';
        $this->load->view('template/frontend/template',$data);
    }

    public function lookup(){
        if($this->input->post()) {
            $this->form_validation->set_rules('email','Email','trim|required|email');
            if($this->form_validation->run() === TRUE){
                $data = $this->input->post();
                $where = array(
                    'title' => $data['title'],
                    'category_id' => $data['category_id'],
                );
                $check = $this->crud->readData('product_id', 'products', $where)->row_array();
                if($check) {
                    echo json_encode(array('status' => 'error', 'message' => "Product already exist."));
                }
                else {
                    $data['slug'] = make_slug($data['title']);
                    $this->crud->createData('products', $data);
                    $this->session->set_flashdata('msg_success','Product has been created successfully.');
                    echo json_encode(array('status' => 'success', 'message' => "Product has been created successfully."));
                }
            }
            else {
                echo json_encode(array('status' => 'error', 'message' => validation_errors()));
            }
            exit;
        }
        $data['category'] = $this->crud->readData('category_id, category_name, status', 'product_category', array(), '', '', 'order_by')->result();
        $data['title'] = 'Add Product';
        $data['template'] = 'backend/products/add';
        $this->load->view('template/backend/superadmin_template',$data);
    }
    public function login(){ 
        if(user_logged_in() == true) redirect(base_url('account/dashboard'));
        $data['title'] = 'Login'; 
        $data['template'] = 'frontend/login';
        $this->load->view('template/frontend/template',$data);
    }

    public function login_submit() {
        if($this->form_validation->run('login') === TRUE){
            $date = date('Y-m-d H:i:s');
            $email = $this->input->post('email');
            $password = $this->input->post('password');
            $check = $this->crud->readData('*', 'users', array('email' => $email, 'user_role' => 0))->row_array();
            $ip_address = $this->input->ip_address();


            if($check) {
                if($check['status'] == 1) {
                    if($password == $this->encryption->decrypt($check['password'])) {
                        $user_data = array(
                            'user_id'       => $check['user_id'],
                            'user_role'     => $check['user_role'],
                            'email'         => $check['email'],
                            'user_name'     => $check['name'],
                            'logged_in'     => TRUE
                        );
                        $this->session->unset_userdata('user_info');
                        $this->session->set_userdata('user_info', $user_data);
                        $this->crud->updateData('users', array('ip_address' => $ip_address, 'last_login' => $date, 'login_status' => '1'), array('user_id' => $check['user_id']));
                        $city = '';
                        $ipInfo = file_get_contents('http://ip-api.com/json/' . $ip_address);
                        $ipInfo = (array)json_decode($ipInfo);
                        if($ipInfo['status'] == 'success') {
                            $city = $ipInfo['city']."($ipInfo[regionName], $ipInfo[country])";
                        }
                        $insert = array(
                            'user_id' => $check['user_id'],
                            'ip_address' => $ip_address,
                            'city' => $city,
                        );
                        $this->crud->createData('login_history', $insert);
                        $this->session->set_flashdata('msg_success', 'Login successfully');
                        echo json_encode(array('status' => 'success', 'message' => validation_errors()));
                    }
                    else {
                        echo json_encode(array('status' => 'error', 'message' => 'Incorrect Password'));
                    }
                }
                else {
                    echo json_encode(array('status' => 'error', 'message' => 'Your account is deactivated, please contact to administrator.'));
                }
            }
            else {
                echo json_encode(array('status' => 'error', 'message' => 'Incorrect Email'));
            }
        }
        else {
            echo json_encode(array('status' => 'error', 'message' => validation_errors()));
        }
    }

    public function forgot_password_submit() {
        if ($this->form_validation->run('forgot_password') == TRUE){
            $email = $this->input->post('email');
            $check = $this->crud->readData('user_id, email, name', 'users', array('email' => $email, 'user_role' => 0))->row_array();
            if($check){
                $new_password_key = trim(md5(rand(1000,9999)));
                $updateResult = $this->crud->updateData('users', array('new_password_key'=>$new_password_key), array('user_id' => $check['user_id']));
                if($updateResult){
                    //Start Send email
                    $email_data = array(
                        'name'  => ucfirst($check['name']),
                        'link' => base_url("?token=$new_password_key")
                    );
                    $param = array(
                        'template_id' => '25',
                        'data' => $email_data,
                    );
                    sendEmail($check['email'], $param);
                    //End Send email
                    echo json_encode(array('status' => 'success', 'message' => 'Password reset instructions have been sent to <strong>'.$check['email'].'</strong>.'));
                }
                else {
                    echo json_encode(array('status' => 'error', 'message' => "Something went wrong, please try again later."));
                }
            }
            else {
                echo json_encode(array('status' => 'error', 'message' => "This email is not registered with us."));
            }
        }else{
            echo json_encode(array('status' => 'error', 'message' => validation_errors()));
        }
    }

    public function resetpassword_submit(){
        if ($this->form_validation->run('resetpassword') == TRUE)  {
            $data = $this->input->post();
            $check = $this->crud->readData('user_id', 'users', array('new_password_key' => $data['key']))->row_array();
            if(empty($check) || $data['key'] == '') {
                echo json_encode(array('status' => 'error', 'message' => 'Token is expired!'));
            }
            else {
                $user_data  = array('password' => $this->encryption->encrypt($data['password']), 'new_password_key' => '');
                if($this->crud->updateData('users', $user_data, array('user_id' => $check['user_id']))){
                    $this->session->set_flashdata('msg_success','Password has been updated successfully');
                    echo json_encode(array('status' => 'success', 'message' => ''));
                }else{
                    echo json_encode(array('status' => 'error', 'message' => 'Sorry! Password updation process has been failed. Please try again'));
                }
            }
        }
        else {
            echo json_encode(array('status' => 'error', 'message' => validation_errors()));
        }
    }

    public function sign_up(){
        if(user_logged_in() == true) redirect(base_url('account/dashboard'));
        $data['title'] = 'Sign Up';
        $this->load->view('frontend/sign_up',$data);
    }
    
    public function signup_n_mail()
	{
	    //print_r($this->input->post());
		if($this->input->post()) {
			$data = $this->input->post();
			
			$email = $this->input->post('email');
			
			$message =  
			"User Name : ".$data['name'].
			"\n Mobile Number : ".$data['contact'].
			"\n Email : ".$data['email'].
			"\n Address : ".$data['address'].
			"\n Nomini Name : ".$data['nomini_name'].
			"\n Nomini Relation : ".$data['nomini_relation'].
			"\n A/C Number : ".$data['ac_number'].
			"\n IFSC Code : ".$data['ifsc_code'].
			"\n Position : ".$data['level_type'];
		
		    $res=$this->common_model->send_mail($email, 'safetypoint111@gmail.com', 'New User Sign Up', $message);
		    
			if($res)
				$this->session->set_flashdata('success_msg', '<div class="callout callout-success"><h4><i class="icon fa fa-check"></i> Success!</h4><p>Signed Up Successfully.</p></div>');
			else
				$this->session->set_flashdata('success_msg', '<div class="callout callout-danger"><h4><i class="icon fa fa-check"></i> Failed!</h4><p>Something went wrong...Please try again later...</p></div>');
			redirect('/');
		}
	}

    public function performance(){
        $data['title'] = 'Performance';
        $data['template'] = 'frontend/performance';
        $this->load->view('template/frontend/template',$data);
    }

    public function my404() {
        $this->output->set_status_header('404'); 
        $data['title'] = 'Page Not Found';
       // $data['template'] = 'frontend/my404';
        $this->load->view('frontend/my404',$data);
    }
    
    public function about(){ 
        $data['title'] = 'About Us';
        $this->load->view('frontend/about',$data);
    }
    
    public function terms(){ 
        $data['title'] = 'Terms & Conditions';
        $this->load->view('frontend/terms',$data);
    }
    
    public function contact(){ 
        $data['title'] = 'Contact Us';
        $this->load->view('frontend/contact',$data);
    }
    
    
}