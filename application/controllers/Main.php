<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Main extends CI_Controller
{
	public function index()
	{
		if ($this->session->userdata('is_login')) {
			switch ($this->session->userdata('group_id')) {
				case '1':
					$data['title'] = 'Beranda';
					$data['page'] = 'admin/beranda';
					break;

				default:
					# code...
					break;
			}
			$this->load->view($data['page'], $data);
		} else {
			redirect(base_url('auth'));
		}
	}
}
