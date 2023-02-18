<?php
defined('BASEPATH') or exit('No direct script access allowed');

class m_master extends CI_Model
{

    public function get_list_group()
    {
        $q = $this->db->escape_str($this->input->post('term'));

        if ($q <> '') {
            $this->db->like('nama', $q);
        }

        $res = $this->db->select("id,nama as text")->order_by('id')->get('m_group')->result();
        $data = [];
        foreach ($res as $row) {
            $data[] = [
                'id' => $row->id,
                'text' => (is_null($row->text) ? '' : htmlspecialchars_decode($row->text, ENT_QUOTES)),
            ];
        }
        return $data;
    }

    public function get_list_jurusan()
    {
        $q = $this->db->escape_str($this->input->post('term'));

        if ($q <> '') {
            $this->db->like('nama', $q);
        }

        $res = $this->db->select("id,nama as text")->order_by('id')->get('m_jurusan')->result();
        $data = [];
        foreach ($res as $row) {
            $data[] = [
                'id' => $row->id,
                'text' => (is_null($row->text) ? '' : htmlspecialchars_decode($row->text, ENT_QUOTES)),
            ];
        }
        return $data;
    }

    public function get_list_status_user()
    {
        $q = $this->db->escape_str($this->input->post('term'));

        if ($q <> '') {
            $this->db->like('nama', $q);
        }

        $res = $this->db->select("id,nama as text")->order_by('id')->get('m_status_user')->result();
        $data = [];
        foreach ($res as $row) {
            $data[] = [
                'id' => $row->id,
                'text' => (is_null($row->text) ? '' : htmlspecialchars_decode($row->text, ENT_QUOTES)),
            ];
        }
        return $data;
    }

    public function get_list_jenis_usaha()
    {
        $q = $this->db->escape_str($this->input->post('term'));

        if ($q <> '') {
            $this->db->like('nama', $q);
        }

        $res = $this->db->select("id,nama as text")->order_by('nama')->get('m_jenis_usaha')->result();
        $data = [];
        foreach ($res as $row) {
            $data[] = [
                'id' => $row->id,
                'text' => (is_null($row->text) ? '' : htmlspecialchars_decode($row->text, ENT_QUOTES)),
            ];
        }
        return $data;
    }

    public function get_list_kelas()
    {
        $q = $this->db->escape_str($this->input->post('term'));

        if ($q <> '') {
            $this->db->like('nama', $q);
        }

        $res = $this->db->select("id,nama as text")->order_by('nama')->get('m_kelas')->result();
        $data = [];
        foreach ($res as $row) {
            $data[] = [
                'id' => $row->id,
                'text' => (is_null($row->text) ? '' : htmlspecialchars_decode($row->text, ENT_QUOTES)),
            ];
        }
        return $data;
    }

    public function get_list_industri()
    {
        $q = $this->db->escape_str($this->input->post('term'));

        if ($q <> '') {
            $this->db->like('nama', $q);
        }

        $res = $this->db->select("id,nama as text")->order_by('nama')->get('m_industri')->result();
        $data = [];
        foreach ($res as $row) {
            $data[] = [
                'id' => $row->id,
                'text' => (is_null($row->text) ? '' : htmlspecialchars_decode($row->text, ENT_QUOTES)),
            ];
        }
        return $data;
    }

    public function get_list_golongan()
    {
        $q = $this->db->escape_str($this->input->post('term'));

        if ($q <> '') {
            $this->db->like('nama', $q);
        }

        $res = $this->db->select("id,nama as text")->order_by('nama')->get('m_golongan')->result();
        $data = [];
        foreach ($res as $row) {
            $data[] = [
                'id' => $row->id,
                'text' => (is_null($row->text) ? '' : htmlspecialchars_decode($row->text, ENT_QUOTES)),
            ];
        }
        return $data;
    }

    public function get_list_guru()
    {
        $q = $this->db->escape_str($this->input->post('term'));

        if ($q <> '') {
            $this->db
                ->group_start()
                ->like('nama', $q)
                ->or_like('nip', $q)
                ->group_end();
        }

        $res = $this->db->select("nip id,nama as text")->order_by('nama')->get('m_guru')->result();
        $data = [];
        foreach ($res as $row) {
            $data[] = [
                'id' => $row->id,
                'text' => (is_null($row->text) ? '' : htmlspecialchars_decode($row->text, ENT_QUOTES)),
            ];
        }
        return $data;
    }

