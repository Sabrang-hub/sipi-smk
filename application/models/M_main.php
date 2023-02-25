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
        $column_order  = array(null, 'a.siswa_id', 'a.nama_industri', 'a.nama_guru', 'a.nama_pembimbing', 'a.updated_at,a.created_at', null);
        $column_search = array('a.siswa_id', 'a.nama_industri', 'a.nama_guru', 'a.nama_pembimbing');
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
            if ($row->file_nilai != '') {
                $aksi .= "<a href=\"" . base_url($row->file_nilai) . "\" target=\"_blank\" title=\"Download File Nilai\" class=\"btn btn-success btn-sm me-1\"><i class=\"mdi mdi-file-chart-outline\"></i></a>";
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
                $data['nama_pembimbing'] = nama('m_user', 'nama', ['id' => $data['pembimbing_id']]);
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

    public function get_list_data_logbook()
    {
        $kode = $this->session->userdata('kode');
        $this->load->model('m_table', 'table');
        $query = $this->db->select("a.*")
            ->from("tbl_logbook a")
            ->join("tbl_kelompok b", "a.siswa_id=b.siswa_id", "left")
            ->where('a.siswa_id', $kode);
        $column_order  = array(null, null, 'a.tanggal', null, null, null, 'a.verifikasi_stat', 'a.updated_at,a.created_at', null);
        $column_search = array('a.tanggal', 'a.uraian');
        $order         = array("a.updated_at,a.created_at" => "desc");
        $list          = $this->table->get_datatables($query, $column_order, $column_search, $order);
        $no            = $_POST['start'];
        $data          = array();
        $index         = 0;
        foreach ($list['result'] as $row) {
            $aksi = "";
            $no++;
            $row->no = $no;
            $aksi .= "<button title=\"Edit\" type=\"button\" class=\"btn btn-info btn-sm me-1\" onclick=\"edit_logbook('" . $index . "',event)\"><i class=\"mdi mdi-book-edit-outline\"></i></button>";
            $aksi .= "<button title=\"Hapus\" type=\"button\" class=\"btn btn-danger btn-sm me-1\" onclick=\"hapus_logbook('" . $row->id . "','no " . $no . ' tanggal ' . date('d-m-Y', strtotime($row->tanggal)) . "',event)\"><i class=\"mdi mdi-trash-can-outline\"></i></button>";
            $row->aksi = $aksi;
            if ($row->created_at <> null && $row->created_at <> '0000-00-00 00:00:00') {
                $row->created_at = date('j M Y h:i A', strtotime($row->created_at));
            }
            if ($row->updated_at <> null && $row->updated_at <> '0000-00-00 00:00:00') {
                $row->updated_at = date('j M Y h:i A', strtotime($row->updated_at));
            }
            if ($row->tanggal <> null) {
                $row->tanggal = date('d-m-Y', strtotime($row->tanggal));
            }
            if ($row->verifikasi_at <> null) {
                $row->verifikasi_at = date('d-m-Y', strtotime($row->verifikasi_at));
            }
            $row->uraian = htmlspecialchars_decode($row->uraian, ENT_QUOTES);
            $row->keterangan_guru = $this->db->where(['jenis' => 1, 'logbook_id' => $row->id])->order_by('id', 'asc')->get('tbl_keterangan')->result();
            $row->keterangan_pembimbing = $this->db->where(['jenis' => 2, 'logbook_id' => $row->id])->order_by('id', 'asc')->get('tbl_keterangan')->result();
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

    public function get_list_data_siswa_detail_logbook()
    {
        $siswa_id = $this->input->post('siswa_id');
        $this->load->model('m_table', 'table');
        $query = $this->db->select("a.*")
            ->from("tbl_logbook a")
            ->where('a.siswa_id', $siswa_id);

        $column_order  = array(null, 'a.tanggal', null, null, 'a.verifikasi_stat', 'a.updated_at,a.created_at', null);
        $column_search = array('a.tanggal', 'a.uraian');
        $order         = array("a.updated_at,a.created_at" => "desc");
        $list          = $this->table->get_datatables($query, $column_order, $column_search, $order);
        $no            = $_POST['start'];
        $data          = array();
        $index         = 0;
        foreach ($list['result'] as $row) {
            $aksi = "";
            $no++;
            $row->no = $no;
            $row->aksi = $aksi;
            if ($row->created_at <> null && $row->created_at <> '0000-00-00 00:00:00') {
                $row->created_at = date('j M Y h:i A', strtotime($row->created_at));
            }
            if ($row->updated_at <> null && $row->updated_at <> '0000-00-00 00:00:00') {
                $row->updated_at = date('j M Y h:i A', strtotime($row->updated_at));
            }
            if ($row->tanggal <> null) {
                $row->tanggal = date('d-m-Y', strtotime($row->tanggal));
            }
            if ($row->verifikasi_at <> null) {
                $row->verifikasi_at = date('d-m-Y', strtotime($row->verifikasi_at));
            }
            $row->uraian = htmlspecialchars_decode($row->uraian, ENT_QUOTES);
            $row->keterangan_guru = $this->db->where(['jenis' => 1, 'logbook_id' => $row->id])->order_by('id', 'asc')->get('tbl_keterangan')->result();
            $row->keterangan_pembimbing = $this->db->where(['jenis' => 2, 'logbook_id' => $row->id])->order_by('id', 'asc')->get('tbl_keterangan')->result();
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

    public function simpan_logbook()
    {
        $siswa_id = $this->session->userdata('kode');
        $group_id =  $this->session->userdata('group_id');
        $id = $this->input->post('logbook_id');
        $data = $this->input->post();
        unset($data['logbook_id']);
        $data['id'] = $id;
        if ($group_id == 3) {
            $data['siswa_id'] = $siswa_id;
            $data['nama_siswa'] = nama('m_siswa', 'nama', ['nis' => $data['siswa_id']]);
        }
        if (file_exists($_FILES['file_foto']['tmp_name']) && is_uploaded_file($_FILES['file_foto']['tmp_name'])) {
            $dir = date('Ymd');
            if (!is_dir('./data/' . $dir)) {
                mkdir('./data/' . $dir, 0755);
            }
            $config['upload_path']      = 'data/' . $dir . '/';
            $config['allowed_types']    = 'jpg|jpeg|png|bmp';
            $config['encrypt_name']     = true;
            $this->load->library('upload', $config);
            if ($this->upload->do_upload('file_foto')) {
                $upload_data = $this->upload->data();
                $upload_data['file_name'] = 'data/' . $dir . '/' . $upload_data['file_name'];
                $this->resize($upload_data['full_path'], $upload_data['file_name']);
                $data['file_foto'] = $upload_data['file_name'];
            } else {
                return [
                    'stat' => false,
                    'msg' => $this->upload->display_errors(),
                ];
            }
        }
        $this->db->trans_begin();
        if ($id <> '') {
            $data['uraian'] = htmlspecialchars($data['uraian'], ENT_QUOTES);
            $data['tanggal'] = date('Y-m-d', strtotime($data['tanggal']));
            $data['updated_at'] = date('Y-m-d H:i:d');
            $data['updated_by'] = $this->session->userdata('nama');
            $this->db->where('id', $data['id'])->update('tbl_logbook', $data);
        } else {
            $data['uraian'] = htmlspecialchars($data['uraian'], ENT_QUOTES);
            $data['tanggal'] = date('Y-m-d', strtotime($data['tanggal']));
            $data['created_at'] = date('Y-m-d H:i:d');
            $data['created_by'] = $this->session->userdata('nama');
            unset($data['id']);
            $this->db->insert('tbl_logbook', $data);
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

    public function simpan_keterangan_logbook()
    {
        $guru_id = $this->session->userdata('kode');
        $id = $this->input->post('id');
        $data = $this->input->post();
        unset($data['id']);
        $data['logbook_id'] = $id;
        $this->db->trans_begin();
        $data['keterangan'] = htmlspecialchars($data['keterangan'], ENT_QUOTES);
        $data['created_at'] = date('Y-m-d H:i:d');
        $data['created_by'] = nama('m_guru', 'nama', ['nip' => $guru_id]);
        $this->db->insert('tbl_keterangan', $data);

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

    public function hapus_keterangan_logbook()
    {
        $id = $this->input->post('id');

        $sql = $this->db->where('id', $id)->delete('tbl_keterangan');

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

    public function simpan_status_logbook()
    {
        $data = $this->input->post();
        $data['verifikasi_at'] = date('Y-m-d H:i:d');
        $data['verifikasi_by'] = $this->session->userdata('nama');
        $sql = $this->db->where('id', $data['id'])->update('tbl_logbook', $data);

        if ($sql) {
            return [
                'stat' => true,
                'msg' => 'Data tersimpan',
            ];
        } else {
            return [
                'stat' => false,
                'msg' => $this->db->error(),
            ];
        }
    }

    public function hapus_logbook()
    {
        $id = $this->input->post('id');

        $sql = $this->db->where('id', $id)->delete('tbl_logbook');

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

    public function resize($path, $dir)
    {
        $config_manip = array(
            'image_library'  => 'gd2',
            'source_image'   => $path,
            'new_image'      => './' . $dir,
            'maintain_ratio' => true,
            'width'          => 500,
            'quality'        => '100%',
        );
        $this->image_lib->initialize($config_manip);
        if (!$this->image_lib->resize()) {
            $s = array(
                'stat' => false,
                'error' => $this->image_lib->display_errors(),
            );
        } else {
            $s = array(
                'stat' => true,
                'error' => '',
            );
        }
        $this->image_lib->clear();
        return $s;
    }

    public function get_list_data_monitoring_siswa()
    {
        $group_id = $this->session->userdata('group_id');
        $this->load->model('m_table', 'table');
        $query = $this->db->select("a.*")
            ->from("tbl_kelompok a");
        if ($group_id == '2') {
            $this->db->where('guru_id', $this->session->userdata('kode'));
        } elseif ($group_id == '4') {
            $this->db->where('pembimbing_id', $this->session->userdata('kode'));
        }
        $column_order  = array(null, 'a.nama_industri', 'a.siswa_id', 'a.nama_siswa', 'a.nama_pembimbing', 'a.updated_at,a.created_at', null);
        $column_search = array('a.nama_industri', 'a.siswa_id', 'a.nama_siswa', 'a.nama_pembimbing');
        $order         = array("a.updated_at,a.created_at" => "desc");
        $list          = $this->table->get_datatables($query, $column_order, $column_search, $order);
        $no            = $_POST['start'];
        $data          = array();
        $index         = 0;
        foreach ($list['result'] as $row) {
            $aksi_logbook = "";
            $aksi_absensi = "";
            $no++;
            $row->no = $no;
            $aksi_logbook .= "<a href=\"" . base_url('laporan_pkl?id=') . encrypt_url($row->siswa_id) . "\" title=\"Cetak\" type=\"button\" class=\"btn btn-primary btn-sm me-1\" target=\"_blank\"><i class=\"mdi mdi-printer\"></i></a>";
            $aksi_logbook .= "<a href=\"" . base_url('logbook/detail/' . encrypt_url($row->siswa_id)) . "\" title=\"Detail\" type=\"button\" class=\"btn btn-primary btn-sm me-1\" onclick=\"detail_logbook('" . $index . "',event)\"><i class=\"mdi mdi-text-box-search-outline\"></i></a>";
            $row->aksi_logbook = $aksi_logbook;
            $aksi_absensi .= "<a href=\"" . base_url('laporan_absensi?id=' . encrypt_url($row->siswa_id)) . "\" title=\"Cetak\" type=\"button\" class=\"btn btn-primary btn-sm me-1\" target=\"_blank\"><i class=\"mdi mdi mdi-printer\"></i></a>";
            $aksi_absensi .= "<a href=\"" . base_url('absensi-siswa/' . encrypt_url($row->siswa_id)) . "\" title=\"Detail\" type=\"button\" class=\"btn btn-primary btn-sm me-1\"><i class=\"mdi mdi-text-box-search-outline\"></i></a>";
            $row->aksi_absensi = $aksi_absensi;
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

    public function rekap_kahadiran($siswa_id)
    {
        $data = [];
        $date = date('Y-m-d');
        $group_id = $this->session->userdata('group_id');
        if ($group_id == 1) {
            $this->db->where("'$date' BETWEEN tanggal_awal AND tanggal_akhir");
        } elseif ($group_id == 2) {
            $this->db->where('guru_id', $this->session->userdata('kode'));
            $this->db->where("'$date' BETWEEN tanggal_awal AND tanggal_akhir");
        } elseif ($group_id == 4) {
            $this->db->where('pembimbing_id', $this->session->userdata('kode'));
            $this->db->where("'$date' BETWEEN tanggal_awal AND tanggal_akhir");
        }
        if ($siswa_id != '') {
            $this->db->where('siswa_id', $siswa_id);
        }
        $data_kel = $this->db->get('tbl_kelompok');
        foreach ($data_kel->result_array() as $row) {
            $period = new DatePeriod(new DateTime($row['tanggal_awal']), new DateInterval('P1D'), new DateTime($row['tanggal_akhir']));
            foreach ($period as $value) {
                $data_absen = $this->db->where(['siswa_id' => $row['siswa_id'], 'tanggal' => $value->format('Y-m-d')])->get('tbl_absen')->row_array();
                $data_hari_kerja = $this->db->where(['industri_id' => $row['industri_id'], 'hari_id' => $value->format('N')])->get('m_hari_kerja')->row_array();
                if ($data_absen['status'] == 2) {
                    $status = 2; //Izin
                } elseif ($data_absen['status'] == 3) {
                    $status = 3; //Sakit
                } elseif ($data_absen['status'] == 4) {
                    $status = 5; //Sakit
                } elseif ($data_absen['absen_masuk'] == null && $data_absen['absen_pulang'] != null) {
                    $status = 4; //Terlambat
                } elseif ($data_absen['absen_masuk'] != null) {
                    $selectedTime = date('H:i:s', strtotime($data_absen['waktu_masuk']));
                    $endTime = strtotime("+30 minutes", strtotime($selectedTime));
                    $waktu_max = date('H:i:s', $endTime);
                    if ($data_absen['absen_masuk'] > $waktu_max) {
                        $status = 4; //Terlambat
                    } else {
                        $status = 1; //Hadir
                    }
                } elseif ($value->format('Y-m-d') == date('Y-m-d')) {
                    $status = 0; //Belum absen
                } else {
                    $status = 5; //Alpa
                }
                $data[] = array(
                    'id' => $data_absen['id'],
                    'siswa_id' => $row['siswa_id'],
                    'nama_siswa' => $row['nama_siswa'],
                    'tanggal' => $value->format('Y-m-d'),
                    'waktu_masuk' => ($data_absen['waktu_masuk'] != null ? date('H:i:s', strtotime($data_absen['waktu_masuk'])) : date('H:i:s', strtotime($data_hari_kerja['waktu_masuk']))),
                    'waktu_pulang' => ($data_absen['waktu_pulang'] != null ? date('H:i:s', strtotime($data_absen['waktu_pulang'])) : date('H:i:s', strtotime($data_hari_kerja['waktu_pulang']))),
                    'absen_masuk' => ($data_absen['absen_masuk'] != null ? date('H:i:s', strtotime($data_absen['absen_masuk'])) : ''),
                    'absen_pulang' => ($data_absen['absen_pulang'] != null ? date('H:i:s', strtotime($data_absen['absen_pulang'])) : ''),
                    'status' => $status,
                    'keterangan_siswa' => $data_absen['keterangan_siswa'],
                    'verifikasi_stat' => $data_absen['verifikasi_stat'],
                    'verifikasi_at' => $data_absen['verifikasi_at'],
                    'verifikasi_by' => $data_absen['verifikasi_by'],
                    'verifikasi_ket' => $data_absen['verifikasi_ket'],
                    'created_at' => $data_absen['created_at'],
                    'created_by' => $data_absen['created_by'],
                    'updated_at' => $data_absen['updated_at'],
                    'updated_by' => $data_absen['updated_by'],
                );
                if ($value->format('Y-m-d') == date('Y-m-d')) {
                    break;
                }
            }
        }
        return $data;
    }

    public function get_list_data_absensi()
    {
        $siswa_id = $this->input->post('siswa_id');
        $data_kel = $this->db->where('siswa_id', $siswa_id)->get('tbl_kelompok')->row_array();
        $period = new DatePeriod(new DateTime($data_kel['tanggal_awal']), new DateInterval('P1D'), new DateTime($data_kel['tanggal_akhir']));
        $data = [];
        $index = 0;
        foreach ($period as $value) {
            $data_absen = $this->db->where(['siswa_id' => $siswa_id, 'tanggal' => $value->format('Y-m-d')])->get('tbl_absen')->row_array();
            $data_hari_kerja = $this->db->where(['industri_id' => $data_kel['industri_id'], 'hari_id' => $value->format('N')])->get('m_hari_kerja')->row_array();
            if ($data_absen['status'] == 2) {
                $status = "<span class=\"badge bg-primary\">Izin</span>";
            } elseif ($data_absen['status'] == 3) {
                $status = "<span class=\"badge bg-info\">Sakit</span>";
            } elseif ($data_absen['status'] == 4) {
                $status = "<span class=\"badge bg-danger\">Alpa</span>";
            } elseif ($data_absen['absen_masuk'] == null && $data_absen['absen_pulang'] != null) {
                $status = "<span class=\"badge bg-waring\">Terlambat</span>";
            } elseif ($data_absen['absen_masuk'] != null) {
                $selectedTime = date('H:i:s', strtotime($data_absen['waktu_masuk']));
                $endTime = strtotime("+30 minutes", strtotime($selectedTime));
                $waktu_max = date('H:i:s', $endTime);
                if ($data_absen['absen_masuk'] > $waktu_max) {
                    $status = "<span class=\"badge bg-warning\">Terlambat</span>";
                } else {
                    $status = "<span class=\"badge bg-success\">Hadir</span>";
                }
            } elseif ($value->format('Y-m-d') == date('Y-m-d')) {
                $status = "<span class=\"badge bg-secondary\">Belum Absen</span>";
            } else {
                $status = "<span class=\"badge bg-danger\">Alpa</span>";
            }
            if ($this->session->userdata('group_id') == 3) {
                if ($value->format('Y-m-d') == date('Y-m-d') && ($data_absen['absen_masuk'] == null || $data_absen['absen_pulang'] == null)) {
                    $aksi = "<button class=\"btn btn-info btn-sm me-1\" onclick=\"edit_absensi($index,event)\"><i class=\"mdi mdi-file-sign\"></i></button>";
                } else {
                    $aksi = "<span class=\"badge bg-light text-dark\"><i>Selesai</i></span>";
                }
            } elseif ($this->session->userdata('group_id') != 1 && $this->session->userdata('group_id') != 3) {
                if ($value->format('Y-m-d') == date('Y-m-d')) {
                    $aksi = "<button class=\"btn btn-info btn-sm me-1\" onclick=\"edit_absensi($index,event)\"><i class=\"mdi mdi-file-sign\"></i></button>";
                } else {
                    $aksi = "<span class=\"badge bg-light text-dark\"><i>Selesai</i></span>";
                }
            } else {
                $aksi = "<button class=\"btn btn-info btn-sm me-1\" onclick=\"edit_absensi($index,event)\"><i class=\"mdi mdi-file-sign\"></i></button>";
            }
            $data[] = array(
                'id' => $data_absen['id'],
                'siswa_id' => $data_kel['siswa_id'],
                'nama_siswa' => $data_kel['nama_siswa'],
                'tanggal' => $value->format('Y-m-d'),
                'waktu_masuk' => ($data_absen['waktu_masuk'] != null ? date('H:i:s', strtotime($data_absen['waktu_masuk'])) : date('H:i:s', strtotime($data_hari_kerja['waktu_masuk']))),
                'waktu_pulang' => ($data_absen['waktu_pulang'] != null ? date('H:i:s', strtotime($data_absen['waktu_pulang'])) : date('H:i:s', strtotime($data_hari_kerja['waktu_pulang']))),
                'absen_masuk' => ($data_absen['absen_masuk'] != null ? date('H:i:s', strtotime($data_absen['absen_masuk'])) : ''),
                'absen_pulang' => ($data_absen['absen_pulang'] != null ? date('H:i:s', strtotime($data_absen['absen_pulang'])) : ''),
                'status' => ($data_absen['status'] != null ? $data_absen['status'] : ''),
                'nama_status' => $status,
                'keterangan_siswa' => $data_absen['keterangan_siswa'],
                'verifikasi_stat' => $data_absen['verifikasi_stat'],
                'verifikasi_at' => $data_absen['verifikasi_at'],
                'verifikasi_by' => $data_absen['verifikasi_by'],
                'verifikasi_ket' => $data_absen['verifikasi_ket'],
                'created_at' => $data_absen['created_at'],
                'created_by' => $data_absen['created_by'],
                'updated_at' => $data_absen['updated_at'],
                'updated_by' => $data_absen['updated_by'],
                'aksi' => $aksi,
            );
            $index++;
            if ($value->format('Y-m-d') == date('Y-m-d')) {
                break;
            }
        }
        return $data;
    }

    public function simpan_absensi()
    {
        $group_id = $this->session->userdata('group_id');
        $data = $this->input->post();
        $data['nama_siswa'] = nama('m_siswa', 'nama', ['nis' => $data['siswa_id']]);
        $data['absen_masuk'] = date('H:i:s');
        $data['created_at'] = date('Y-m-d H:i:d');
        $data['created_by'] = $this->session->userdata('nama');

        $cek = $this->db->where(['siswa_id' => $data['siswa_id'], 'tanggal' => $data['tanggal']])->get('tbl_absen');
        if ($group_id == 3) {
            if ($cek->num_rows() > 0) {
                if (isset($_POST['field'])) {
                    $sql = $this->db->where(['siswa_id' => $data['siswa_id'], 'tanggal' => $data['tanggal']])->update('tbl_absen', [
                        'absen_pulang' => date('H:i:s'),
                        'updated_at' => date('Y-m-d H:i:d'),
                        'updated_by' => $this->session->userdata('nama'),
                    ]);
                } else {
                    $sql = $this->db->where(['siswa_id' => $data['siswa_id'], 'tanggal' => $data['tanggal']])->update('tbl_absen', $data);
                }
            } else {
                if ($data['status'] == 2 || $data['status'] == 3) {
                    $data['absen_pulang'] = $data['absen_masuk'];
                }
                $sql = $this->db->insert('tbl_absen', $data);
            }
        } else {
            if ($data['status'] >= 2 && $data['status'] <= 4) {
                $data['absen_masuk'] = null;
                $data['absen_pulang'] = null;
            }
            if ($cek->num_rows() > 0) {
                $sql = $this->db->where(['siswa_id' => $data['siswa_id'], 'tanggal' => $data['tanggal']])->update('tbl_absen', [
                    'absen_masuk' => ($data['absen_masuk'] == '' ? null : $data['absen_masuk']),
                    'absen_pulang' => ($data['absen_pulang'] == '' ? null : $data['absen_pulang']),
                    'status' => $data['status'],
                    'keterangan_siswa' => htmlspecialchars($data['keterangan_siswa'], ENT_QUOTES),
                    'updated_at' => date('Y-m-d H:i:d'),
                    'updated_by' => $this->session->userdata('nama'),
                ]);
            } else {
                $sql = $this->db->insert('tbl_absen', $data);
            }
        }

        if ($sql) {
            return [
                'stat' => true,
                'msg' => 'Data tersimpan',
            ];
        } else {
            return [
                'stat' => false,
                'msg' => $this->db->error(),
            ];
        }
    }

    public function simpan_verifikasi_absensi()
    {
        $data = $this->input->post();
        $cek = $this->db->where(['siswa_id' => $data['siswa_id'], 'tanggal' => $data['tanggal']])->get('tbl_absen');
        if ($cek->num_rows() > 0) {
            $sql = $this->db->where(['siswa_id' => $data['siswa_id'], 'tanggal' => $data['tanggal']])->update('tbl_absen', [
                'verifikasi_stat' => $data['verifikasi_stat'],
                'verifikasi_at' => date('Y-m-d H:i:d'),
                'verifikasi_by' => $this->session->userdata('nama'),
            ]);
        } else {
            $kelompok = $this->db->where('siswa_id', $data['siswa_id'])->get('tbl_kelompok')->row_array();
            $hari_kerja = $this->db->where(['industri_id' => $kelompok['industri_id'], 'hari_id' => date('N', strtotime($data['tanggal']))])->get('m_hari_kerja')->row_array();
            $data['nama_siswa'] = nama('m_siswa', 'nama', ['nis' => $data['siswa_id']]);
            $data['waktu_masuk'] = $hari_kerja['waktu_masuk'];
            $data['waktu_pulang'] = $hari_kerja['waktu_pulang'];
            $data['status'] = 4;
            $data['verifikasi_at'] = date('Y-m-d H:i:d');
            $data['verifikasi_by'] = $this->session->userdata('nama');
            $data['created_at'] = date('Y-m-d H:i:d');
            $data['created_by'] = $this->session->userdata('nama');
            $sql = $this->db->insert('tbl_absen', $data);
        }

        if ($sql) {
            return [
                'stat' => true,
                'msg' => 'Data tersimpan',
            ];
        } else {
            return [
                'stat' => false,
                'msg' => $this->db->error(),
            ];
        }
    }

    public function simpan_lembar_nilai()
    {
        $data = $this->input->post();
        $dir = date('Ymd');
        if (!is_dir('./data/' . $dir)) {
            mkdir('./data/' . $dir, 0755);
        }
        $config['upload_path']      = 'data/' . $dir . '/';
        $config['allowed_types']    = 'pdf';
        $config['encrypt_name']     = true;
        $this->load->library('upload', $config);
        if ($this->upload->do_upload('file_nilai')) {
            $upload_data = $this->upload->data();
            $data['file_nilai'] = 'data/' . $dir . '/' . $upload_data['file_name'];
        } else {
            return [
                'stat' => false,
                'msg' => $this->upload->display_errors(),
            ];
        }
        $this->db->trans_begin();

        $data['updated_at'] = date('Y-m-d H:i:s');
        $data['updated_by'] = $this->session->userdata('nama');
        $this->db->where('siswa_id', $data['siswa_id'])->update('tbl_kelompok', $data);

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
                'file_nilai' => $data['file_nilai'],
            ];
        }
    }

    public function rekap_tahun_pkl()
    {
        $res = $this->db->select("YEAR(tanggal_awal) label,COUNT(id) jumlah")->from("tbl_kelompok")->group_by("year(tanggal_awal)")->get();
        if ($res->num_rows() <= 0) {
            $data = [
                'label' => [''],
                'data' => ['0'],
                'total' => 0,
            ];
        } else {
            $data = [];
        }
        $total = 0;
        foreach ($res->result() as $row) {
            $data['label'][] = $row->label;
            $data['data'][] = $row->jumlah;
            $total = $total + $row->jumlah;
        }
        $data['total'] = $total;
        return $data;
    }

    public function rekap_industri_pkl()
    {
        $res = $this->db->select("nama_industri label,COUNT(id) jumlah")->from("tbl_kelompok")->group_by("industri_id")->get();
        if ($res->num_rows() <= 0) {
            $data = [
                'label' => [''],
                'data' => ['0'],
                'total' => 0,
            ];
        } else {
            $data = [];
        }
        $total = 0;
        foreach ($res->result() as $row) {
            $data['label'][] = $row->label;
            $data['data'][] = $row->jumlah;
            $total = $total + $row->jumlah;
        }
        $data['total'] = $total;
        return $data;
    }
}
