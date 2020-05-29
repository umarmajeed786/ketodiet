<?php (isset($menu_type))  ? $this->load->view('template/frontend/header_2') : $this->load->view('template/frontend/header');?>
<?php $this->load->view($template);?>
<?php (isset($menu_type))  ? $this->load->view('template/frontend/footer_2') : $this->load->view('template/frontend/footer');?>
