<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_laporan extends CI_Model
{
    public function laporan_pkl()
    {
        $id = $this->input->get('id');
        $id = decrypt_url($id);
        $data['data'] = $this->db->where('a.siswa_id', $id)->join('m_siswa b', 'a.siswa_id=b.nis', 'left')->get('tbl_kelompok a')->row_array();
        $data['log'] = $this->db->where('siswa_id', $id)->order_by('tanggal', 'asc')->get('tbl_logbook')->result();
        return $this->load->view('laporan/laporan_pkl', $data, true);
    }

    public function laporan_absensi()
    {
        $id = $this->input->get('id');
        $siswa_id = decrypt_url($id);
        $data_kel = $this->db->where('siswa_id', $siswa_id)->get('tbl_kelompok')->row_array();
        if (date('Y-m-d') < $data_kel['tanggal_akhir']) {
            $data_kel['tanggal_akhir'] = date('Y-m-d');
        }
        $begin = new DateTime($data_kel['tanggal_awal']);
        $end = new DateTime($data_kel['tanggal_akhir']);
        $end->modify('+1 day');

        $interval = DateInterval::createFromDateString('1 day');
        $period = new DatePeriod($begin, $interval, $end);
        $res = [];
        $nama_status = [
            0 => "<span class=\"badge bg-secondary\">Belum Absen</span>",
            "<span class=\"badge bg-success\">Hadir</span>",
            "<span class=\"badge bg-primary\">Izin</span>",
            "<span class=\"badge bg-info\">Sakit</span>",
            "<span class=\"badge bg-danger\">Alpa</span>",
            "<span class=\"badge bg-warning\">Terlambat</span>",
        ];
        foreach ($period as $value) {
            $date_exist = 0;
            $data_hari_kerja = $this->db->where(['industri_id' => $data_kel['industri_id'], 'hari_id' => $value->format('N')])->get('m_hari_kerja');
            $data_absen = $this->db->where(['siswa_id' => $siswa_id, 'tanggal' => $value->format('Y-m-d')])->get('tbl_absen');
            if ($data_absen->num_rows() > 0) {
                $data_absen = $data_absen->row_array();
                if ($data_absen['absen_masuk'] > $data_absen['waktu_masuk']) {
                    $status = 5;
                } elseif ($data_absen['status'] == 0 && $data_absen['tanggal'] < date('Y-m-d')) {
                    $status = 4;
                    $this->db->where('id', $data_absen['id'])->update('tbl_absen', [
                        'status' => 4,
                        'updated_at' => date('Y-m-d H:i:s'),
                        'updated_by' => 'System',
                    ]);
                } else {
                    $status = $data_absen['status'];
                }
                $date_exist = 1;
            } elseif ($data_hari_kerja->num_rows() > 0) {
                $data_absen = $data_absen->row_array();
                $data_hari_kerja = $data_hari_kerja->row_array();
                $data_ins = [
                    'siswa_id' => $siswa_id,
                    'nama_siswa' => nama('m_siswa', 'nama', ['nis' => $siswa_id]),
                    'tanggal' => $value->format('Y-m-d'),
                    'waktu_masuk' => $data_hari_kerja['waktu_masuk'],
                    'waktu_pulang' => $data_hari_kerja['waktu_pulang'],
                    'created_at' => date('Y-m-d H:i:s'),
                    'created_by' => $this->session->userdata('nama') . ' (Auto)',
                ];
                if ($value->format('Y-m-d') == date('Y-m-d')) {
                    $status = 0;
                    $data_ins['status'] = 0;
                } else {
                    $status = 4;
                    $data_ins['status'] = 4;
                }
                $this->db->insert('tbl_absen', $data_ins);
                $date_exist = 1;
            }
            if ($date_exist == 1) {
                $res[] = array(
                    'id' => $data_absen['id'],
                    'siswa_id' => $siswa_id,
                    'nama_siswa' => $data_kel['nama_siswa'],
                    'tanggal' => $value->format('Y-m-d'),
                    'waktu_masuk' => ($data_absen['waktu_masuk'] != null ? date('H:i:s', strtotime($data_absen['waktu_masuk'])) : date('H:i:s', strtotime($data_hari_kerja['waktu_masuk']))),
                    'waktu_pulang' => ($data_absen['waktu_pulang'] != null ? date('H:i:s', strtotime($data_absen['waktu_pulang'])) : date('H:i:s', strtotime($data_hari_kerja['waktu_pulang']))),
                    'absen_masuk' => ($data_absen['absen_masuk'] != null ? date('H:i:s', strtotime($data_absen['absen_masuk'])) : ''),
                    'absen_pulang' => ($data_absen['absen_pulang'] != null ? date('H:i:s', strtotime($data_absen['absen_pulang'])) : ''),
                    'status' => $status,
                    'nama_status' => $nama_status[$status],
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
            }
        }
        $data['data'] = $this->db->where('a.siswa_id', $siswa_id)->join('m_siswa b', 'a.siswa_id=b.nis', 'left')->get('tbl_kelompok a')->row_array();
        $data['absensi'] = $res;
        return $this->load->view('laporan/laporan_absensi', $data, true);
    }

    public function lembar_penilaian()
    {
        $id = $this->input->get('id');
        $id = decrypt_url($id);
        $data['data'] = $this->db->where('a.siswa_id', $id)->join('m_siswa b', 'a.siswa_id=b.nis', 'left')->get('tbl_kelompok a')->row_array();
        return $this->load->view('laporan/lembar_penilaian', $data, true);
    }
}
