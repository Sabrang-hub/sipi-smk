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

				case '4':
					$data['title'] = 'Beranda';
					$data['page'] = 'pembimbing/beranda';
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
			$group_id =  $this->session->userdata('group_id');
			if ($group_id == 3) {
				$data['title'] = 'Laporan Harian';
				$this->load->view('siswa/logbook', $data);
			} elseif ($group_id == 1) {
				$data['title'] = 'Laporan Harian Siswa';
				$this->load->view('admin/logbook', $data);
			} elseif ($group_id == 2) {
				$data['title'] = 'Laporan Harian Siswa';
				$this->load->view('guru/logbook', $data);
			} elseif ($group_id == 4) {
				$data['title'] = 'Laporan Harian Siswa';
				$this->load->view('pembimbing/logbook', $data);
			}
		} else {
			redirect(base_url('auth'));
		}
	}

	public function get_list_data_logbook()
	{
		if ($this->session->userdata('is_login')) {
			$response = $this->main->get_list_data_logbook();
		} else {
			$response =  [];
		}
		echo json_encode($response);
	}

	public function simpan_logbook()
	{
		if ($this->session->userdata('is_login')) {
			$response =  $this->main->simpan_logbook();
		} else {
			$response =  [
				'stat' => false,
				'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
			];
		}
		echo json_encode($response);
	}

	public function simpan_keterangan_logbook()
	{
		if ($this->session->userdata('is_login')) {
			$response =  $this->main->simpan_keterangan_logbook();
		} else {
			$response =  [
				'stat' => false,
				'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
			];
		}
		echo json_encode($response);
	}

	public function hapus_keterangan_logbook()
	{
		if ($this->session->userdata('is_login')) {
			$response =  $this->main->hapus_keterangan_logbook();
		} else {
			$response =  [
				'stat' => false,
				'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
			];
		}
		echo json_encode($response);
	}

	public function simpan_status_logbook()
	{
		if ($this->session->userdata('is_login')) {
			$response =  $this->main->simpan_status_logbook();
		} else {
			$response =  [
				'stat' => false,
				'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
			];
		}
		echo json_encode($response);
	}

	public function hapus_logbook()
	{
		if ($this->session->userdata('is_login')) {
			$response =  $this->main->hapus_logbook();
		} else {
			$response =  [
				'stat' => false,
				'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
			];
		}
		echo json_encode($response);
	}

	public function get_list_data_siswa_logbook()
	{
		if ($this->session->userdata('is_login')) {
			$response =  $this->main->get_list_data_siswa_logbook();
		} else {
			$response =  [];
		}
		echo json_encode($response);
	}

	public function get_list_data_siswa_detail_logbook()
	{
		if ($this->session->userdata('is_login')) {
			$response =  $this->main->get_list_data_siswa_detail_logbook();
		} else {
			$response =  [];
		}
		echo json_encode($response);
	}

	public function logbook_detail($siswa_id = '')
	{
		if ($this->session->userdata('is_login')) {
			if ($siswa_id != '') {
				$siswa_id = decrypt_url($siswa_id);
				$data['title'] = 'Laporan Harian Siswa';
				$data['siswa'] = $this->db->where('a.nis', $siswa_id)->join('tbl_kelompok b', 'a.nis=b.siswa_id', 'inner')->get('m_siswa a')->row_array();
				$data['siswa']['tanggal_awal'] = date('d-m-Y', strtotime($data['siswa']['tanggal_awal']));
				$data['siswa']['tanggal_akhir'] = date('d-m-Y', strtotime($data['siswa']['tanggal_akhir']));
				$group_id =  $this->session->userdata('group_id');
				if ($group_id == 1) {
					$this->load->view('admin/logbook_detail', $data);
				} else if ($group_id == 2) {
					$this->load->view('guru/logbook_detail', $data);
				} elseif ($group_id == 4) {
					$this->load->view('pembimbing/logbook_detail', $data);
				} else {
					$this->load->view('errors/404_alt', ['url' => base_url('logbook')]);
				}
			} else {
				$this->load->view('errors/404_alt', ['url' => base_url('logbook')]);
			}
		} else {
			redirect(base_url('auth'));
		}
	}
}