    public function get_list_siswa()
    {
        $q = $this->db->escape_str($this->input->post('term'));

        if ($q <> '') {
            $this->db
                ->group_start()
                ->like('nama', $q)
                ->or_like('nis', $q)
                ->group_end();
        }

        $res = $this->db->select("nis id,nama as text")->order_by('nama')->get('m_siswa')->result();
        $data = [];
        foreach ($res as $row) {
            $data[] = [
                'id' => $row->id,
                'text' => (is_null($row->text) ? '' : htmlspecialchars_decode($row->text, ENT_QUOTES)),
            ];
        }
        return $data;
    }

    public function get_list_data_pengguna()
    {
        $group_id = $this->session->userdata('group_id');
        $this->load->model('m_table', 'table');
        $query = $this->db->select("a.*,b.nama as nama_group,c.nama as nama_status_user,d.nama_jurusan,d.nama_kelas")
            ->from("m_user a")
            ->join("m_group b", "a.group_id=b.id", "LEFT")
            ->join("m_status_user c", "a.status_user_id=c.id", "LEFT")
            ->join("m_siswa d", "a.kode=d.nis", "LEFT");
        if ($group_id == 2) {
            $this->db->where('a.user_id', $this->session->userdata('id'));
        }
        $column_order  = array(null, null, 'a.username', 'a.group_id', 'a.nama,b.nama,c.nama,d.nama,e.nama', 'a.status', 'a.deleted_at,a.updated_at,a.created_at');
        $column_search = array("a.username");
        $order         = array("a.updated_at,a.created_at" => "desc");
        $list          = $this->table->get_datatables($query, $column_order, $column_search, $order);
        $no            = $_POST['start'];
        $data          = array();
        $index         = 0;
        foreach ($list['result'] as $row) {
            $aksi = "";
            $no++;
            $row->no = $no;
            $aksi .= "<button title=\"Edit\" type=\"button\" class=\"btn btn-info btn-sm me-1\" onclick=\"edit_akun('" . $index . "',event)\"><i class=\"mdi mdi-account-edit-outline\"></i></button>";
            $aksi .= "<button title=\"Hapus\" type=\"button\" class=\"btn btn-danger btn-sm me-1\" onclick=\"hapus_akun('" . $row->id . "','" . $row->username . "',event)\"><i class=\"mdi mdi-trash-can-outline\"></i></button>";
            $row->aksi = $aksi;
            $row->password = $this->encrypt->decode($row->password);
            if ($row->created_at <> null && $row->created_at <> '0000-00-00 00:00:00') {
                $row->created_at = date('j M Y h:i A', strtotime($row->created_at));
            }
            if ($row->updated_at <> null && $row->updated_at <> '0000-00-00 00:00:00') {
                $row->updated_at = date('j M Y h:i A', strtotime($row->updated_at));
            }
            $data[] = $row;
            $index++;
        }
        $output = array(
            "draw"            => $_POST['draw'],
            "recordsTotal"    => $this->table->count_all($query),
            "recordsFiltered" => $list['count_filtered'],
            "data"            => $data,
        );
        return $output;
    }

