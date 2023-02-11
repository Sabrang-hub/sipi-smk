<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Laporan extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('M_laporan', 'laporan');
    }

    public function laporan_pkl()
    {
        if ($this->session->userdata('is_login')) {
            echo $this->laporan->laporan_pkl();
        } else {
            redirect(base_url('auth'));
        }
    }
}
