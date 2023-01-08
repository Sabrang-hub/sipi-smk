<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Master extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('M_master', 'master');
    }

    public function get_list_group()
    {
        if ($this->session->userdata('is_login')) {
            $response = $this->master->get_list_group();
        } else {
            $response =  [
                'stat' => false,
                'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
            ];
        }
        echo json_encode($response);
    }

    public function get_list_jurusan()
    {
        if ($this->session->userdata('is_login')) {
            $response = $this->master->get_list_jurusan();
        } else {
            $response =  [
                'stat' => false,
                'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
            ];
        }
        echo json_encode($response);
    }

    public function get_list_status_user()
    {
        if ($this->session->userdata('is_login')) {
            $response = $this->master->get_list_status_user();
        } else {
            $response =  [
                'stat' => false,
                'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
            ];
        }
        echo json_encode($response);
    }

    public function get_list_jenis_usaha()
    {
        if ($this->session->userdata('is_login')) {
            $response = $this->master->get_list_jenis_usaha();
        } else {
            $response =  [
                'stat' => false,
                'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
            ];
        }
        echo json_encode($response);
    }

    public function get_list_kelas()
    {
        if ($this->session->userdata('is_login')) {
            $response = $this->master->get_list_kelas();
        } else {
            $response =  [
                'stat' => false,
                'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
            ];
        }
        echo json_encode($response);
    }

    public function get_list_industri()
    {
        if ($this->session->userdata('is_login')) {
            $response = $this->master->get_list_industri();
        } else {
            $response =  [
                'stat' => false,
                'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
            ];
        }
        echo json_encode($response);
    }

    public function get_list_golongan()
    {
        if ($this->session->userdata('is_login')) {
            $response = $this->master->get_list_golongan();
        } else {
            $response =  [
                'stat' => false,
                'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
            ];
        }
        echo json_encode($response);
    }

    public function get_list_guru()
    {
        if ($this->session->userdata('is_login')) {
            $response = $this->master->get_list_guru();
        } else {
            $response =  [
                'stat' => false,
                'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
            ];
        }
        echo json_encode($response);
    }

    public function get_list_kode()
    {
        if ($this->session->userdata('is_login')) {
            $group_id = $this->input->post('group_id');
            if ($group_id == 2) {
                $response = $this->master->get_list_guru();
            } elseif ($group_id == 3) {
                $response = $this->master->get_list_siswa();
            } elseif ($group_id == 4) {
                $response = $this->master->get_list_industri();
            } else {
                $response = [];
            }
        } else {
            $response =  [
                'stat' => false,
                'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
            ];
        }
        echo json_encode($response);
    }

    public function pengguna()
    {
        if ($this->session->userdata('is_login')) {
            $data['title'] = 'Pengguna';
            $this->load->view('admin/pengguna', $data);
        } else {
            redirect(base_url('auth'));
        }
    }

    public function get_list_data_pengguna()
    {
        if ($this->session->userdata('is_login')) {
            $response =  $this->master->get_list_data_pengguna();
        } else {
            $response =  [];
        }
        echo json_encode($response);
    }

    public function simpan_pengguna()
    {
        if ($this->session->userdata('is_login')) {
            $response =  $this->master->simpan_pengguna();
        } else {
            $response =  [
                'stat' => false,
                'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
            ];
        }
        echo json_encode($response);
    }

    public function hapus_pengguna()
    {
        if ($this->session->userdata('is_login')) {
            $response =  $this->master->hapus_pengguna();
        } else {
            $response =  [
                'stat' => false,
                'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
            ];
        }
        echo json_encode($response);
    }

    public function jurusan()
    {
        if ($this->session->userdata('is_login')) {
            $data['title'] = 'Jurusan';
            $this->load->view('admin/jurusan', $data);
        } else {
            redirect(base_url('auth'));
        }
    }

    public function get_list_data_jurusan()
    {
        if ($this->session->userdata('is_login')) {
            $response =  $this->master->get_list_data_jurusan();
        } else {
            $response =  [];
        }
        echo json_encode($response);
    }

    public function simpan_jurusan()
    {
        if ($this->session->userdata('is_login')) {
            $response =  $this->master->simpan_jurusan();
        } else {
            $response =  [
                'stat' => false,
                'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
            ];
        }
        echo json_encode($response);
    }

    public function hapus_jurusan()
    {
        if ($this->session->userdata('is_login')) {
            $response =  $this->master->hapus_jurusan();
        } else {
            $response =  [
                'stat' => false,
                'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
            ];
        }
        echo json_encode($response);
    }

    public function profil_instansi()
    {
        if ($this->session->userdata('is_login')) {
            $data['title'] = 'Profil Instansi';
            $this->load->view('admin/profil_instansi', $data);
        } else {
            redirect(base_url('auth'));
        }
    }

    public function simpan_profil_instansi()
    {
        if ($this->session->userdata('is_login')) {
            $response =  $this->master->simpan_profil_instansi();
        } else {
            $response =  [
                'stat' => false,
                'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
            ];
        }
        echo json_encode($response);
    }

    public function get_master_profil_instansi()
    {
        if ($this->session->userdata('is_login')) {
            $response =  $this->master->get_master_profil_instansi();
        } else {
            $response =  [];
        }
        echo json_encode($response);
    }

    public function industri()
    {
        if ($this->session->userdata('is_login')) {
            $data['title'] = 'Industri';
            $this->load->view('admin/industri', $data);
        } else {
            redirect(base_url('auth'));
        }
    }

    public function get_list_data_industri()
    {
        if ($this->session->userdata('is_login')) {
            $response =  $this->master->get_list_data_industri();
        } else {
            $response =  [];
        }
        echo json_encode($response);
    }

    public function simpan_industri()
    {
        if ($this->session->userdata('is_login')) {
            $response =  $this->master->simpan_industri();
        } else {
            $response =  [
                'stat' => false,
                'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
            ];
        }
        echo json_encode($response);
    }

    public function hapus_industri()
    {
        if ($this->session->userdata('is_login')) {
            $response =  $this->master->hapus_industri();
        } else {
            $response =  [
                'stat' => false,
                'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
            ];
        }
        echo json_encode($response);
    }

    public function kelas()
    {
        if ($this->session->userdata('is_login')) {
            $data['title'] = 'Kelas';
            $this->load->view('admin/kelas', $data);
        } else {
            redirect(base_url('auth'));
        }
    }

    public function get_list_data_kelas()
    {
        if ($this->session->userdata('is_login')) {
            $response =  $this->master->get_list_data_kelas();
        } else {
            $response =  [];
        }
        echo json_encode($response);
    }

    public function simpan_kelas()
    {
        if ($this->session->userdata('is_login')) {
            $response =  $this->master->simpan_kelas();
        } else {
            $response =  [
                'stat' => false,
                'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
            ];
        }
        echo json_encode($response);
    }

    public function hapus_kelas()
    {
        if ($this->session->userdata('is_login')) {
            $response =  $this->master->hapus_kelas();
        } else {
            $response =  [
                'stat' => false,
                'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
            ];
        }
        echo json_encode($response);
    }

    public function guru()
    {
        if ($this->session->userdata('is_login')) {
            $data['title'] = 'Guru';
            $this->load->view('admin/guru', $data);
        } else {
            redirect(base_url('auth'));
        }
    }

    public function get_list_data_guru()
    {
        if ($this->session->userdata('is_login')) {
            $response =  $this->master->get_list_data_guru();
        } else {
            $response =  [];
        }
        echo json_encode($response);
    }

    public function simpan_guru()
    {
        if ($this->session->userdata('is_login')) {
            $response =  $this->master->simpan_guru();
        } else {
            $response =  [
                'stat' => false,
                'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
            ];
        }
        echo json_encode($response);
    }

    public function hapus_guru()
    {
        if ($this->session->userdata('is_login')) {
            $response =  $this->master->hapus_guru();
        } else {
            $response =  [
                'stat' => false,
                'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
            ];
        }
        echo json_encode($response);
    }

    public function siswa()
    {
        if ($this->session->userdata('is_login')) {
            $data['title'] = 'Siswa';
            $this->load->view('admin/siswa', $data);
        } else {
            redirect(base_url('auth'));
        }
    }

    public function get_list_data_siswa()
    {
        if ($this->session->userdata('is_login')) {
            $response =  $this->master->get_list_data_siswa();
        } else {
            $response =  [];
        }
        echo json_encode($response);
    }

    public function simpan_siswa()
    {
        if ($this->session->userdata('is_login')) {
            $response =  $this->master->simpan_siswa();
        } else {
            $response =  [
                'stat' => false,
                'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
            ];
        }
        echo json_encode($response);
    }

    public function hapus_siswa()
    {
        if ($this->session->userdata('is_login')) {
            $response =  $this->master->hapus_siswa();
        } else {
            $response =  [
                'stat' => false,
                'msg' => 'Sesi telah berakhir. Silahkan Login kembali!'
            ];
        }
        echo json_encode($response);
    }
}
