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
					$data['data'] = $this->db->where('a.nis', $this->session->userdata('kode'))->join('tbl_kelompok b', 'a.nis=b.siswa_id', 'left')->get('m_siswa a')->row_array();
					$data['jumlah_laporan_harian'] = $this->db->select("IFNULL(count(id),0) as jml")->where('siswa_id', $this->session->userdata('kode'))->get('tbl_logbook')->row('jml');
					$rekap_kahadiran = $this->main->rekap_kahadiran();
					$data['jumlah_belum_absen'] = 0;
					$data['jumlah_hadir'] = 0;
					$data['jumlah_terlambat'] = 0;
					$data['jumlah_izin'] = 0;
					$data['jumlah_sakit'] = 0;
					$data['jumlah_alpa'] = 0;
					foreach ($rekap_kahadiran as $row) {
						if ($row['status'] == 0) {
							$data['jumlah_belum_absen']++;
						}
						if ($row['status'] == 1) {
							$data['jumlah_hadir']++;
						}
						if ($row['status'] == 4) {
							$data['jumlah_terlambat']++;
						}
						if ($row['status'] == 2) {
							$data['jumlah_izin']++;
						}
						if ($row['status'] == 3) {
							$data['jumlah_sakit']++;
						}
						if ($row['status'] == 5) {
							$data['jumlah_alpa']++;
						}
					}

					$cek_absen = $this->db->where(['siswa_id' => $this->session->userdata('kode'), 'tanggal' => date('Y-m-d')])->get('tbl_absen');
					if ($cek_absen->num_rows() > 0) {
						if ($cek_absen->row('waktu_pulang') == null) {
							$data['status_absen_hari_ini'] = 1;
						} else {
							$data['status_absen_hari_ini'] = 2;
						}
					} else {
						$data['status_absen_hari_ini'] = 0;
					}
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

	public function absensi()
	{
		if ($this->session->userdata('is_login')) {
			$data['title'] = 'Absensi';
			if ($this->session->userdata('group_id') == 1) {
				$this->load->view('admin/absensi', $data);
			} elseif ($this->session->userdata('group_id') == 2) {
				$this->load->view('guru/absensi', $data);
			} elseif ($this->session->userdata('group_id') == 3) {
				$data['hari_kerja'] = $this->db->where('b.siswa_id', $this->session->userdata('kode'))->join('tbl_kelompok b', 'a.industri_id=b.industri_id', 'right')->get('m_hari_kerja a')->result_array();
				$this->load->view('siswa/absensi', $data);
			} elseif ($this->session->userdata('group_id') == 4) {
				$this->load->view('pembimbing/absensi', $data);
			} else {
				redirect(base_url('auth'));
			}
		} else {
			redirect(base_url('auth'));
		}
	}

	public function get_list_data_absensi()
	{
		if ($this->session->userdata('is_login')) {
			$response = $this->main->get_list_data_absensi();
		} else {
			$response =  [];
		}
		echo json_encode($response);
	}

	public function simpan_absensi()
	{
		if ($this->session->userdata('is_login')) {
			$response =  $this->main->simpan_absensi();
		} else {
			$response =  [
				'stat' => false,
				'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
			];
		}
		echo json_encode($response);
	}
}
