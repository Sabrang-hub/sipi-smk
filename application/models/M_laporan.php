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
        $period = new DatePeriod(new DateTime($data_kel['tanggal_awal']), new DateInterval('P1D'), new DateTime($data_kel['tanggal_akhir']));
        $data = [];
        foreach ($period as $value) {
            $data_absen = $this->db->where(['siswa_id' => $siswa_id, 'tanggal' => $value->format('Y-m-d')])->get('tbl_absen')->row_array();
            $data_hari_kerja = $this->db->where(['industri_id' => $data_kel['industri_id'], 'hari_id' => $value->format('N')])->get('m_hari_kerja')->row_array();
            if ($data_absen['status'] == 2) {
                $status = "<span class=\"badge bg-primary\">Izin</span>";
            } elseif ($data_absen['status'] == 3) {
                $status = "<span class=\"badge bg-info\">Sakit</span>";
            } elseif ($data_absen['waktu_masuk'] == null && $data_absen['waktu_pulang'] != null) {
                $status = "<span class=\"badge bg-waring\">Terlambat</span>";
            } elseif ($data_absen['waktu_masuk'] != null) {
                $selectedTime = date('H:i:s', strtotime($data_hari_kerja['waktu_masuk']));
                $endTime = strtotime("+30 minutes", strtotime($selectedTime));
                $waktu_max = date('H:i:s', $endTime);
                if ($data_absen['waktu_masuk'] > $waktu_max) {
                    $status = "<span class=\"badge bg-warning\">Terlambat</span>";
                } else {
                    $status = "<span class=\"badge bg-success\">Hadir</span>";
                }
            } elseif ($value->format('Y-m-d') == date('Y-m-d')) {
                $status = "<span class=\"badge bg-secondary\">Belum Absen</span>";
            } else {
                $status = "<span class=\"badge bg-danger\">Alpa</span>";
            }
            $data[] = array(
                'id' => $data_absen['id'],
                'siswa_id' => $data_kel['siswa_id'],
                'nama_siswa' => $data_kel['nama_siswa'],
                'tanggal' => $value->format('Y-m-d'),
                'waktu_masuk' => ($data_absen['waktu_masuk'] != null ? date('H:i:s', strtotime($data_absen['waktu_masuk'])) : ''),
                'waktu_pulang' => ($data_absen['waktu_pulang'] != null ? date('H:i:s', strtotime($data_absen['waktu_pulang'])) : ''),
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
        return $this->load->view('laporan/laporan_absensi', $data, true);
    }
}
