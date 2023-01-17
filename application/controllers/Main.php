<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Main extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('M_main', 'main');
	}

	public function index()
	{
		if ($this->session->userdata('is_login')) {
			switch ($this->session->userdata('group_id')) {
				case '1':
					$data['title'] = 'Beranda';
					$data['page'] = 'admin/beranda';
					break;

				case '2':
					$data['title'] = 'Beranda';
					$data['page'] = 'guru/beranda';
					break;

				case '3':
					$data['title'] = 'Beranda';
					$data['page'] = 'siswa/beranda';
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

	public function kelompok()
	{
		if ($this->session->userdata('is_login')) {
			$data['title'] = 'Kelompok';
			if ($this->session->userdata('group_id') == 1) {
				$this->load->view('admin/kelompok', $data);
			} elseif ($this->session->userdata('group_id') == 2) {
				$this->load->view('guru/kelompok', $data);
			} else {
				redirect(base_url('auth'));
			}
		} else {
			redirect(base_url('auth'));
		}
	}

	public function get_list_data_kelompok()
	{
		if ($this->session->userdata('is_login')) {
			$response =  $this->main->get_list_data_kelompok();
		} else {
			$response =  [];
		}
		echo json_encode($response);
	}

	public function get_list_sub_data_kelompok()
	{
		if ($this->session->userdata('is_login')) {
			$response =  $this->main->get_list_sub_data_kelompok();
		} else {
			$response =  [];
		}
		echo json_encode($response);
	}

	public function simpan_kelompok()
	{
		if ($this->session->userdata('is_login')) {
			$response =  $this->main->simpan_kelompok();
		} else {
			$response =  [
				'stat' => false,
				'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
			];
		}
		echo json_encode($response);
	}

	public function hapus_kelompok()
	{
		if ($this->session->userdata('is_login')) {
			$response =  $this->main->hapus_kelompok();
		} else {
			$response =  [
				'stat' => false,
				'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
			];
		}
		echo json_encode($response);
	}

	public function get_list_siswa_kelompok()
	{
		if ($this->session->userdata('is_login')) {
			$response = $this->main->get_list_siswa_kelompok();
		} else {
			$response =  [];
		}
		echo json_encode($response);
	}

	public function get_list_pembimbing_kelompok()
	{
		if ($this->session->userdata('is_login')) {
			$response = $this->main->get_list_pembimbing_kelompok();
		} else {
			$response =  [];
		}
		echo json_encode($response);
	}

	public function logbook()
	{
		if ($this->session->userdata('is_login')) {
			$data['title'] = 'Log Book';
			$this->load->view('siswa/logbook', $data);
		} else {
			redirect(base_url('auth'));
		}
	}
}
