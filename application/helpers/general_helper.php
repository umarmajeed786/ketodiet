<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

function dd($content = '') {
    echo '<pre>';
    print_r($content);
    die();
}

function UUID() {
    $data = random_bytes(16);
    $data[6] = chr(ord($data[6]) & 0x0f | 0x40);
    $data[8] = chr(ord($data[8]) & 0x3f | 0x80);
    return vsprintf('%s%s-%s-%s-%s-%s%s%s', str_split(bin2hex($data), 4));
}

function admin_profile_image() {
    $CI = get_instance();
  $image_path = base_url('assets') . '/images/admin/' . str_replace(' ', '_', $CI->session->userdata('admin_profile_image')); 
 if (($image_path)) {
        return $image_path;
    } else {
        $image_path = base_url('assets') . '/images/admin/no-image.png';
        return $image_path;
    }
}
function get_product_image($name) {
    $CI = get_instance();
  $image_path = base_url('uploads') . '/images/meals/' . $name; 
 if (getimagesize($image_path)) {
        return $image_path;
    } else {
        $image_path = base_url('assets') . '/images/admin/no-image.png';
        return $image_path;
    }
}

function get_admin_profile_image_by_id($user_id) {
    $CI = get_instance();
    $CI->load->model('portal_model');
    $image_path = base_url('assets') . '/images/admin/' . str_replace(' ', '_', $CI->portal_model->get_admin_profile_image_by_id($user_id));
    if (getimagesize($image_path)) {
        return $image_path;
    } else {
        $image_path = base_url('assets') . '/images/admin/no-image.png';
        return $image_path;
    }
}

function get_admin_name_by_id($user_id) {
    $CI = get_instance();
    $CI->load->model('portal_model');
    return $CI->portal_model->get_admin_name_by_id($user_id);
}

function check_route($url, $type) {
    $CI = get_instance();
    $CI->load->model('portal_model');
    return $CI->portal_model->get_users_route_access($url, $type);
}

/**
*	clear cache
*/
if ( ! function_exists('clear_cache')) {
	function clear_cache(){
		$CI =& get_instance();
		$CI->output->set_header('Expires: Wed, 11 Jan 1984 05:00:00 GMT' );
		$CI->output->set_header('Last-Modified: ' . gmdate( 'D, d M Y H:i:s' ) . 'GMT');
		$CI->output->set_header("Cache-Control: no-cache, no-store, must-revalidate");
		$CI->output->set_header("Pragma: no-cache");			
	}
}

function clean($string) {
   $string = str_replace(' ', '-', $string); // Replaces all spaces with hyphens.

   return preg_replace('/[^A-Za-z0-9\-]/', '', $string); // Removes special chars.
}