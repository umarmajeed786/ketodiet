<?php

defined('BASEPATH') OR exit('No direct script access allowed');


//$route['default_controller'] = 'customer';
//$route['404_override'] = 'portal/error404';
$route['404_override'] = 'pages/error404';
$route['translate_uri_dashes'] = FALSE;

// Front end controllers
$route['default_controller'] = 'pages';
$route['quiz2/(:any)'] = 'pages/quiz2/$1';
$route['summary'] = 'pages/summary';
$route['myplan'] = 'pages/myplan';
$route['about'] = "pages/about";
$route['terms'] = "pages/terms";
$route['contact'] = "pages/contact";
$route['payment'] = 'pages/payment';
$route['payment-success'] = 'customer/paypal_success';
$route['save-user-payment'] = 'customer/paypal_success';

/////////////////////////   Admin Panel  ////////////////////////////
/////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
$route['portal'] = "portal";
$route['admin'] = "portal";
$route['signin']['POST'] = "portal/signin";
$route['logout']['GET'] = "portal/logout";
$route['account']['GET'] = "portal/account";
$route['account']['POST'] = "portal/account_save";
$route['dashboard'] = "portal/dashboard";
$route['users'] = "portal/users_list";
$route['forgot-password']['GET'] = "portal/forgot_password";
$route['forgot-password']['POST'] = "portal/forgot_password_send";
$route['reset-password/(:any)']['GET'] = "portal/reset_password/$1";
$route['reset-password']['POST'] = "portal/reset_password_save";


$route['delete-user']['POST'] = "portal/delete_user";
$route['add-user']['POST'] = "portal/add_user_save";
$route['edit-user']['POST'] = "portal/edit_user_save";


$route['meals'] = "portal/meals_list";
$route['admin/add-new-meal'] = "portal/add_new_meal";
$route['admin/edit-meal/(:num)']['GET'] = "portal/edit_meal_list/$1";
$route['add-meal-save']['POST'] = "portal/add_meal_save";
$route['edit-meal-save']['POST'] = "portal/edit_meal_save";
$route['edit-meal']['POST'] = "portal/edit_meal_save";
$route['delete-meal']['POST'] = "portal/delete_meal";


// to be deleted
$route['edit-poll/(:num)']['GET'] = "portal/edit_poll_list/$1";
$route['view-voters/(:num)/(:any)'] = "portal/view_voters/$1/$2";


// Customer  Routes

$route['customer'] = "pages/customer";
$route['home'] = "pages/customer";
$route['quiz/(:any)'] = "Customer/customer_quiz/$1";
$route['check-user-email']['POST'] = "Customer/customer_email_check";

// Customer Panel routes
$route['panel/panel-user-login']['POST'] = "panel/user_login";
$route['panel'] = "panel";
$route['panel/login'] = "panel";
$route['panel/logout'] = "panel/logout";
$route['panel/user-login']['POST'] = "panel/user_login";
$route['panel/dashboard'] = 'panel/user_dashboard';
$route['panel/meal-plan'] = 'panel/user_meal_plan';
$route['panel/get-user-meal']['POST']='panel/get_user_meals_ajax';
$route['panel/meal-recipe/(:num)/(:any)']['GET']='panel/get_meals_deatil/$1';
$route['panel/personalized-workout'] = "panel/personalized_workout";
$route['panel/personalized-training'] = "panel/personalized_training";
$route['panel/keto-guides'] = "panel/keto_guides";
$route['panel/faq'] = "panel/faq";
$route['panel/my-progress'] = "panel/my_progress";
$route['panel/save-user-addon-payment'] = "panel/save_addon_payment";