    public function simpan_pengguna()
    {
        $id = $this->input->post('user_id');
        $data = $this->input->post();
        unset($data['user_id']);
        $data['id'] = $id;
        $data['user_id'] = $this->session->userdata('id');
        $this->db->trans_begin();
        if ($id <> '') {
            $res = $this->db->where('id', $data['id'])->get('m_user')->row();
            if ($res->username <> $data['username']) {
                $cek = $this->db->where([
                    'username' => $data['username'],
                    'group_id' => $data['group_id'],
                    'id<>' => $data['id'],
                ])->get('m_user');
                if ($cek->num_rows() > 0) {
                    return [
                        'stat' => false,
                        'msg' => 'Nama pengguna sudah ada',
                    ];
                }
            }
            // if ($data['group_id'] == 2) {
            //     $data['nama'] = nama('m_guru', 'nama', ['nip' => $data['kode']]);
            // } elseif ($data['group_id'] == 3) {
            //     $data['nama_jurusan'] = nama('m_jurusan', 'nama', ['id' => $data['jurusan_id']]);
            //     $data['nama_kelas'] = nama('m_kelas', 'nama', ['id' => $data['kelas_id']]);
            //     $data['nama'] = nama('m_siswa', 'nama', ['nis' => $data['kode']]);
            // } elseif ($data['group_id'] == 4) {
            //     $data['nama_industri'] = nama('m_industri', 'nama', ['id' => $data['kode']]);
            // }
            $data['password'] = $this->encrypt->encode($data['password']);
            $data['updated_at'] = date('Y-m-d H:i:s');
            $data['updated_by'] = $this->session->userdata('nama');
            $this->db->where('id', $data['id'])->update('m_user', $data);
        } else {
            $cek = $this->db->where([
                'username' => $data['username'],
                'group_id' => $data['group_id'],
            ])->get('m_user');
            if ($cek->num_rows() > 0) {
                return [
                    'stat' => false,
                    'msg' => 'Nama pengguna sudah ada',
                ];
            }
            if ($data['group_id'] == 2) {
                $data['nama'] = nama('m_guru', 'nama', ['nip' => $data['kode']]);
            } elseif ($data['group_id'] == 3) {
                $data['nama_jurusan'] = nama('m_jurusan', 'nama', ['id' => $data['jurusan_id']]);
                $data['nama_kelas'] = nama('m_kelas', 'nama', ['id' => $data['kelas_id']]);
                $data['nama'] = nama('m_siswa', 'nama', ['nis' => $data['kode']]);
            } elseif ($data['group_id'] == 4) {
                $data['nama_industri'] = nama('m_industri', 'nama', ['id' => $data['kode']]);
            }
            $data['password'] = $this->encrypt->encode($data['password']);
            $data['created_at'] = date('Y-m-d H:i:s');
            $data['created_by'] = $this->session->userdata('nama');
            unset($data['id']);
            $this->db->insert('m_user', $data);
        }


        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_roleback();
            return [
                'stat' => false,
                'msg' => $this->db->error(),
            ];
        } else {
            $this->db->trans_commit();
            return [
                'stat' => true,
                'msg' => 'Data tersimpan',
            ];
        }
    }

    public function hapus_pengguna()
    {
        $id = $this->input->post('id');

        $sql = $this->db->where(['id' => $id])->delete('m_user');

        if ($sql) {
            return [
                'stat' => true,
                'msg' => 'Data terhapus',
            ];
        } else {
            return [
                'stat' => false,
                'msg' => $this->db->error(),
            ];
        }
    }

    public function get_list_data_jurusan()
    {
        $this->load->model('m_table', 'table');
        $query = $this->db->select("a.*")
            ->from("m_jurusan a");
        $column_order  = array(null, 'a.nama', 'a.updated_at,a.created_at', null);
        $column_search = array("a.nama");
        $order         = array("a.updated_at,a.created_at" => "desc");
        $list          = $this->table->get_datatables($query, $column_order, $column_search, $order);
        $no            = $_POST['start'];
        $data          = array();
        $index         = 0;
        foreach ($list['result'] as $row) {
            $aksi = "";
            $no++;
            $row->no = $no;
            $aksi .= "<button title=\"Edit\" type=\"button\" class=\"btn btn-info btn-sm me-1\" onclick=\"edit_kelas('" . $index . "',event)\"><i class=\"mdi mdi-account-edit-outline\"></i></button>";
            $aksi .= "<button title=\"Hapus\" type=\"button\" class=\"btn btn-danger btn-sm me-1\" onclick=\"hapus_kelas('" . $row->id . "','" . $row->nama . "',event)\"><i class=\"mdi mdi-trash-can-outline\"></i></button>";
            $row->aksi = $aksi;
            if ($row->created_at <> null && $row->created_at <> '0000-00-00 00:00:00') {
                $row->created_at = date('j M Y h:i A', strtotime($row->created_at));
            }
            if ($row->updated_at <> null && $row->updated_at <> '0000-00-00 00:00:00') {
                $row->updated_at = date('j M Y h:i A', strtotime($row->updated_at));
            }
            $data[] = $row;
            $index++;
        }
        $output = array(
            "draw"            => $_POST['draw'],
            "recordsTotal"    => $this->table->count_all($query),
            "recordsFiltered" => $list['count_filtered'],
            "data"            => $data,
        );
        return $output;
    }

    public function simpan_jurusan()
    {
        $id = $this->input->post('jurusan_id');
        $data = $this->input->post();
        unset($data['jurusan_id']);
        $data['id'] = $id;
        $this->db->trans_begin();
        if ($id <> '') {
            $res = $this->db->where('id', $data['id'])->get('m_jurusan')->row();
            if ($res->nama <> $data['nama']) {
                $cek = $this->db->where([
                    'nama' => $data['nama'],
                    'id<>' => $data['id'],
                ])->get('m_jurusan');
                if ($cek->num_rows() > 0) {
                    return [
                        'stat' => false,
                        'msg' => 'Nama jurusan sudah ada',
                    ];
                }
            }
            $data['updated_at'] = date('Y-m-d H:i:s');
            $data['updated_by'] = $this->session->userdata('nama');
            $this->db->where('id', $data['id'])->update('m_jurusan', $data);
        } else {
            $cek = $this->db->where([
                'nama' => $data['nama'],
            ])->get('m_jurusan');
            if ($cek->num_rows() > 0) {
                return [
                    'stat' => false,
                    'msg' => 'Nama jurusan sudah ada',
                ];
            }
            $data['created_at'] = date('Y-m-d H:i:s');
            $data['created_by'] = $this->session->userdata('nama');
            unset($data['id']);
            $this->db->insert('m_jurusan', $data);
        }


        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_roleback();
            return [
                'stat' => false,
                'msg' => $this->db->error(),
            ];
        } else {
            $this->db->trans_commit();
            return [
                'stat' => true,
                'msg' => 'Data tersimpan',
            ];
        }
    }

    public function hapus_jurusan()
    {
        $id = $this->input->post('id');

        $sql = $this->db->delete_where('m_jurusan', ['id' => $id]);

        if ($sql) {
            return [
                'stat' => true,
                'msg' => 'Data terhapus',
            ];
        } else {
            return [
                'stat' => false,
                'msg' => $this->db->error(),
            ];
        }
    }

    public function simpan_profil_instansi()
    {
        $data = $this->input->post();
        $this->db->trans_begin();
        if (file_exists($_FILES['logo_instansi']['tmp_name']) || is_uploaded_file($_FILES['logo_instansi']['tmp_name'])) {
            $dir = date('Ymd');
            if (!is_dir('./data/' . $dir)) {
                mkdir('./data/' . $dir, 0755);
            }
            $config['upload_path']      = 'data/' . $dir . '/';
            $config['allowed_types']    = 'jpg|jpeg|png|bmp';
            $config['encrypt_name']     = true;
            $this->load->library('upload', $config);
            if ($this->upload->do_upload('logo_instansi')) {
                $upload_data = $this->upload->data();
                $data['logo_instansi'] = 'data/' . $dir . '/' . $upload_data['file_name'];
            } else {
                return [
                    'stat' => false,
                    'msg' => $this->upload->display_errors(),
                ];
            }
        }

        $data['updated_at'] = date('Y-m-d H:i:s');
        $data['updated_by'] = $this->session->userdata('nama');
        $this->db->where('1=1')->update('m_client_setting', $data);
        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_roleback();
            return [
                'stat' => false,
                'msg' => $this->db->error(),
            ];
        } else {
            $this->db->trans_commit();
            return [
                'stat' => true,
                'msg' => 'Data tersimpan',
            ];
        }
    }

    public function get_master_profil_instansi()
    {
        $res = $this->db->get('m_client_setting')->row_array();
        return $res;
    }

    public function get_list_data_industri()
    {
        $this->load->model('m_table', 'table');
        $query = $this->db->select("a.*")
            ->from("m_industri a");
        $column_order  = array(null, 'a.nama', 'a.nama_pimpinan', 'a.alamat', 'a.email', 'a.no_telp', 'a.nama_jenis_usaha', 'a.updated_at,a.created_at', null);
        $column_search = array('a.nama', 'a.nama_pimpinan', 'a.alamat', 'a.email', 'a.no_telp', 'a.nama_jenis_usaha');
        $order         = array("a.updated_at,a.created_at" => "desc");
        $list          = $this->table->get_datatables($query, $column_order, $column_search, $order);
        $no            = $_POST['start'];
        $data          = array();
        $index         = 0;
        foreach ($list['result'] as $row) {
            $aksi = "";
            $no++;
            $row->no = $no;
            $row->industri_id = $row->id;
            $aksi .= "<button title=\"Edit Hari Kerja\" type=\"button\" class=\"btn btn-primary btn-sm me-1\" onclick=\"edit_hari_kerja_industri('" . $index . "',event)\"><i class=\"mdi mdi-calendar-edit\"></i></button>";
            $aksi .= "<button title=\"Edit\" type=\"button\" class=\"btn btn-info btn-sm me-1\" onclick=\"edit_industri('" . $index . "',event)\"><i class=\"mdi mdi-store-edit-outline\"></i></button>";
            $aksi .= "<button title=\"Hapus\" type=\"button\" class=\"btn btn-danger btn-sm me-1\" onclick=\"hapus_industri('" . $row->id . "','" . $row->nama . "',event)\"><i class=\"mdi mdi-trash-can-outline\"></i></button>";
            $row->aksi = $aksi;
            if ($row->created_at <> null && $row->created_at <> '0000-00-00 00:00:00') {
                $row->created_at = date('j M Y h:i A', strtotime($row->created_at));
            }
            if ($row->updated_at <> null && $row->updated_at <> '0000-00-00 00:00:00') {
                $row->updated_at = date('j M Y h:i A', strtotime($row->updated_at));
            }
            $row->hari_kerja = $this->db->where('industri_id', $row->id)->get('m_hari_kerja')->result();
            $data[] = $row;
            $index++;
        }
        $output = array(
            "draw"            => $_POST['draw'],
            "recordsTotal"    => $this->table->count_all($query),
            "recordsFiltered" => $list['count_filtered'],
            "data"            => $data,
        );
        return $output;
    }

    public function simpan_industri()
    {
        $id = $this->input->post('industri_id');
        $data = $this->input->post();
        unset($data['industri_id']);
        $data['id'] = $id;
        $this->db->trans_begin();
        if ($id <> '') {
            $res = $this->db->where('id', $data['id'])->get('m_industri')->row();
            if ($res->nama <> $data['nama']) {
                $cek = $this->db->where([
                    'nama' => $data['nama'],
                    'id<>' => $data['id'],
                ])->get('m_industri');
                if ($cek->num_rows() > 0) {
                    return [
                        'stat' => false,
                        'msg' => 'Nama industri sudah ada',
                    ];
                }
            }
            $data['nama_jenis_usaha'] = nama('m_jenis_usaha', 'nama', ['id' => $data['jenis_usaha_id']]);
            $data['updated_at'] = date('Y-m-d H:i:s');
            $data['updated_by'] = $this->session->userdata('nama');
            $this->db->where('id', $data['id'])->update('m_industri', $data);
        } else {
            $cek = $this->db->where([
                'nama' => $data['nama'],
            ])->get('m_industri');
            if ($cek->num_rows() > 0) {
                return [
                    'stat' => false,
                    'msg' => 'Nama industri sudah ada',
                ];
            }
            $data['nama_jenis_usaha'] = nama('m_jenis_usaha', 'nama', ['id' => $data['jenis_usaha_id']]);
            $data['created_at'] = date('Y-m-d H:i:s');
            $data['created_by'] = $this->session->userdata('nama');
            unset($data['id']);
            $this->db->insert('m_industri', $data);
        }


        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_roleback();
            return [
                'stat' => false,
                'msg' => $this->db->error(),
            ];
        } else {
            $this->db->trans_commit();
            return [
                'stat' => true,
                'msg' => 'Data tersimpan',
            ];
        }
    }

    public function hapus_industri()
    {
        $id = $this->input->post('id');

        $sql = $this->db->delete_where('m_industri', ['id' => $id]);

        if ($sql) {
            return [
                'stat' => true,
                'msg' => 'Data terhapus',
            ];
        } else {
            return [
                'stat' => false,
                'msg' => $this->db->error(),
            ];
        }
    }

    public function simpan_hari_kerja_industri()
    {
        $this->db->trans_begin();
        $data = $this->input->post();
        $this->db->where('industri_id', $data['industri_id'])->delete('m_hari_kerja');
        $data_hari = [];
        foreach ($data['hari_id'] as $key => $value) {
            $data_hari[] = array(
                'industri_id' => $data['industri_id'],
                'nama_industri' => $data['nama_industri'],
                'hari_id' => $value,
                'nama_hari' => nama('m_hari', 'nama', ['id' => $value]),
                'waktu_masuk' => $data['waktu_masuk'][$value - 1],
                'waktu_pulang' => $data['waktu_pulang'][$value - 1],
                'created_at' => date('Y-m-d H:i:s'),
                'created_by' => $this->session->userdata('nama'),
            );
        }
        $this->db->insert_batch('m_hari_kerja', $data_hari);


        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_roleback();
            return [
                'stat' => false,
                'msg' => $this->db->error(),
            ];
        } else {
            $this->db->trans_commit();
            return [
                'stat' => true,
                'msg' => 'Data tersimpan',
            ];
        }
    }

    public function get_list_data_kelas()
    {
        $this->load->model('m_table', 'table');
        $query = $this->db->select("a.*")
            ->from("m_kelas a");
        $column_order  = array(null, 'a.nama', 'a.updated_at,a.created_at', null);
        $column_search = array("a.nama");
        $order         = array("a.updated_at,a.created_at" => "desc");
        $list          = $this->table->get_datatables($query, $column_order, $column_search, $order);
        $no            = $_POST['start'];
        $data          = array();
        $index         = 0;
        foreach ($list['result'] as $row) {
            $aksi = "";
            $no++;
            $row->no = $no;
            $aksi .= "<button title=\"Edit\" type=\"button\" class=\"btn btn-info btn-sm me-1\" onclick=\"edit_kelas('" . $index . "',event)\"><i class=\"mdi mdi-account-edit-outline\"></i></button>";
            $aksi .= "<button title=\"Hapus\" type=\"button\" class=\"btn btn-danger btn-sm me-1\" onclick=\"hapus_kelas('" . $row->id . "','" . $row->nama . "',event)\"><i class=\"mdi mdi-trash-can-outline\"></i></button>";
            $row->aksi = $aksi;
            if ($row->created_at <> null && $row->created_at <> '0000-00-00 00:00:00') {
                $row->created_at = date('j M Y h:i A', strtotime($row->created_at));
            }
            if ($row->updated_at <> null && $row->updated_at <> '0000-00-00 00:00:00') {
                $row->updated_at = date('j M Y h:i A', strtotime($row->updated_at));
            }
            $data[] = $row;
            $index++;
        }
        $output = array(
            "draw"            => $_POST['draw'],
            "recordsTotal"    => $this->table->count_all($query),
            "recordsFiltered" => $list['count_filtered'],
            "data"            => $data,
        );
        return $output;
    }

    public function simpan_kelas()
    {
        $id = $this->input->post('kelas_id');
        $data = $this->input->post();
        unset($data['kelas_id']);
        $data['id'] = $id;
        $this->db->trans_begin();
        if ($id <> '') {
            $res = $this->db->where('id', $data['id'])->get('m_kelas')->row();
            if ($res->nama <> $data['nama']) {
                $cek = $this->db->where([
                    'nama' => $data['nama'],
                    'id<>' => $data['id'],
                ])->get('m_kelas');
                if ($cek->num_rows() > 0) {
                    return [
                        'stat' => false,
                        'msg' => 'Nama kelas sudah ada',
                    ];
                }
            }
            $data['updated_at'] = date('Y-m-d H:i:s');
            $data['updated_by'] = $this->session->userdata('nama');
            $this->db->where('id', $data['id'])->update('m_kelas', $data);
        } else {
            $cek = $this->db->where([
                'nama' => $data['nama'],
            ])->get('m_kelas');
            if ($cek->num_rows() > 0) {
                return [
                    'stat' => false,
                    'msg' => 'Nama kelas sudah ada',
                ];
            }
            $data['created_at'] = date('Y-m-d H:i:s');
            $data['created_by'] = $this->session->userdata('nama');
            unset($data['id']);
            $this->db->insert('m_kelas', $data);
        }


        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_roleback();
            return [
                'stat' => false,
                'msg' => $this->db->error(),
            ];
        } else {
            $this->db->trans_commit();
            return [
                'stat' => true,
                'msg' => 'Data tersimpan',
            ];
        }
    }

    public function hapus_kelas()
    {
        $id = $this->input->post('id');

        $sql = $this->db->delete_where('m_kelas', ['id' => $id]);

        if ($sql) {
            return [
                'stat' => true,
                'msg' => 'Data terhapus',
            ];
        } else {
            return [
                'stat' => false,
                'msg' => $this->db->error(),
            ];
        }
    }

    public function get_list_data_guru()
    {
        $this->load->model('m_table', 'table');
        $query = $this->db->select("a.*")
            ->from("m_guru a");
        $column_order  = array(null, 'a.nama', 'a.updated_at,a.created_at', null);
        $column_search = array("a.nama");
        $order         = array("a.updated_at,a.created_at" => "desc");
        $list          = $this->table->get_datatables($query, $column_order, $column_search, $order);
        $no            = $_POST['start'];
        $data          = array();
        $index         = 0;
        foreach ($list['result'] as $row) {
            $aksi = "";
            $no++;
            $row->no = $no;
            $aksi .= "<button title=\"Edit\" type=\"button\" class=\"btn btn-info btn-sm me-1\" onclick=\"edit_guru('" . $index . "',event)\"><i class=\"mdi mdi-account-edit-outline\"></i></button>";
            $aksi .= "<button title=\"Hapus\" type=\"button\" class=\"btn btn-danger btn-sm me-1\" onclick=\"hapus_guru('" . $row->id . "','" . $row->nama . "',event)\"><i class=\"mdi mdi-trash-can-outline\"></i></button>";
            $row->aksi = $aksi;
            if ($row->created_at <> null && $row->created_at <> '0000-00-00 00:00:00') {
                $row->created_at = date('j M Y h:i A', strtotime($row->created_at));
            }
            if ($row->updated_at <> null && $row->updated_at <> '0000-00-00 00:00:00') {
                $row->updated_at = date('j M Y h:i A', strtotime($row->updated_at));
            }
            $data[] = $row;
            $index++;
        }
        $output = array(
            "draw"            => $_POST['draw'],
            "recordsTotal"    => $this->table->count_all($query),
            "recordsFiltered" => $list['count_filtered'],
            "data"            => $data,
        );
        return $output;
    }

    public function simpan_guru()
    {
        $id = $this->input->post('guru_id');
        $data = $this->input->post();
        unset($data['guru_id']);
        $data['id'] = $id;
        $this->db->trans_begin();
        if ($id <> '') {
            $res = $this->db->where('id', $data['id'])->get('m_guru')->row();
            if ($res->nip <> $data['nip']) {
                $cek = $this->db->where([
                    'nip' => $data['nip'],
                    'id<>' => $data['id'],
                ])->get('m_guru');
                if ($cek->num_rows() > 0) {
                    return [
                        'stat' => false,
                        'msg' => 'NIP sudah ada',
                    ];
                }
            }
            $data['nama_golongan'] = nama('m_golongan', 'nama', ['id' => $data['golongan_id']]);
            $data['updated_at'] = date('Y-m-d H:i:s');
            $data['updated_by'] = $this->session->userdata('nama');
            $this->db->where('id', $data['id'])->update('m_guru', $data);
        } else {
            $cek = $this->db->where([
                'nip' => $data['nip'],
            ])->get('m_guru');
            if ($cek->num_rows() > 0) {
                return [
                    'stat' => false,
                    'msg' => 'NIP sudah ada',
                ];
            }
            $cek_user = $this->db->where('kode', $data['nip'])->get('m_user');
            if ($cek_user->num_rows() <= 0) {
                $data_user = [
                    'username' => $data['nip'],
                    'password' => $this->encrypt->encode($data['nip']),
                    'kode' => $data['nip'],
                    'group_id' => 2,
                    'nama' => $data['nama'],
                    'status_user_id' => 1,
                    'user_id' => $this->session->userdata('id'),
                    'created_at' => date('Y-m-d H:i:s'),
                    'created_by' => $this->session->userdata('nama'),
                ];
                $this->db->insert('m_user', $data_user);
            }
            $data['nama_golongan'] = nama('m_golongan', 'nama', ['id' => $data['golongan_id']]);
            $data['created_at'] = date('Y-m-d H:i:s');
            $data['created_by'] = $this->session->userdata('nama');
            unset($data['id']);
            $this->db->insert('m_guru', $data);
        }


        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_roleback();
            return [
                'stat' => false,
                'msg' => $this->db->error(),
            ];
        } else {
            $this->db->trans_commit();
            return [
                'stat' => true,
                'msg' => 'Data tersimpan',
            ];
        }
    }

    public function hapus_guru()
    {
        $id = $this->input->post('id');
        $this->db->trans_begin();
        $res = $this->db->where('id', $id)->get('m_guru')->row();
        $this->db->where('kode', $res->nip)->delete('m_user');
        $this->db->where('id', $id)->delete('m_guru');

        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_roleback();
            return [
                'stat' => false,
                'msg' => $this->db->error(),
            ];
        } else {
            $this->db->trans_commit();
            return [
                'stat' => true,
                'msg' => 'Data terhapus',
            ];
        }
    }

    public function get_list_data_siswa()
    {
        $this->load->model('m_table', 'table');
        $query = $this->db->select("a.*")
            ->from("m_siswa a");
        $column_order  = array(null, 'a.nama', 'a.updated_at,a.created_at', null);
        $column_search = array("a.nama");
        $order         = array("a.updated_at,a.created_at" => "desc");
        $list          = $this->table->get_datatables($query, $column_order, $column_search, $order);
        $no            = $_POST['start'];
        $data          = array();
        $index         = 0;
        foreach ($list['result'] as $row) {
            $aksi = "";
            $no++;
            $row->no = $no;
            $aksi .= "<button title=\"Edit\" type=\"button\" class=\"btn btn-info btn-sm me-1\" onclick=\"edit_siswa('" . $index . "',event)\"><i class=\"mdi mdi-account-edit-outline\"></i></button>";
            $aksi .= "<button title=\"Hapus\" type=\"button\" class=\"btn btn-danger btn-sm me-1\" onclick=\"hapus_siswa('" . $row->id . "','" . $row->nama . "',event)\"><i class=\"mdi mdi-trash-can-outline\"></i></button>";
            $row->aksi = $aksi;
            if ($row->created_at <> null && $row->created_at <> '0000-00-00 00:00:00') {
                $row->created_at = date('j M Y h:i A', strtotime($row->created_at));
            }
            if ($row->updated_at <> null && $row->updated_at <> '0000-00-00 00:00:00') {
                $row->updated_at = date('j M Y h:i A', strtotime($row->updated_at));
            }
            $data[] = $row;
            $index++;
        }
        $output = array(
            "draw"            => $_POST['draw'],
            "recordsTotal"    => $this->table->count_all($query),
            "recordsFiltered" => $list['count_filtered'],
            "data"            => $data,
        );
        return $output;
    }

    public function simpan_siswa()
    {
        $id = $this->input->post('siswa_id');
        $data = $this->input->post();
        unset($data['siswa_id']);
        $data['id'] = $id;
        $this->db->trans_begin();

        if ($id <> '') {
            $res = $this->db->where('id', $data['id'])->get('m_siswa')->row();
            if ($res->nis <> $data['nis']) {
                $cek = $this->db->where([
                    'nis' => $data['nis'],
                    'id<>' => $data['id'],
                ])->get('m_siswa');
                if ($cek->num_rows() > 0) {
                    return [
                        'stat' => false,
                        'msg' => 'NIS sudah ada',
                    ];
                }
            }
            $data['nama_jurusan'] = nama('m_jurusan', 'nama', ['id' => $data['jurusan_id']]);
            $data['nama_kelas'] = nama('m_kelas', 'nama', ['id' => $data['kelas_id']]);
            $data['updated_at'] = date('Y-m-d H:i:s');
            $data['updated_by'] = $this->session->userdata('nama');
            $this->db->where('id', $data['id'])->update('m_siswa', $data);
        } else {
            $cek = $this->db->where([
                'nis' => $data['nis'],
            ])->get('m_siswa');
            if ($cek->num_rows() > 0) {
                return [
                    'stat' => false,
                    'msg' => 'NIS sudah ada',
                ];
            }
            $cek_user = $this->db->where('kode', $data['nis'])->get('m_user');
            if ($cek_user->num_rows() <= 0) {
                $data_user = [
                    'username' => $data['nis'],
                    'password' => $this->encrypt->encode($data['nis'] . $data['tahun_masuk']),
                    'kode' => $data['nis'],
                    'group_id' => 3,
                    'nama' => $data['nama'],
                    'status_user_id' => 1,
                    'user_id' => $this->session->userdata('id'),
                    'created_at' => date('Y-m-d H:i:s'),
                    'created_by' => $this->session->userdata('nama'),
                ];
                $this->db->insert('m_user', $data_user);
            }
            $data['nama_jurusan'] = nama('m_jurusan', 'nama', ['id' => $data['jurusan_id']]);
            $data['nama_kelas'] = nama('m_kelas', 'nama', ['id' => $data['kelas_id']]);
            $data['created_at'] = date('Y-m-d H:i:s');
            $data['created_by'] = $this->session->userdata('nama');
            unset($data['id']);
            $this->db->insert('m_siswa', $data);
        }

        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_roleback();
            return [
                'stat' => false,
                'msg' => $this->db->error(),
            ];
        } else {
            $this->db->trans_commit();
            return [
                'stat' => true,
                'msg' => 'Data tersimpan',
            ];
        }
    }

    public function simpan_foto_siswa()
    {
        $this->load->library('Base64upload');
        $upload   = new Base64upload();
        $id = $this->input->post('siswa_id');
        $data = $this->input->post();
        unset($data['siswa_id']);
        $data['id'] = $id;
        if (isset($data['file_foto'])) {
            $dir = date('Ymd');
            if (!is_dir('./data/' . $dir)) {
                mkdir('./data/' . $dir, 0755);
            }
            $res = $upload->do_uploads('data/' . $dir . '/', $data['file_foto']);
            if ($res['status']) {
                $data['file_foto'] = $res['with_path'];
            }
        }
        $this->db->trans_begin();

        $data['updated_at'] = date('Y-m-d H:i:s');
        $data['updated_by'] = $this->session->userdata('nama');
        $this->db->where('kode', $data['id'])->update('m_user', $data);
        $this->db->where('nis', $data['id'])->update('m_siswa', $data);

        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_roleback();
            return [
                'stat' => false,
                'msg' => $this->db->error(),
            ];
        } else {
            $this->db->trans_commit();
            $this->session->set_userdata('file_foto', $data['file_foto']);
            return [
                'stat' => true,
                'msg' => 'Data tersimpan',
                'file_foto' => $data['file_foto'],
            ];
        }
    }

    public function hapus_siswa()
    {
        $id = $this->input->post('id');
        $this->db->trans_begin();
        $res = $this->db->where('id', $id)->get('m_siswa')->row();
        $this->db->where('kode', $res->nis)->delete('m_user');
        $this->db->where('id', $id)->delete('m_siswa');

        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_roleback();
            return [
                'stat' => false,
                'msg' => $this->db->error(),
            ];
        } else {
            $this->db->trans_commit();
            return [
                'stat' => true,
                'msg' => 'Data terhapus',
            ];
        }
    }
}
