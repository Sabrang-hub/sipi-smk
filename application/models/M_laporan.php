<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_laporan extends CI_Model
{
    public function laporan_pkl()
    {
        $id = $this->input->get('id');
        $id = $this->encrypt->decode($id);
        $data['data'] = $this->db->where('nis', $id)->get('m_siswa')->row_array();
        return $this->load->view('laporan/laporan_pkl', $data, true);
    }
}
