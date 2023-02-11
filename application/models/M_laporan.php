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
}
