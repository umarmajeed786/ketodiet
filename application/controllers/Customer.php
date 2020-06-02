<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Customer extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Customer_model');
        $this->load->model('Panel_model');
        $public = array(
            'Customer/index',
            'Customer/login',
            'Customer/signup',
            'Customer/customer_signup',
            'Customer/customer_login',
        );
        $current_url = $this->router->fetch_class() . '/' . $this->router->fetch_method();
        if ($this->session->userdata('customer_logged_in')) {
            if ((in_array($current_url, $public))) {
                redirect('customer-dashboard');
            }
        } elseif (!$this->session->userdata('customer_logged_in') && !in_array($current_url, $public)) {
            //    redirect('customer');
        }
    }

    public function index() {
        $data["page_title"] = "Home";
        $data['main_view'] = "customer/home";
        $this->load->view('customer/home', $data);
    }

    public function customer_quiz($type) {
        $data["page_title"] = "Quiz";
        $data['main_view'] = 'customer/quiz/female';
        if ($type == 'female') {
            $data['main_view'] = 'customer/quiz/female';
        } else {
            $data['main_view'] = 'customer/quiz/male';
        }
        $this->load->view('customer/quiz/layout', $data);
    }

    public function paypal_success() {
//        $config['SMTPHost'] = 'in-v3.mailjet.com';
//        $config['SMTPUser'] = 'd3c67c34d018403aea3047b58399d82e';
//        $config['SMTPPass'] = '7d52882359c046bb6406e0b593de011a';
//        $config['SMTPPort'] = true;
//
//        $this->email->initialize($config);
//       
        //SMTP & mail configuration
        $config = array(
            'protocol' => 'smtp',
            'smtp_host' => 'in-v3.mailjet.com',
            'smtp_port' => 587,
            'smtp_user' => '1a5cc1137624cf2c358ae7ca1d516548',
            'smtp_pass' => 'aaf5dbed18abed1df8e127f4897fe4e5',
            'mailtype' => 'html',
            'charset' => 'utf-8'
        );
        $this->email->initialize($config);
        $this->email->set_mailtype("html");
        $this->email->set_newline("\r\n");
        

        // if session has been removed  load view directly
//        dd($_SESSION['client_info']);
        if (!isset($_SESSION['client_info'])) {
            $this->load->view('frontend/quiz2/payment_success');
            return false;
        }
        $p_id = 0;
        $p_id = $this->input->post('p_id');
        if ($p_id == '' || $p_id == 0) {
            redirect('panel');
            return false;
        }
        $data_return = $email = $password = '';
        $user_id = 0;

        // User signup page
        $data_return = $this->Customer_model->customer_signup_save();

        if ($data_return) {
            $email = $data_return['email'];
            $password = $data_return['password'];
            $user_id = $data_return['user_id'];
        }

        // Save user payment info to the database

        if ($user_id != 0) {
            // Database
            $this->Customer_model->delete_email_from_subscribers($email);
            // Mailchimp
            $subscriber_list_id = $this->config->item('MailChimp_subscribers_list_key'); // for subscribers
            $this->delete_from_mailchimp($email, $subscriber_list_id);

            $result = $this->Customer_model->save_user_payment($user_id);
        }


        // save all other user info into the db
        $user_info = $this->session->all_userdata()['client_info'];
        if ($user_id != 0) {
            $this->Customer_model->save_user_info($user_info, $user_id);
        }


        // Save user to the mailchimp
        $user_list_id = $this->config->item('MailChimp_user_list_key');
        ; // for user list
        $this->add_to_mailchimp($email, $user_list_id);

        // Sent user an email
        $body = "Hi,<br>";
        $body .= "Thank you for the using our system <br>";
        $body .= "Please find below information to login into your account <br>";
        $body .= "<br>";
        $body .= "URL : <a href='" . base_url('panel') . "'>" . base_url('panel') . '</a><br>';
        $body .= "Email : " . $email . '<br>';
        $body .= "password : " . $password . '<br>';
        $body .= "<br>";
        $body .= "if you find any issue in login please <a href='" . base_url('contact') . "'>contact us</a>";
        $body .= "<br>";
        $body .= "Thank you";
        $subject = 'You have successfully registed';
        $message = $body;
//        echo $body;
        $this->email->to($email);
        $this->email->from('KetoClassified');
        $this->email->subject($subject);
        $this->email->message($message);
        $this->email->send();


        $myfile = fopen('data.txt', "w") or die("Unable to open file");
        $temp_message = '-------------------------------';
        $temp_message .= "\nID: $user_id\n";
        $temp_message .= "Email: $email\n";
        $temp_message .= "Password: $password\n";
        $temp_message .= "\n";
        $myfile = file_put_contents('temp_user_data.txt', $temp_message . PHP_EOL, FILE_APPEND | LOCK_EX);

        unset($_SESSION['client_info']);
        $this->session->unset_userdata('email_already_exists');
        $this->load->view('frontend/quiz2/payment_success');
    }

    public function customer_email_check() {
        $email = $this->input->post('email');
        $this->session->unset_userdata('email_already_exists');

        if ($this->Customer_model->customer_email_check($email)) {
            $this->session->set_userdata('email_already_exists', $email);
        } else {
            if ($this->Customer_model->add_email_to_subscribers($email)) {
                $subscriber_list_id = $this->config->item('MailChimp_subscribers_list_key');
                $this->add_to_mailchimp($email, $subscriber_list_id);
            }
        }
        return true;
    }

    public function add_to_mailchimp($email, $list_id) {
        $this->load->library('MailChimp');

        $result = $this->mailchimp->post("lists/$list_id/members", [
            'email_address' => $email,
            'status' => 'subscribed',
        ]);
    }

    public function delete_from_mailchimp($email, $list_id) {
        $this->load->library('MailChimp');
        $subscriber_hash = md5(strtolower($email));
        $this->mailchimp->delete("lists/$list_id/members/$subscriber_hash");
    }

}
