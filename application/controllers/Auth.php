<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('M_auth', 'auth');
    }

    public function index()
    {
        if ($this->session->userdata('is_login')) {
            redirect(base_url());
        } else {
            $data['title'] = 'Login - ' . client('site_name');
            $this->load->view('login', $data);
        }
    }

    public function do_login()
    {
        $response = $this->auth->do_login();
        echo json_encode($response);
    }

    public function do_logout($id)
    {
        $this->auth->do_logout($id);
    }
}
