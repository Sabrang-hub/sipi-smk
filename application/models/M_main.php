<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_main extends CI_Model
{
    public function get_list_data_kelompok()
    {
        $group_id = $this->session->userdata('group_id');
        $this->load->model('m_table', 'table');
        $query = $this->db->select("a.*")
            ->from("tbl_kelompok a");
        if ($group_id == '2') {
            $this->db->where('guru_id', $this->session->userdata('kode'));
        }
        $column_order  = array(null, 'a.nama_industri', 'a.nama_guru', 'a.nama_siswa', 'a.updated_at,a.created_at', null);
        $column_search = array('a.nama_industri', 'a.nama_guru', 'a.nama_siswa');
        $order         = array("a.updated_at,a.created_at" => "desc");
        $list          = $this->table->get_datatables($query, $column_order, $column_search, $order);
        $no            = $_POST['start'];
        $data          = array();
        $index         = 0;
        foreach ($list['result'] as $row) {
            $aksi = "";
            $no++;
            $row->no = $no;
            $aksi .= "<button title=\"Edit\" type=\"button\" class=\"btn btn-info btn-sm me-1\" onclick=\"edit_kelompok('" . $index . "',event)\"><i class=\"mdi mdi-account-edit-outline\"></i></button>";
            if ($group_id == '1') {
                $aksi .= "<button title=\"Hapus\" type=\"button\" class=\"btn btn-danger btn-sm me-1\" onclick=\"hapus_kelompok('" . $row->id . "','" . $row->siswa_id . " - " . $row->nama_siswa . "',event)\"><i class=\"mdi mdi-trash-can-outline\"></i></button>";
            }
            $row->aksi = $aksi;
            if ($row->created_at <> null && $row->created_at <> '0000-00-00 00:00:00') {
                $row->created_at = date('j M Y h:i A', strtotime($row->created_at));
            }
            if ($row->updated_at <> null && $row->updated_at <> '0000-00-00 00:00:00') {
                $row->updated_at = date('j M Y h:i A', strtotime($row->updated_at));
            }
            if ($row->tanggal_awal <> null) {
                $row->tanggal_awal = date('d-m-Y', strtotime($row->tanggal_awal));
            }
            if ($row->tanggal_akhir <> null) {
                $row->tanggal_akhir = date('d-m-Y', strtotime($row->tanggal_akhir));
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

    public function simpan_kelompok()
    {
        $group_id = $this->session->userdata('group_id');
        $id = $this->input->post('kelompok_id');
        $data = $this->input->post();
        unset($data['kelompok_id']);
        $data['id'] = $id;
        $this->db->trans_begin();
        if ($id <> '') {
            if ($group_id == 1) {
                $data['nama_industri'] = nama('m_industri', 'nama', ['id' => $data['industri_id']]);
                $data['nama_guru'] = nama('m_guru', 'nama', ['nip' => $data['guru_id']]);
                $data['nama_siswa'] = nama('m_siswa', 'nama', ['nis' => $data['siswa_id']]);
            }
            if ($group_id == 2) {
                $data['nama_user'] = nama('m_user', 'nama', ['id' => $data['user_id']]);
            }
            $data['tanggal_awal'] = date('Y-m-d', strtotime($data['tanggal_awal']));
            $data['tanggal_akhir'] = date('Y-m-d', strtotime($data['tanggal_akhir']));
            $data['updated_at'] = date('Y-m-d H:i:d');
            $data['updated_by'] = $this->session->userdata('nama');
            $this->db->where('id', $data['id'])->update('tbl_kelompok', $data);
        } else {
            if ($group_id == 1) {
                $data['nama_industri'] = nama('m_industri', 'nama', ['id' => $data['industri_id']]);
                $data['nama_guru'] = nama('m_guru', 'nama', ['nip' => $data['guru_id']]);
                $data['nama_siswa'] = nama('m_siswa', 'nama', ['nis' => $data['siswa_id']]);
            }
            $data['tanggal_awal'] = date('Y-m-d', strtotime($data['tanggal_awal']));
            $data['tanggal_akhir'] = date('Y-m-d', strtotime($data['tanggal_akhir']));
            $data['created_at'] = date('Y-m-d H:i:d');
            $data['created_by'] = $this->session->userdata('nama');
            unset($data['id']);
            $this->db->insert('tbl_kelompok', $data);
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

    public function hapus_kelompok()
    {
        $id = $this->input->post('id');

        $sql = $this->db->where('id', $id)->delete('tbl_kelompok');

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

    public function get_list_siswa_kelompok()
    {
        $q = $this->db->escape_str($this->input->post('term'));
        $this->db->where('b.siswa_id', null);
        if ($q <> '') {
            $this->db->like('nis', $q);
        }
        $res = $this->db->select('a.*')->join('tbl_kelompok b', 'a.nis=b.siswa_id', 'left')->get('m_siswa a')->result();
        $data = [];
        foreach ($res as $row) {
            $data[] = [
                'id' => $row->nis,
                'text' => (is_null($row->nama) ? '' : htmlspecialchars_decode($row->nama, ENT_QUOTES)),
            ];
        }
        return $data;
    }

    public function get_list_pembimbing_kelompok()
    {
        $user_id = $this->session->userdata('id');
        $group_id = $this->session->userdata('group_id');
        $q = $this->db->escape_str($this->input->post('term'));
        if ($q <> '') {
            $this->db->like('nama', $q);
        }
        if ($group_id == 2) {
            $this->db->where('user_id', $user_id);
        }
        $res = $this->db->select('a.*')->where('group_id', 4)->get('m_user a')->result();
        $data = [];
        foreach ($res as $row) {
            $data[] = [
                'id' => $row->id,
                'text' => (is_null($row->nama) ? '' : htmlspecialchars_decode($row->nama, ENT_QUOTES)),
                'nama_industri' => (is_null($row->nama_industri) ? '' : htmlspecialchars_decode($row->nama_industri, ENT_QUOTES)),
            ];
        }
        return $data;
    }
}
